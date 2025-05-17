/********************************** (C) COPYRIGHT *******************************
* File Name     : BOOTLOADER_CFG.h
* Author        : Paul Raspa (PR77)
* License       : MIT
* Version       : V1.0
* Date          : 2025/02/03
* Description   : CH554 Bootloader entry
*******************************************************************************/

#ifndef __CH554_BOOTLOADER_CFG_H__
#define __CH554_BOOTLOADER_CFG_H__

#include <stdint.h>
#include "ch554.h"

#ifndef BOOTLOADER_PORT
#define BOOTLOADER_PORT         0xB0
#endif

#ifndef BOOTLOADER_MOD_OC
#define BOOTLOADER_MOD_OC       P3_MOD_OC
#endif

#ifndef BOOTLOADER_DIR_PU
#define BOOTLOADER_DIR_PU       P3_DIR_PU
#endif

#ifndef BOOTLOADER_PIN
#define BOOTLOADER_PIN          3
#endif

#endif // __CH554_BOOTLOADER_CFG_H__