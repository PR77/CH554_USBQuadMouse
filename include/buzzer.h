/********************************** (C) COPYRIGHT *******************************
* File Name     : BUZZER.H
* Author        : Paul Raspa (PR77)
* License       : MIT
* Version       : V1.0
* Date          : 2025/05/19
* Description   : CH554 Mouse Buzzer
*******************************************************************************/

#ifndef __CH554_BUZZER_H__
#define __CH554_BUZZER_H__

#include <stdint.h>
#include "ch554.h"
#include "buzzer_cfg.h"

#define PWM_CK_SE_TARGET(x) (uint32_t)(FREQ_SYS / x)

void buzzer_initialise(void);
inline void buzzer_startBuzzer(void);
inline void buzzer_stopBuzzer(void);
inline void buzzer_toggleBuzzer(void);

#endif // __CH554_BUZZER_H__