/********************************** (C) COPYRIGHT *******************************
* File Name     : BUTTONS.C
* Author        : Paul Raspa (PR77)
* License       : MIT
* Version       : V1.0
* Date          : 2025/04/23
* Description   : CH554 Mouse Buttons
*******************************************************************************/

#include <stdint.h>
#include "ch554.h"
#include "buttons.h"
#include "buttons_cfg.h"

SBIT(LEFT_BUTTON, LEFT_BUTTON_PORT, LEFT_BUTTON_PIN);
SBIT(RIGHT_BUTTON, RIGHT_BUTTON_PORT, RIGHT_BUTTON_PIN);

static uint8_t invertButtonLogic = 0;

void buttons_initialise(uint8_t invertSignal) {

    LEFT_BUTTON_MOD_OC = LEFT_BUTTON_MOD_OC & ~(1 << LEFT_BUTTON_PIN);
    LEFT_BUTTON_DIR_PU = LEFT_BUTTON_DIR_PU | (1 << LEFT_BUTTON_PIN);

    RIGHT_BUTTON_MOD_OC = RIGHT_BUTTON_MOD_OC & ~(1 << RIGHT_BUTTON_PIN);
    RIGHT_BUTTON_DIR_PU = RIGHT_BUTTON_DIR_PU | (1 << RIGHT_BUTTON_PIN);

    invertButtonLogic = invertSignal;

    if (invertSignal) {
        LEFT_BUTTON = 1;
        RIGHT_BUTTON = 1;
    } else {
        LEFT_BUTTON = 0;
        RIGHT_BUTTON = 0;
    }
}

void buttons_leftButton(uint8_t buttonState) {

    if (buttonState ^ invertButtonLogic) {
        LEFT_BUTTON = 1;
    } else {
        LEFT_BUTTON = 0;
    }
}

void buttons_rightButton(uint8_t buttonState) {

    if (buttonState ^ invertButtonLogic) {
        RIGHT_BUTTON = 1;
    } else {
        RIGHT_BUTTON = 0;
    }
}