/********************************** (C) COPYRIGHT *******************************
* File Name     : TICK.c
* Author        : Paul Raspa (PR77)
* License       : MIT
* Version       : V1.0
* Date          : 2024/12/17
* Description   : Timer 0 Tick
*******************************************************************************/

#include <stdint.h>
#include <compiler.h>
#include "ch554.h"
#include "tick.h"

static volatile uint32_t _1msTimerCount;

void tick_timer0Interrupt(void) __interrupt(INT_NO_TMR0) {
    TL0 = TIMER_RELOAD_VALUE_MS_TL0(1);  
    TH0 = TIMER_RELOAD_VALUE_MS_TH0(1);

    _1msTimerCount++;
}

inline void tick_initialiseTimer0(void) {

    TMOD = TMOD & ~bT0_CT;          // timer in timing mode
    TMOD = TMOD | bT0_M0;           // timing, not counting, mode 1 (counts to 0xFFFF - TLTH)
    T2MOD = T2MOD & ~bTMR_CLK;      // Fsys clock select
    T2MOD = T2MOD & ~bT0_CLK;       // divide by 12
    TL0 = TIMER_RELOAD_VALUE_MS_TL0(1);  
    TH0 = TIMER_RELOAD_VALUE_MS_TH0(1);
}

inline void tick_startTimer0(void) {

    TR0 = 1;                        // start the timer
}

inline void tick_stopTimer0(void) {

    TR0 = 0;                        // stop the timer
}

inline void tick_disableTimer0Interrupt(void) {

    if (ET0 == 1) {
        ET0 = 0;                    // only if already enabled, then disable timer interrupt
    }
}

inline void tick_enableTimer0Interrupt(void) {

    if (ET0 == 0) {
        ET0 = 1;                    // only if already disabled, then emable timer interrupt
    }
}

inline uint32_t tick_get1msTimerCount(void) {
    uint32_t curent1msTimerCount = 0;

    tick_disableTimer0Interrupt();  // disable timer interrupt to ensure _1msTimerTick is not modified
    curent1msTimerCount = _1msTimerCount;
    tick_enableTimer0Interrupt();   // enable timer interrupt

    return (curent1msTimerCount);
}
