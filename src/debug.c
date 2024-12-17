/********************************** (C) COPYRIGHT *******************************
* File Name          : Debug.C
* Author             : WCH
* Version            : V1.0
* Date               : 2017/01/20
* Description        : CH554 DEBUG Interface
                       CH554 main frequency modification, delay function definition
                       Serial port 0 and serial port 1 initialization
                       Serial port 0 and serial port 1 transceiver subfunctions
                       Watchdog initialization
*******************************************************************************/

#include <stdint.h>
#include <compiler.h>
#include "ch554.h"
#include "debug.h"

/*******************************************************************************
* Function Name  : CH554UART0Alter()
* Description    : CH554 serial port 0 pin mapping, serial port mapping to P0.2 and P0.3
*******************************************************************************/
inline void CH554UART0Alter(void)
{
    PIN_FUNC |= bUART0_PIN_X;
}

/*******************************************************************************
* Function Name  : mInitSTDIO()
* Description    : CH554 serial port 0 is initialized, T1 is used as the baud rate generator of UART0 by default, T2 can also be used
                   As a baud rate generator
*******************************************************************************/
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

/*******************************************************************************
* Function Name  : CH554UART0RcvByte()
* Description    : CH554UART0 receives a byte
* Return         : SBUF
*******************************************************************************/
inline uint8_t CH554UART0RcvByte(void)
{
    while (RI == 0);    // wait for receive interrupt flag (RI == 1)
    RI = 0;

    return SBUF;
}

/*******************************************************************************
* Function Name  : CH554UART0SendByte(uint8_t SendDat)
* Description    : CH554UART0 sends a byte
* Input          : uint8_t SendDat; the data to be sent
*******************************************************************************/
inline void CH554UART0SendByte(uint8_t SendDat)
{
    SBUF = SendDat;
    while (TI == 0);    // wait for transmit to finish (TI == 1)
    TI = 0;
}

/*******************************************************************************
* Function Name  : CH554UART1Alter()
* Description    : Set the alternate pin mappings for UART1 (TX on P3.2, RX on P3.4)
*******************************************************************************/
inline void CH554UART1Alter(void)
{
    PIN_FUNC |= bUART1_PIN_X;
}

/*******************************************************************************
* Function Name  : UART1Setup()
* Description    : CH554串口1初始化
*******************************************************************************/
inline void UART1Setup(void)
{
    U1SM0 = 0;
    U1SMOD = 1;
    U1REN = 1;
    
    // should correct for rounding in SBAUD1 calculation
    SBAUD1 = (0 - ((FREQ_SYS / 16L) / UART1_BAUD));

#if UART1_PINMAP	
    PIN_FUNC |= bUART1_PIN_X;
#endif

#if UART1_INTERRUPT
	IE_UART1 = 1;	
	EA = 1;
#endif	
}

/*******************************************************************************
* Function Name  : CH554UART1RcvByte()
* Description    : CH554UART1接收一个字节
* Return         : SBUF
*******************************************************************************/
inline uint8_t CH554UART1RcvByte(void)
{
    while (U1RI == 0);  // wait for receive interrupt flag (RI == 1)
    U1RI = 0;

    return SBUF1;
}

/*******************************************************************************
* Function Name  : CH554UART1SendByte(uint8_t SendDat)
* Description    : CH554UART1发送一个字节
* Input          : uint8_t SendDat；要发送的数据
*******************************************************************************/
inline void CH554UART1SendByte(uint8_t SendDat)
{
    SBUF1 = SendDat;
    while (U1TI == 0);  // wait for transmit to finish (TI == 1)
    U1TI = 0;
}

#if UART1_INTERRUPT
/*******************************************************************************
* Function Name  : UART1Interrupt(void)
* Description    : UART1 中断服务程序
*******************************************************************************/
void UART1Interrupt( void ) interrupt INT_NO_UART1 using 1
{
	UINT8 dat;
	if (U1RI) {
	    dat = SBUF1;
		U1RI = 0;
	}
}
#endif

