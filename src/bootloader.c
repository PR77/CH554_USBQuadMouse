/********************************** (C) COPYRIGHT *******************************
* File Name     : BOOTLOADER.H
* Author        : Paul Raspa (PR77)
* License       : MIT
* Version       : V1.0
* Date          : 2024/12/17
* Description   : CH554 Bootloader entry
*******************************************************************************/

#include <stdint.h>
#include "ch554.h"
#include "bootloader.h"

void (* __code bootloader)(void) = BOOT_LOAD_ADDR;