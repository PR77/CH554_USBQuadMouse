/********************************** (C) COPYRIGHT *******************************
* File Name     : SERIAL.H
* Author        : Paul Raspa (PR77)
* License       : MIT
* Version       : V1.0
* Date          : 2024/12/17
* Description   : 8051 UART 1
*******************************************************************************/

#ifndef __CH554_SERIAL_1_H__
#define __CH554_SERIAL_1_H__

#include <stdint.h>
#include "ch554.h"
#include "serial_cfg.h"

#define SERIAL_ENABLE_TX_INTERRUPTS
#undef SERIAL_ENABLE_RX_INTERRUPTS

#ifndef SERIAL_TX_BUFFER_SIZE
#define SERIAL_TX_BUFFER_SIZE   8
#endif

#ifndef SERIAL_RX_BUFFER_SIZE
#define SERIAL_RX_BUFFER_SIZE   8
#endif

#define SERIAL_TX_BUFFER_MASK   (SERIAL_TX_BUFFER_SIZE - 1)
#define SERIAL_RX_BUFFER_MASK   (SERIAL_RX_BUFFER_SIZE - 1)

#if defined(SERIAL_ENABLE_TX_INTERRUPTS) && (SERIAL_TX_BUFFER_SIZE & SERIAL_TX_BUFFER_MASK)
#error TX buffer size is not a power of 2
#endif

#if defined(SERIAL_ENABLE_RX_INTERRUPTS) && (SERIAL_RX_BUFFER_SIZE & SERIAL_RX_BUFFER_MASK)
#error RX buffer size is not a power of 2   
#endif  

void serial_UART1Interrupt(void) __interrupt(INT_NO_UART1);
inline void serial_initialiseSerial1(uint32_t baudRate, uint8_t alternativePins);
inline void serial_disableSerial1Interrupt(void);
inline void serial_enableSerial1Interrupt(void);
uint8_t serial_getByteSerial1(void);
#if defined(SERIAL_ENABLE_TX_INTERRUPTS)
void serial_sendByteSerial1Interrupt(uint8_t character);
#elif
void serial_sendByteSerial1Blocking(uint8_t character);
#endif

#if defined(SERIAL_ENABLE_TX_INTERRUPTS)
#define serial_sendByteSerial1(character)   serial_sendByteSerial1Interrupt(character)
#elif
#define serial_sendByteSerial1(character)   serial_sendByteSerial1Blocking(character)
#endif

#endif // __CH554_SERIAL_1_H__