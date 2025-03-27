/********************************** (C) COPYRIGHT *******************************
* File Name     : SERIAL_1.C
* Author        : Paul Raspa (PR77)
* License       : MIT
* Version       : V1.0
* Date          : 2024/12/17
* Description   : 8051 UART 1
*******************************************************************************/

#include <stdint.h>
#include <compiler.h>
#include "ch554.h"
#include "serial_1.h"

#if defined(SERIAL_ENABLE_TX_INTERRUPTS)
static volatile uint8_t serial_transmitBuffer[SERIAL_TX_BUFFER_SIZE];
static volatile uint8_t serial_transmitWriteIndex;
static volatile uint8_t serial_transmitReadIndex;
static volatile uint8_t serial_transmitTriggerred;
#endif

#if defined(SERIAL_ENABLE_RX_INTERRUPTS)
static volatile uint8_t serial_receiveBuffer[SERIAL_RX_BUFFER_SIZE];
static volatile uint8_t serial_receiveWriteIndex;
static volatile uint8_t serial_receiveReadIndex;
#endif

void serial_UART1Interrupt(void) __interrupt(INT_NO_UART1) {
	uint8_t receivedData = 0;

	if (U1RI) {
		U1RI = 0;
	}

    if (U1TI) {
        U1TI = 0;

        // Check if transmit buffer is not empty
        if (serial_transmitWriteIndex != serial_transmitReadIndex) {

            // Get one byte from buffer and write it
            SBUF1 = serial_transmitBuffer[serial_transmitReadIndex];

            // Calculate and store new buffer index
            serial_transmitReadIndex = (serial_transmitReadIndex + 1) & SERIAL_TX_BUFFER_MASK;
        } else {
            // If there are no more bytes to be sent, then clear the Transmit Triggered
            // flag to ensure a transmit is (re-)triggered when another byte(s) is added
            // to the transmit buffer.
            serial_transmitTriggerred = 0;
        }
    }
}

inline void serial_initialiseSerial1(uint32_t baudRate, uint8_t alternativePins) {
    U1SM0 = 0;
    U1SMOD = 1;
    U1REN = 1;

    SBAUD1 = (0 - ((FREQ_SYS / 16L) / baudRate));

    if (alternativePins) {
        PIN_FUNC = PIN_FUNC | bUART1_PIN_X;
    }

#if defined(SERIAL_ENABLE_TX_INTERRUPTS)
    serial_transmitWriteIndex = 0;
    serial_transmitReadIndex = 0;
    serial_transmitTriggerred = 0;
#endif

#if defined(SERIAL_ENABLE_RX_INTERRUPTS)
    serial_receiveWriteIndex = 0;
    serial_receiveReadIndex = 0;
#endif

#if defined(SERIAL_ENABLE_RX_INTERRUPTS)
    GPIO_IE = GPIO_IE | bIE_RXD1_LO;
#else
    GPIO_IE = GPIO_IE & ~bIE_RXD1_LO;
#endif
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

uint8_t serial_getByteSerial1Interrupt(void) {
    
    return (0);
}

uint8_t serial_getByteSerial1Blocking(void) {
    
    while (U1RI == 0);                  // wait for receive interrupt flag (RI == 1)
    U1RI = 0;

    return (SBUF1);
}

void serial_sendByteSerial1Interrupt(uint8_t character) {

    volatile uint8_t nextWriteIndex = 0;

    serial_disableSerial1Interrupt();
    nextWriteIndex = (serial_transmitWriteIndex + 1) & SERIAL_TX_BUFFER_MASK;

    if ((serial_transmitWriteIndex == serial_transmitReadIndex) && (serial_transmitTriggerred == 0)) {
        // Transmission buffer was empty, before triggering next transmission wait
        // for any pending transmission to finish (TI == 0) before updating SBUF1.
        // Writing to SBUF1 will trigger the transmission.
        U1TI = 1;
        serial_transmitTriggerred = 1;
    } else {
        serial_enableSerial1Interrupt();
        while (nextWriteIndex == serial_transmitReadIndex) {
            // Wait for free space in buffer before pushing next character
            // into it. When this occurs, then sendByte...() will be blocking.
            ;
        }
        serial_disableSerial1Interrupt();
    }
    
    serial_transmitBuffer[serial_transmitWriteIndex] = character;
    serial_transmitWriteIndex = nextWriteIndex;
    serial_enableSerial1Interrupt();
}

void serial_sendByteSerial1Blocking(uint8_t character) {
    SBUF1 = character;
    
    while (U1TI == 0) {
        // Wait for transmit to finish (TI == 1)
        ;
    }

    U1TI = 0;
}