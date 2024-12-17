/********************************** (C) COPYRIGHT *******************************
* File Name     : SERIAL.H
* Author        : Paul Raspa (PR77)
* License       : MIT
* Version       : V1.0
* Date          : 2024/12/17
* Description   : 8051 UART 1
*******************************************************************************/

#ifndef __CH554_SERIAL_H__
#define __CH554_SERIAL_H__

#include <stdint.h>
#include "ch554.h"
#include "serial_cfg.h"

void serial_UART1Interrupt(void) __interrupt(INT_NO_UART1);
inline void serial_initialiseSerial1(uint32_t baudRate, uint8_t alternativePins, uint8_t enableInterrupt);
inline void serial_disableSerial1Interrupt(void);
inline void serial_enableSerial1Interrupt(void);
inline uint8_t serial_getByteSerial1(void);
inline void serial_sendByteSerial1(uint8_t character);
void serial_printString(char* string);
void serial_printHexByte(uint8_t value);
void serial_printHexWord(uint16_t value);

#endif // __CH554_SERIAL_H__