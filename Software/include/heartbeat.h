/********************************** (C) COPYRIGHT *******************************
* File Name     : HEARTBEAT.H
* Author        : Paul Raspa (PR77)
* License       : MIT
* Version       : V1.0
* Date          : 2025/02/03
* Description   : CH554 Heartbeat LED
*******************************************************************************/

#ifndef __CH554_HEARTBEAT_H__
#define __CH554_HEARTBEAT_H__

#include <stdint.h>
#include "ch554.h"
#include "heartbeat_cfg.h"

void heartbeat_initialise(void);
void heartbeat_toggleState(void);

#endif // __CH554_HEARTBEAT_H__