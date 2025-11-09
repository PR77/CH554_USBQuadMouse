/********************************** (C) COPYRIGHT *******************************
* File Name     : BUTTONS.H
* Author        : Paul Raspa (PR77)
* License       : MIT
* Version       : V1.0
* Date          : 2025/04/23
* Description   : CH554 Mouse Buttons
*******************************************************************************/

#ifndef __CH554_BUTTONS_H__
#define __CH554_BUTTONS_H__

#include <stdint.h>
#include "ch554.h"
#include "buttons_cfg.h"

typedef enum {
    dontInvertButtons = 0,
    invertButtons
} buttonsInvert_e;

void buttons_initialise(buttonsInvert_e invertState);
void buttons_leftButton(uint8_t buttonState);
void buttons_rightButton(uint8_t buttonState);

#endif // __CH554_BUTTONS_H__