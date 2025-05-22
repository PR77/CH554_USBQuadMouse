/********************************** (C) COPYRIGHT *******************************
* File Name     : QUADRATURE_CFG.H
* Author        : Paul Raspa (PR77)
* License       : MIT
* Version       : V1.0
* Date          : 2025/02/28
* Description   : QUADRATURE ENCODER
*******************************************************************************/

#ifndef __CH554_QUADRATURE_CFG_H__
#define __CH554_QUADRATURE_CFG_H__

#include <stdint.h>
#include "ch554.h"

#undef QUADRATURE_COUNT_RESET_ON_DIRECTION_CHANGE

#ifndef QUADRATURE_CHANNELS
#define QUADRATURE_CHANNELS         2
#endif

#define QUADRATURE_CHANNELS_A_INDEX 0
#define QUADRATURE_CHANNELS_B_INDEX 1

#ifndef QUADRATURE_X_CHANNEL
#define QUADRATURE_X_CHANNEL        0
#endif

#ifndef QUADRATURE_Y_CHANNEL
#define QUADRATURE_Y_CHANNEL        1
#endif

#ifndef QUADRATURE_SEQUENCE_STEPS
#define QUADRATURE_SEQUENCE_STEPS   4
#endif

#ifndef QUADRATURE_XA_PORT
#define QUADRATURE_XA_PORT          0x90
#endif

#ifndef QUADRATURE_XB_PORT
#define QUADRATURE_XB_PORT          0xB0
#endif

#ifndef QUADRATURE_XA_MOD_OC
#define QUADRATURE_XA_MOD_OC        P1_MOD_OC
#endif

#ifndef QUADRATURE_XA_DIR_PU
#define QUADRATURE_XA_DIR_PU        P1_DIR_PU
#endif

#ifndef QUADRATURE_XB_MOD_OC
#define QUADRATURE_XB_MOD_OC        P3_MOD_OC
#endif

#ifndef QUADRATURE_XB_DIR_PU
#define QUADRATURE_XB_DIR_PU        P3_DIR_PU
#endif

#ifndef QUADRATURE_YA_PORT
#define QUADRATURE_YA_PORT          0x90
#endif

#ifndef QUADRATURE_YB_PORT
#define QUADRATURE_YB_PORT          0x90
#endif

#ifndef QUADRATURE_YA_MOD_OC
#define QUADRATURE_YA_MOD_OC        P1_MOD_OC
#endif

#ifndef QUADRATURE_YA_DIR_PU
#define QUADRATURE_YA_DIR_PU        P1_DIR_PU
#endif

#ifndef QUADRATURE_YB_MOD_OC
#define QUADRATURE_YB_MOD_OC        P1_MOD_OC
#endif

#ifndef QUADRATURE_YB_DIR_PU
#define QUADRATURE_YB_DIR_PU        P1_DIR_PU
#endif

#ifndef QUADRATURE_XA_PIN
#define QUADRATURE_XA_PIN           0
#endif

#ifndef QUADRATURE_XB_PIN
#define QUADRATURE_XB_PIN           2
#endif

#ifndef QUADRATURE_YA_PIN
#define QUADRATURE_YA_PIN           1
#endif

#ifndef QUADRATURE_YB_PIN
#define QUADRATURE_YB_PIN           5 
#endif

#endif // __CH554_QUADRATURE_CFG_H__