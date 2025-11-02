/********************************** (C) COPYRIGHT *******************************
* File Name     : HEARTBEAT.C
* Author        : Paul Raspa (PR77)
* License       : MIT
* Version       : V1.0
* Date          : 2025/02/03
* Description   : CH554 Heartbeat LED
*******************************************************************************/

#include <stdint.h>
#include "ch554.h"
#include "heartbeat.h"
#include "heartbeat_cfg.h"

SBIT(HEARTBEAT_LED, HEARTBEAT_PORT, HEARTBEAT_PIN);

void heartbeat_initialise(void) {

    HEARTBEAT_MOD_OC = HEARTBEAT_MOD_OC & ~(1 << HEARTBEAT_PIN);
    HEARTBEAT_DIR_PU = HEARTBEAT_DIR_PU | (1 << HEARTBEAT_PIN);

    HEARTBEAT_LED = 0;
}

void heartbeat_toggleState(void) {
    HEARTBEAT_LED = !HEARTBEAT_LED;
}