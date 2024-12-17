#include <stdint.h>
#include <compiler.h>
#include "ch554.h"
#include "serial.h"


inline void mInitSTDIO(void)
{
    uint32_t x;
    uint8_t x2;

    SM0 = 0;
    SM1 = 1;
    SM2 = 0;    // Serial port 0 usage mode 1
                // Use Timer1 as a baud rate generator
    RCLK = 0;   // UART0 receive clock
    TCLK = 0;   // UART0 transmit clock
    
    PCON |= SMOD;
    
    x = 10 * FREQ_SYS / UART0_BAUD / 16;    // If you change the main frequency, be careful not to overflow the value of x
    x2 = x % 10;
    x /= 10;
    if (x2 >= 5)
        x++; // rounding

    TMOD = TMOD & ~bT1_GATE & ~bT1_CT & ~MASK_T1_MOD | bT1_M1;  // 0X20, Timer1 as 8-bit auto-reload timer
    T2MOD = T2MOD | bTMR_CLK | bT1_CLK;                         // Timer1 clock selection
    TH1 = (0 - x);                                              // 12MHz crystal oscillator, buad / 12 is the actual need to set the baud rate
    TR1 = 1;                                                    // Start timer 1
    TI = 1;
    REN = 1; // Serial 0 receive enable
}

inline uint8_t CH554UART0RcvByte(void)
{
    while (RI == 0);    // wait for receive interrupt flag (RI == 1)
    RI = 0;

    return SBUF;
}

inline void CH554UART0SendByte(uint8_t SendDat)
{
    SBUF = SendDat;
    while (TI == 0);    // wait for transmit to finish (TI == 1)
    TI = 0;
}