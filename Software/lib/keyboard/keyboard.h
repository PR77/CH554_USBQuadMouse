/********************************** (C) COPYRIGHT *******************************
* File Name     : KEYBOARD.H
* Author        : Paul Raspa (PR77)
* License       : MIT
* Version       : V1.0
* Date          : 2025/04/23
* Description   : CH554 Amiga Keyboard Emulation
*******************************************************************************/

#ifndef __CH554_KEYBOARD_H__
#define __CH554_KEYBOARD_H__

#include <stdint.h>
#include "ch554.h"
#include "keyboard_cfg.h"

#define NUMBER_OF_KEYCODES_IN_REPORT    6
#define MAX_SUPPORTED_ACTIVE_KEYCODES   2

#if (NUMBER_OF_KEYCODES_IN_REPORT > 6)
#error NUMBER_OF_KEYCODES_IN_REPORT can not exceed 6  
#endif

#if (MAX_SUPPORTED_ACTIVE_KEYCODES >= NUMBER_OF_KEYCODES_IN_REPORT)
#error MAX_SUPPORTED_ACTIVE_KEYCODES must be less than NUMBER_OF_KEYCODES_IN_REPORT 
#endif

typedef struct {
    uint8_t modifierKeys;
    uint8_t reserved;
    uint8_t keyCodes[NUMBER_OF_KEYCODES_IN_REPORT];   
} devTypeKeyboardPayload_s;

typedef struct {
    uint8_t rawKeyCode;
    uint8_t amigaKeyCode;
    char asciiCode;
} keymapLayout_s;

typedef enum {
    kbKeyPressed = 0,
    kbKeyReleased
} keyboardKey_e;

typedef enum {
    kbStatusOff = 0,
    kbStatusOn
} keyboardStatus_e;

typedef enum {
    kbInUseOff = 0,
    kbInUseOn
} keyboardInUse_e;

typedef enum {
    kbResetNotAsserted = 0,
    kbResetAsserted
} keyboardReset_e;

static void keyboard_sendKey(uint8_t amigaKeyCode, keyboardKey_e pressedReleased);
void keyboard_initialise(void);
void keyboard_deinitialise(void);
uint8_t keyboard_translateKey(devTypeKeyboardPayload_s *rawKeyCodeReport, const keymapLayout_s **decodedKeyCode);
keyboardReset_e keyboard_translateReset(uint8_t rawModifierCode);
keyboardStatus_e keyboard_getStatus(void);
keyboardInUse_e keyboard_getInUse(void);

#endif // __CH554_KEYBOARD_H__