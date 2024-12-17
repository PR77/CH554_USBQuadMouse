#ifndef __CH554_DEBUG_H__
#define __CH554_DEBUG_H__

#include <stdint.h>
#include "ch554.h"

#ifndef UART0_BAUD
#define UART0_BAUD 9600
#endif

#ifndef UART1_BAUD
#define UART1_BAUD 9600
#endif

inline void CH554UART0Alter(void);
inline void mInitSTDIO(void);
inline uint8_t CH554UART0RcvByte(void);
inline void CH554UART0SendByte(uint8_t SendDat);
inline void CH554UART1Alter(void);
inline void UART1Setup(void);
inline uint8_t CH554UART1RcvByte(void);
inline void CH554UART1SendByte(uint8_t SendDat);
inline void CH554WDTModeSelect(uint8_t mode);
inline void CH554WDTFeed(uint8_t tim);

#endif // __CH554_DEBUG_H__
