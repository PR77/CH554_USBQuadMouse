/********************************** (C) COPYRIGHT *******************************
* File Name     : HEARTBEAT_CFG.H
* Author        : Paul Raspa (PR77)
* License       : MIT
* Version       : V1.0
* Date          : 2025/02/03
* Description   : CH554 Heartbeat LED
*******************************************************************************/

#ifndef __CH554_HEARTBEAT_CFG_H__
#define __CH554_HEARTBEAT_CFG_H__

#include <stdint.h>
#include "ch554.h"

#ifndef HEARTBEAT_PORT
#define HEARTBEAT_PORT          0x90
#endif

#ifndef HEARTBEAT_MOD_OC
#define HEARTBEAT_MOD_OC        P1_MOD_OC
#endif

#ifndef HEARTBEAT_DIR_PU
#define HEARTBEAT_DIR_PU        P1_DIR_PU
#endif

#ifndef HEARTBEAT_PIN
#define HEARTBEAT_PIN           4
#endif

#endif // __CH554_HEARTBEAT_CFG_H__