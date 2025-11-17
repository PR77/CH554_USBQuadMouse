/********************************** (C) COPYRIGHT *******************************
* File Name     : KEYBOARD.C
* Author        : Paul Raspa (PR77)
* License       : MIT
* Version       : V1.0
* Date          : 2025/10/23
* Description   : CH554 Amiga Keyboard Emulation
*******************************************************************************/

#include <stdint.h>
#include <compiler.h>
#include <string.h>
#include <stdlib.h>
#include "ch554.h"
#include "keyboard.h"
#include "keyboard_cfg.h"
#include "keyboard_layout.h"
#include "system.h"

SBIT(KBCLOCK, KBCLOCK_PORT, KBCLOCK_PIN);
SBIT(KBDATA, KBDATA_PORT, KBDATA_PIN);
SBIT(KBRESET, KBRESET_PORT, KBRESET_PIN);
SBIT(KBSTATUS, KBSTATUS_PORT, KBSTATUS_PIN);
SBIT(KBINUSE, KBINUSE_PORT, KBINUSE_PIN);

#define STROBE_DELAY    15
#define STROBE_KBCLOCK() { system_mDelayuS(STROBE_DELAY); KBCLOCK = 0; system_mDelayuS(STROBE_DELAY); KBCLOCK = 1; system_mDelayuS(STROBE_DELAY); }

static const keymapLayout_s keycodeTranslation[KEYCODE_TO_AMIGA_ENTERIES] = {DE_KEYCODE_TO_AMIGA};
static const keymapLayout_s modifierTranslation[MODIFIER_TO_AMIGA_ENTERIES] = {DE_MODIFIER_TO_AMIGA};
static __xdata devTypeKeyboardPayload_s previousRawKeyCodeReport;

static void keyboard_sendKey(uint8_t amigaKeyCode, keyboardKey_e pressedReleased) {
    //         _____   ___   ___   ___   ___   ___   ___   ___   _________
    // KBCLOCK      \_/   \_/   \_/   \_/   \_/   \_/   \_/   \_/
    //         ___________________________________________________________
    // KBDATA     \_____X_____X_____X_____X_____X_____X_____X_____/
    //           (6)   (5)   (4)   (3)   (2)   (1)   (0)   (7)
    //
    //          First                                     Last
    //          sent                                      sent

    // Code taken from repo here: https://github.com/PR77/PS2_Keyboard_Adapter

    uint8_t z = 0x80; 
    uint8_t keyCodeToSend = (amigaKeyCode << 1);

    keyCodeToSend |= (pressedReleased == kbKeyPressed) ? 0x00 : 0x01; 

    for (uint8_t i = 0; i < 8; i++) {
        KBDATA = (keyCodeToSend & z) ? 0 : 1;
        STROBE_KBCLOCK();

        z = z >> 1 ;
    }
    
    KBDATA = 1;
    KBCLOCK = 1;
    
    system_mDelayuS(200);
}

void keyboard_initialise(void) {

    KBCLOCK_MOD_OC = KBCLOCK_MOD_OC & ~(1 << KBCLOCK_PIN);
    KBCLOCK_DIR_PU = KBCLOCK_DIR_PU | (1 << KBCLOCK_PIN);

    KBDATA_MOD_OC = KBDATA_MOD_OC & ~(1 << KBDATA_PIN);
    KBDATA_DIR_PU = KBDATA_DIR_PU | (1 << KBDATA_PIN);

    KBRESET_MOD_OC = KBRESET_MOD_OC & ~(1 << KBRESET_PIN);
    KBRESET_DIR_PU = KBRESET_DIR_PU | (1 << KBRESET_PIN);
    KBRESET = 1;

    KBSTATUS_MOD_OC = KBSTATUS_MOD_OC | (1 << KBSTATUS_PIN);
    KBSTATUS_DIR_PU = KBSTATUS_DIR_PU | (1 << KBSTATUS_PIN);

    KBINUSE_MOD_OC = KBINUSE_MOD_OC | (1 << KBINUSE_PIN);
    KBINUSE_DIR_PU = KBINUSE_DIR_PU | (1 << KBINUSE_PIN);

    memset(&previousRawKeyCodeReport, 0, sizeof(devTypeKeyboardPayload_s));
}

void keyboard_deinitialise(void) {
    
    KBRESET = 1;
    KBDATA = 1;
    KBCLOCK = 1;
}

