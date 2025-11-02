/********************************** (C) COPYRIGHT *******************************
* File Name     : I2C.H
* Author        : Zhiyuan Wan
* License       : MIT
* Version       : V1.0
* Date          : 2018/03/17
* Description   : 8051 Software I2C
********************************************************************************
* Modified      : Paul Raspa (PR77)
* License       : MIT
* Version       : V2.0
* Date          : 2024/12/17
*******************************************************************************/

#ifndef __CH554_I2C_CFG_H__
#define __CH554_I2C_CFG_H__

#include <stdint.h>
#include "ch554.h"

#ifndef I2C_DATA_LENGTH
#define I2C_DATA_LENGTH     8
#endif

#ifndef I2C_PORT
#define I2C_PORT            0xB0
#endif

#ifndef I2C_MOD_OC
#define I2C_MOD_OC          P3_MOD_OC
#endif

#ifndef I2C_DIR_PU
#define I2C_DIR_PU          P3_DIR_PU
#endif

#ifndef I2C_SDAT_PIN
#if defined(PCB_LAYOUT)
    #define I2C_SDAT_PIN    0
    #else
    #define I2C_SDAT_PIN    1
#endif
#endif

#ifndef I2C_SCLK_PIN
#if defined(PCB_LAYOUT)
    #define I2C_SCLK_PIN    1
    #else
    #define I2C_SCLK_PIN    0
#endif
#endif

#endif // __CH554_I2C_CFG_H__