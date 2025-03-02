/********************************** (C) COPYRIGHT *******************************
* File Name     : SERIAL_CFG.H
* Author        : Paul Raspa (PR77)
* License       : MIT
* Version       : V1.0
* Date          : 2024/12/17
* Description   : 8051 UART CONFIGURATION
*******************************************************************************/

#ifndef __CH554_SERIAL_CFG_H__
#define __CH554_SERIAL_CFG_H__

#include <stdint.h>
#include "ch554.h"

#ifndef SERIAL_BAUD_RATE
#define SERIAL_BAUD_RATE        38400
#endif

#ifndef CONSOLE_PORT_PUTCHR
#define CONSOLE_PORT_PUTCHR(x)  serial_sendByteSerial1(x)
#endif

#ifndef CONSOLE_PORT_GETCHR
#define CONSOLE_PORT_GETCHR()   serial_getByteSerial1()
#endif

#endif // __CH554_SERIAL_CFG_H__