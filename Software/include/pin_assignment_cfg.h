/********************************** (C) COPYRIGHT *******************************
* File Name     : PIN_ASSIGNMENT_CFG.H
* Author        : Paul Raspa (PR77)
* License       : MIT
* Version       : V1.0
* Date          : 2025/05/19
* Description   : Pin Assignments
*******************************************************************************/

#ifndef __CH554_PIN_ASSIGNMENT_CFG_H__
#define __CH554_PIN_ASSIGNMENT_CFG_H__

#include <stdint.h>
#include "ch554.h"

// Port 1

#ifndef QUADRATURE_XA_ASSIGNED_PIN
#define QUADRATURE_XA_ASSIGNED_PIN          1.0
#endif

#ifndef QUADRATURE_YA_ASSIGNED_PIN
#define QUADRATURE_YA_ASSIGNED_PIN          1.1
#endif

#ifndef RIGHT_BUTTON_ASSIGNED_PIN
#define RIGHT_BUTTON_ASSIGNED_PIN           1.2
#endif

#ifndef LEFT_BUTTON_ASSIGNED_PIN
#define LEFT_BUTTON_ASSIGNED_PIN            1.3
#endif

#ifndef HEARTBEAT_ASSIGNED_PIN
#if defined(PCB_LAYOUT)
    #define HEARTBEAT_ASSIGNED_PIN          1.5
    #else
    #define HEARTBEAT_ASSIGNED_PIN          1.4
#endif
#endif

#ifndef QUADRATURE_YB_ASSIGNED_PIN
#if defined(PCB_LAYOUT)
    #define QUADRATURE_YB_ASSIGNED_PIN      1.4 
    #else
    #define QUADRATURE_YB_ASSIGNED_PIN      1.5 
#endif
#endif

// Port 3

#ifndef I2C_SDAT_PIN
#if defined(PCB_LAYOUT)
    #define I2C_SDAT_ASSIGNED_PIN           3.0
    #else
    #define I2C_SDAT_ASSIGNED_PIN           3.1
#endif
#endif

#ifndef I2C_SCLK_PIN
#if defined(PCB_LAYOUT)
    #define I2C_SCLK_ASSIGNED_PIN           3.1
    #else
    #define I2C_SCLK_ASSIGNED_PIN           3.0
#endif
#endif

#ifndef QUADRATURE_XB_ASSIGNED_PIN
#define QUADRATURE_XB_ASSIGNED_PIN          3.2
#endif

#ifndef BOOTLOADER_ASSIGNED_PIN
#define BOOTLOADER_ASSIGNED_PIN             3.3
#endif

#ifndef BUZZER_OUTPUT_ASSIGNED_PIN
#define BUZZER_OUTPUT_ASSIGNED_PIN          3.4
#endif

#endif // __CH554_PIN_ASSIGNMENT_CFG_H__