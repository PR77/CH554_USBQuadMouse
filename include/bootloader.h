#ifndef __CH554_BOOTLOADER_H__
#define __CH554_BOOTLOADER_H__

#define BOOT_ADDR  0x3800
void (* __data bootloader)(void) = BOOT_ADDR;

#endif // __CH554_BOOTLOADER_H__