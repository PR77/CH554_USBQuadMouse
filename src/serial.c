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

inline void serial_initialiseSerial1(uint32_t baudRate, uint8_t alternativePins, uint8_t enableInterrupt) {
    U1SM0 = 0;
    U1SMOD = 1;
    U1REN = 1;

    RCLK = 0;
    TCLK = 0;

    SBAUD1 = (0 - ((FREQ_SYS / 16L) / UART1_BAUD));

    if (alternativePins) {
        PIN_FUNC = PIN_FUNC | bUART1_PIN_X;
    }

    if (enableInterrupt) {
        IE_UART1 = 1;
    } else {
        IE_UART1 = 1;
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

