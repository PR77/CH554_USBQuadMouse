/********************************** (C) COPYRIGHT *******************************
* File Name     : TICK.c
* Author        : Paul Raspa (PR77)
* License       : MIT
* Version       : V1.0
* Date          : 2024/12/17
* Description   : Timer 0 Tick
*******************************************************************************/

#ifndef __CH554_TICK_H__
#define __CH554_TICK_H__

#include <stdint.h>
#include "ch554.h"

#define TIMER_RELOAD_VALUE_MS_TL0(x)    (0xFFFF - ((FREQ_SYS/12)/(x * 1000)) & 0x00FF) >> 0
#define TIMER_RELOAD_VALUE_MS_TH0(x)    (0xFFFF - ((FREQ_SYS/12)/(x * 1000)) & 0xFF00) >> 8

void tick_timer0Interrupt(void) __interrupt(INT_NO_TMR0);
inline void tick_initialiseTimer0(void);
inline void tick_startTimer0(void);
inline void tick_stopTimer0(void);
inline void tick_disableTimer0Interrupt(void);
inline void tick_enableTimer0Interrupt(void);
inline uint32_t tick_get1msTimerCount(void);

#endif // __CH554_TICK_H__
