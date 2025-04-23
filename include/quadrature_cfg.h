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

#ifndef QUADRATURE_PORT
#define QUADRATURE_PORT             0xB0
#endif

#ifndef QUADRATURE_MOD_OC
#define QUADRATURE_MOD_OC           P3_MOD_OC
#endif

#ifndef QUADRATURE_DIR_PU
#define QUADRATURE_DIR_PU           P3_DIR_PU
#endif

#ifndef QUADRATURE_XA_PIN
#define QUADRATURE_XA_PIN           0
#endif

#ifndef QUADRATURE_XB_PIN
#define QUADRATURE_XB_PIN           1
#endif

#ifndef QUADRATURE_YA_PIN
#define QUADRATURE_YA_PIN           3
#endif

#ifndef QUADRATURE_YB_PIN
#define QUADRATURE_YB_PIN           4
#endif

#endif // __CH554_QUADRATURE_CFG_H__