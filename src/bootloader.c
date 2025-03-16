/********************************** (C) COPYRIGHT *******************************
* File Name     : BOOTLOADER.h
* Author        : Paul Raspa (PR77)
* License       : MIT
* Version       : V1.0
* Date          : 2024/12/17
* Description   : CH554 Bootloader entry
*******************************************************************************/

#include <stdint.h>
#include "ch554.h"
#include "bootloader.h"
#include "bootloader_cfg.h"

SBIT(BOOTLOADER_REQUEST, 0x90, BOOTLOADER_PIN);

void bootloader_initialise(void) {

    BOOTLOADER_MOD_OC = BOOTLOADER_MOD_OC & ~(1 << BOOTLOADER_PIN);
    BOOTLOADER_DIR_PU = BOOTLOADER_DIR_PU | (1 << BOOTLOADER_PIN);
}

inline uint8_t bootloader_checkBootloaderRequest(void) {
    
    // BOOTLOADER_REQUEST input is active LOW
    return (!BOOTLOADER_REQUEST);
}

void (* __code bootloader_enter)(void) = BOOT_LOAD_ADDR;