uint8_t keyboard_translateKey(devTypeKeyboardPayload_s *rawKeyCodeReport, const keymapLayout_s **decodedKeyCode) {

    uint8_t foundEntry = 0;

    // NULL pointer check - this function is called with the address of RxBuffer
    // and need to ensure this buffer is not at 0.
    if (NULL == rawKeyCodeReport) {
        return (0);
    }

    // NULL pointer check
    if (NULL == decodedKeyCode) {
        return (0);
    }
    
    if (rawKeyCodeReport->modifierKeys != previousRawKeyCodeReport.modifierKeys) {
        // Check if there has been a modifier key pressed or released. Modifier key
        // are bit encoded.
        
        // TODO: This only currently handles 1 modifier beening pressed at a time.
        
        if ((rawKeyCodeReport->modifierKeys != 0) && (previousRawKeyCodeReport.modifierKeys == 0)) {
            // Key was pressed. Send key pressed sequence to Amiga.            
            for (uint8_t i = 0; i < MODIFIER_TO_AMIGA_ENTERIES; i++) {
                if (rawKeyCodeReport->modifierKeys == modifierTranslation[i].rawKeyCode) {
                    keyboard_sendKey(modifierTranslation[i].amigaKeyCode, kbKeyPressed);
                    *decodedKeyCode = &modifierTranslation[i];
                    foundEntry = 1;
                    break;
                }
            }
        } else if ((rawKeyCodeReport->modifierKeys == 0) && (previousRawKeyCodeReport.modifierKeys != 0)) {
            // Key was released. Send key released sequence to Amiga.
            for (uint8_t i = 0; i < MODIFIER_TO_AMIGA_ENTERIES; i++) {
                if (previousRawKeyCodeReport.modifierKeys == modifierTranslation[i].rawKeyCode) {
                    keyboard_sendKey(modifierTranslation[i].amigaKeyCode, kbKeyReleased);
                    break;
                }
            }
        } else {
            // Do nothing...
        }

        previousRawKeyCodeReport.modifierKeys = rawKeyCodeReport->modifierKeys;
    }

    for (uint8_t i = 0; i < MAX_SUPPORTED_ACTIVE_KEYCODES; i++) {
        // Itterate through all the keycodes in the keyboard data report. First check for
        // new key pressed or key releases.
        if (rawKeyCodeReport->keyCodes[i] != previousRawKeyCodeReport.keyCodes[i]) {
            if ((rawKeyCodeReport->keyCodes[i] != 0) && (previousRawKeyCodeReport.keyCodes[i] == 0)) {
                // Key was pressed. Send key pressed sequence to Amiga.            
                for (uint8_t j = 0; j < KEYCODE_TO_AMIGA_ENTERIES; j++) {
                    if (rawKeyCodeReport->keyCodes[i] == keycodeTranslation[j].rawKeyCode) {
                        keyboard_sendKey(keycodeTranslation[j].amigaKeyCode, kbKeyPressed);
                        *decodedKeyCode = &keycodeTranslation[j];
                        foundEntry = 1;
                        break;
                    }
                }
            } else if ((rawKeyCodeReport->keyCodes[i] == 0) && (previousRawKeyCodeReport.keyCodes[i] != 0)) {
                // Key was released. Send key released sequence to Amiga.
                for (uint8_t j = 0; j < KEYCODE_TO_AMIGA_ENTERIES; j++) {
                    if (previousRawKeyCodeReport.keyCodes[i] == keycodeTranslation[j].rawKeyCode) {
                        keyboard_sendKey(keycodeTranslation[j].amigaKeyCode, kbKeyReleased);
                        break;
                    }
                }
            } else {
                // Do nothing...
            }

            previousRawKeyCodeReport.keyCodes[i] = rawKeyCodeReport->keyCodes[i];
        }
    }

    return (foundEntry);
}

keyboardReset_e keyboard_translateReset(uint8_t rawModifierCode) {

    keyboardReset_e resetState = kbResetNotAsserted;
    
    // Amiga /RESET will be asserted when the following modifiers
    // are all active;
    // {KEY_MOD_LCTRL } /* LEFT-CONTROL */
    // {KEY_MOD_RCTRL } /* RIGHT-CONTROL*/
    // {KEY_MOD_LMETA } /* LEFT-META    */

    if (rawModifierCode == (KEY_MOD_LCTRL | KEY_MOD_RCTRL | KEY_MOD_LMETA)) {
        KBRESET = 0;
        system_mDelayuS(200);
        KBRESET = 1;

        resetState = kbResetAsserted;
    }

    return (resetState);
}

keyboardStatus_e keyboard_getStatus(void) {

    keyboardStatus_e keyboardStatus = (KBSTATUS) ? kbStatusOn : kbStatusOff;
    
    return (keyboardStatus);
}

keyboardInUse_e keyboard_getInUse(void) {

    keyboardStatus_e keyboardInUse = (KBINUSE) ? kbInUseOn : kbInUseOff;

    return (keyboardInUse);
}