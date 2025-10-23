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

typedef enum {
    kbStatusOff = 0,
    bbStatusOn
} keyboardStatus_e;

typedef enum {
    kbInUseOff = 0,
    bbInUseOn
} keyboardInUse_e;

void keyboard_initialise(void);
void keyboard_sendKey(uint8_t keyCode, uint8_t pressedReleased);
void keyboard_assertReset(void);
keyboardStatus_e keyboard_getStatus(void);
keyboardInUse_e keyboard_getInUse(void);

#endif // __CH554_KEYBOARD_H__