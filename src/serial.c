/********************************** (C) COPYRIGHT *******************************
* File Name     : SERIAL.C
* Author        : Paul Raspa (PR77)
* License       : MIT
* Version       : V1.0
* Date          : 2024/12/17
* Description   : 8051 UART 1
*******************************************************************************/

#include <stdint.h>
#include <compiler.h>
#include "ch554.h"
#include "serial.h"

// HEX encoding table
static const uint8_t hexTable[] = {
    '0', '1', '2', '3',
    '4', '5', '6', '7',
    '8', '9', 'A', 'B',
    'C', 'D', 'E', 'F'
};

void serial_UART1Interrupt(void) __interrupt(INT_NO_UART1) {
	uint8_t receivedData = 0;

	if (U1RI) {
	    receivedData = SBUF1;
		U1RI = 0;
	}

    if (U1TI) {
        U1TI = 0;
    }
}

inline void serial_initialiseSerial1(uint32_t baudRate, uint8_t alternativePins, uint8_t enableInterrupt) {
    U1SM0 = 0;
    U1SMOD = 1;
    U1REN = 1;

    SBAUD1 = (0 - ((FREQ_SYS / 16L) / baudRate));

    if (alternativePins) {
        PIN_FUNC = PIN_FUNC | bUART1_PIN_X;
    }

    if (enableInterrupt) {
        IE_UART1 = 1;
        GPIO_IE = GPIO_IE | bIE_RXD1_LO;
    } else {
        IE_UART1 = 0;
        GPIO_IE = GPIO_IE & ~bIE_RXD1_LO;
    }
}

inline void serial_disableSerial1Interrupt(void) {

    if (IE_UART1 == 1) {
        IE_UART1 = 0;                    // only if already enabled, then disable UART1 interrupt
    }
}

inline void serial_enableSerial1Interrupt(void) {

    if (IE_UART1 == 0) {
        IE_UART1 = 1;                    // only if already disabled, then emable UART1 interrupt
    }
}

inline uint8_t serial_getByteSerial1(void) {
    
    while (U1RI == 0);                  // wait for receive interrupt flag (RI == 1)
    U1RI = 0;

    return (SBUF1);
}

inline void serial_sendByteSerial1(uint8_t character) {
    SBUF1 = character;
    
    while (U1TI == 0);                  // wait for transmit to finish (TI == 1)
    U1TI = 0;
}

void serial_printString(char* string) {

    if (!string) {
        return;
    }
    
    while (*string) {                       // repeat until string terminator
        SERIAL_PORT_PUTCHR(*string++);  // print character on OLED
    }
}

void serial_printHexByte(uint8_t value) {
    SERIAL_PORT_PUTCHR(hexTable[(value >> 4)]);
    SERIAL_PORT_PUTCHR(hexTable[value & 0x0F]);
}

void serial_printHexWord(uint16_t value) {
    serial_printHexByte(value >> 8);
    serial_printHexByte(value & 0xFF);
}
