/********************************** (C) COPYRIGHT *******************************
* File Name     : KEYBOARD.C
* Author        : Paul Raspa (PR77)
* License       : MIT
* Version       : V1.0
* Date          : 2025/10/23
* Description   : CH554 Amiga Keyboard Emulation
*******************************************************************************/

#include <stdint.h>
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

#define test

static const keymapLayout_s keycodeTranslation[KEYCODE_TO_AMIGA_ENTERIES] = {DE_KEYCODE_TO_AMIGA};
static const keymapLayout_s modifierTranslation[MODIFIER_TO_AMIGA_ENTERIES] = {DE_MODIFIER_TO_AMIGA};

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
}

void keyboard_deinitialise(void) {
    
    KBRESET = 1;
    KBDATA = 1;
    KBCLOCK = 1;
}

const keymapLayout_s * keyboard_translateKey(uint8_t rawKeyCode) {
    
    const keymapLayout_s * decodedKeyCode = 0;

    for (uint8_t i = 0; i < KEYCODE_TO_AMIGA_ENTERIES; i++) {
        // Not the most efficient method, but let's start with something...

        if (rawKeyCode == keycodeTranslation[i].rawKeyCode) {
            decodedKeyCode = &keycodeTranslation[i];
            break;
        }        
    }

    return (decodedKeyCode);
}

uint8_t keyboard_translateModifier(uint8_t rawModifierCode) {

    uint8_t amigaModifierCode = 0;

    for (uint8_t i = 0; i < MODIFIER_TO_AMIGA_ENTERIES; i++) {
        // Not the most efficient method, but let's start with something...

        if (rawModifierCode == modifierTranslation[i].rawKeyCode) {
            amigaModifierCode = modifierTranslation[i].amigaKeyCode;
            break;
        }        
    }

    return (amigaModifierCode);
}

void keyboard_sendKey(uint8_t amigaKeyCode, uint8_t pressedReleased) {
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

    keyCodeToSend |= (pressedReleased) ? 0x00 : 0x01; 

    KBDATA = 1;
    KBCLOCK = 1;

    for (uint8_t i = 0; i < 8; i++) {
        KBDATA = !(keyCodeToSend & z);
        
        system_mDelayuS(20);
        KBCLOCK = 0;
        system_mDelayuS(20);
        KBCLOCK = 1;

        z = z >> 1 ;
    }

    system_mDelayuS(200);
}

void keyboard_assertReset(void) {

    KBRESET = 0;
    system_mDelayuS(200);
    KBRESET = 1;
}

keyboardStatus_e keyboard_getStatus(void) {

    return (kbStatusOff);
}

keyboardInUse_e keyboard_getInUse(void) {

    return (kbInUseOff);
}