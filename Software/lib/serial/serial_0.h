/********************************** (C) COPYRIGHT *******************************
* File Name     : SERIAL.H
* Author        : Paul Raspa (PR77)
* License       : MIT
* Version       : V1.0
* Date          : 2025/02/06
* Description   : 8051 UART 0
*******************************************************************************/

#ifndef __CH554_SERIAL_0_H__
#define __CH554_SERIAL_0_H__

#include <stdint.h>
#include "ch554.h"
#include "serial_cfg.h"

void serial_UART0Interrupt(void) __interrupt(INT_NO_UART0);
void serial_initialiseSerial0(uint32_t baudRate, uint8_t alternativePins, uint8_t enableInterrupt);
inline void serial_disableSerial0Interrupt(void);
inline void serial_enableSerial0Interrupt(void);
uint8_t serial_getByteSerial0(void);
void serial_sendByteSerial0(uint8_t character);

#endif // __CH554_SERIAL_0_H__