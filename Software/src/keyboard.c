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

SBIT(KBCLOCK, KBCLOCK_PORT, KBCLOCK_PIN);
SBIT(KBDATA, KBDATA_PORT, KBDATA_PIN);
SBIT(KBRESET, KBRESET_PORT, KBRESET_PIN);
SBIT(KBSTATUS, KBSTATUS_PORT, KBSTATUS_PIN);
SBIT(KBINUSE, KBINUSE_PORT, KBINUSE_PIN);

void keyboard_initialise(void) {

    KBCLOCK_MOD_OC = KBCLOCK_MOD_OC & ~(1 << KBCLOCK_PIN);
    KBCLOCK_DIR_PU = KBCLOCK_DIR_PU | (1 << KBCLOCK_PIN);

    KBDATA_MOD_OC = KBDATA_MOD_OC & ~(1 << KBDATA_PIN);
    KBDATA_DIR_PU = KBDATA_DIR_PU | (1 << KBDATA_PIN);

    KBRESET_MOD_OC = KBRESET_MOD_OC & ~(1 << KBRESET_PIN);
    KBRESET_DIR_PU = KBRESET_DIR_PU | (1 << KBRESET_PIN);

    KBSTATUS_MOD_OC = KBSTATUS_MOD_OC | (1 << KBSTATUS_PIN);
    KBSTATUS_DIR_PU = KBSTATUS_DIR_PU | (1 << KBSTATUS_PIN);

    KBINUSE_MOD_OC = KBINUSE_MOD_OC | (1 << KBINUSE_PIN);
    KBINUSE_DIR_PU = KBINUSE_DIR_PU | (1 << KBINUSE_PIN);
}

void keyboard_sendKey(uint8_t keyCode) {

    (void)keyCode;
}

void keyboard_assertReset(uint8_t resetState) {

    (void)resetState;
}

keyboardStatus_e keyboard_getStatus(void) {

    return (kbStatusOff);
}

keyboardInUse_e keyboard_getInUse(void) {

    return (kbInUseOff);
}