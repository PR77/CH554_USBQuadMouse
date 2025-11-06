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

typedef struct {
    uint8_t rawKeyCode;
    uint8_t amigaKeyCode;
    char asciiCode;
} keymapLayout_s;

typedef enum {
    kbStatusOff = 0,
    bbStatusOn
} keyboardStatus_e;

typedef enum {
    kbInUseOff = 0,
    bbInUseOn
} keyboardInUse_e;

typedef enum {
    kbResetNotAsserted = 0,
    kbResetAsserted
} keyboardReset_e;

void keyboard_initialise(void);
void keyboard_deinitialise(void);
uint8_t keyboard_translateKey(uint8_t rawKeyCode, const keymapLayout_s **decodedKeyCode);
uint8_t keyboard_translateModifier(uint8_t rawKeyCode, const keymapLayout_s **rawModifierCode);
keyboardReset_e keyboard_translateReset(uint8_t rawModifierCode);
void keyboard_sendKey(uint8_t amigaKeyCode, uint8_t pressedReleased);
keyboardStatus_e keyboard_getStatus(void);
keyboardInUse_e keyboard_getInUse(void);

#endif // __CH554_KEYBOARD_H__