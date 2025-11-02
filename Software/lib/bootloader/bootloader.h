/********************************** (C) COPYRIGHT *******************************
* File Name     : BOOTLOADER.H
* Author        : Paul Raspa (PR77)
* License       : MIT
* Version       : V1.0
* Date          : 2024/12/17
* Description   : CH554 Bootloader entry
*******************************************************************************/

#ifndef __CH554_BOOTLOADER_H__
#define __CH554_BOOTLOADER_H__

#include <stdint.h>
#include "ch554.h"

extern void bootloader_initialise(void);
inline uint8_t bootloader_checkBootloaderRequest(void);
extern void (* __code bootloader_enter)(void);

#endif // __CH554_BOOTLOADER_H__