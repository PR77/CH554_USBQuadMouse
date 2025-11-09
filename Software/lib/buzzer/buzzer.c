/********************************** (C) COPYRIGHT *******************************
* File Name     : BUZZER.C
* Author        : Paul Raspa (PR77)
* License       : MIT
* Version       : V1.0
* Date          : 2025/05/19
* Description   : CH554 Buzzer engine
*******************************************************************************/

#include <stdint.h>
#include "ch554.h"
#include "system.h"
#include "buzzer.h"
#include "buzzer_cfg.h"

// References - 2020 by Stefan Wagner 
// Project Files (EasyEDA): https://easyeda.com/wagiminator
// Project Files (Github):  https://github.com/wagiminator
// License: http://creativecommons.org/licenses/by-sa/3.0/

// ===================================================================================
// Set global PWM frequency (in Hertz, range: FREQ_SYS/65536 - FREQ_SYS/256)
// ===================================================================================
#define PWM_set_freq(FREQ) \
    (((FREQ) >= FREQ_SYS / 256) ? (PWM_CK_SE = 0)              : \
    (((FREQ_SYS / 256 / (FREQ) - 1) > 255) ? (PWM_CK_SE = 255) : \
    (PWM_CK_SE = (uint8_t)(FREQ_SYS / 256 / (FREQ) - 1))         \
))

SBIT(BUZZER_OUTPUT, BUZZER_OUTPUT_PORT, BUZZER_OUTPUT_PIN);

void buzzer_initialise(void) {

    BUZZER_OUTPUT_MOD_OC = BUZZER_OUTPUT_MOD_OC & ~(1 << BUZZER_OUTPUT_PIN);
    BUZZER_OUTPUT_DIR_PU = BUZZER_OUTPUT_DIR_PU | (1 << BUZZER_OUTPUT_PIN);

    PWM_set_freq(BUZZER_FREQUENCY_HZ);

    PWM_CTRL = PWM_CTRL & ~bPWM2_OUT_EN;
    PWM_CTRL = PWM_CTRL | bPWM_CLR_ALL;
    PWM_CTRL = PWM_CTRL & ~bPWM_CLR_ALL;
    PWM_DATA2 = 0x7F;
}

inline void buzzer_startBuzzer(void) {
    PWM_CTRL = PWM_CTRL | bPWM2_OUT_EN;
}

inline void buzzer_stopBuzzer(void) {
    PWM_CTRL = PWM_CTRL & ~bPWM2_OUT_EN;
}

inline void buzzer_toggleBuzzer(void) {
    PWM_CTRL = PWM_CTRL ^ bPWM2_OUT_EN;
}

inline void buzzer_pulseBuzzer(uint16_t msDuration) {
    
    if (msDuration) {
        buzzer_startBuzzer();
        system_mDelaymS(msDuration);
    }

    buzzer_stopBuzzer();
}
