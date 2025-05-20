/********************************** (C) COPYRIGHT *******************************
* File Name     : BUZZER.C
* Author        : Paul Raspa (PR77)
* License       : MIT
* Version       : V1.0
* Date          : 2025/05/19
* Description   : CH554 Mouse Buzzer
*******************************************************************************/

#include <stdint.h>
#include "ch554.h"
#include "buzzer.h"
#include "buzzer_cfg.h"

SBIT(BUZZER_OUTPUT, BUZZER_OUTPUT_PORT, BUZZER_OUTPUT_PIN);

void buzzer_initialise(void) {
    uint32_t pwmClockTarget = PWM_CK_SE_TARGET(1000);
    uint32_t divisorFactor = 1;

    BUZZER_OUTPUT_MOD_OC = BUZZER_OUTPUT_MOD_OC & ~(1 << BUZZER_OUTPUT_PIN);
    BUZZER_OUTPUT_DIR_PU = BUZZER_OUTPUT_DIR_PU | (1 << BUZZER_OUTPUT_PIN);

    // Try to find the closest factor (of 2) to match the target PWM frequency.
    // Note: Details in datasheet are pretty sketchy...
    // https://onlinegdb.com/ujRetZZnx
    for (uint8_t i = 0, j = 0; i < UINT8_MAX; i++) {
        if (pwmClockTarget > divisorFactor) {
            divisorFactor <<= 1;
            j++;
        } else {
            PWM_CK_SE = j;
            break;
        }
    }

    PWM_CTRL = PWM_CTRL & ~bPWM2_OUT_EN;
    PWM_DATA2 = 0x7F;
}

inline void buzzer_startBuzzer(void) {
    PWM_CTRL = PWM_CTRL | bPWM2_OUT_EN;
}

inline void buzzer_stopBuzzer(void) {
    PWM_CTRL = PWM_CTRL & ~bPWM2_OUT_EN;
}

inline void buzzer_toggleBuzzer(void) {
    PWM_CTRL ^= PWM_CTRL | bPWM2_OUT_EN;
}

void buzzer_updateBuzzers(uint8_t counts) {

    if (counts) {
        BUZZER_OUTPUT = 1;
    }
    
    BUZZER_OUTPUT = 0;
}