/********************************** (C) COPYRIGHT *******************************
* File Name     : BUZZER_CFG.H
* Author        : Paul Raspa (PR77)
* License       : MIT
* Version       : V1.0
* Date          : 2025/05/19
* Description   : CH554 Buzzer engine
*******************************************************************************/

#ifndef __CH554_BUZZER_CFG_H__
#define __CH554_BUZZER_CFG_H__

#include <stdint.h>
#include "ch554.h"

#ifndef BUZZER_OUTPUT_PORT
#define BUZZER_OUTPUT_PORT      0xB0
#endif

#ifndef BUZZER_OUTPUT_MOD_OC
#define BUZZER_OUTPUT_MOD_OC    P3_MOD_OC
#endif

#ifndef BUZZER_OUTPUT_DIR_PU
#define BUZZER_OUTPUT_DIR_PU    P3_DIR_PU
#endif

#ifndef BUZZER_OUTPUT_PIN
#define BUZZER_OUTPUT_PIN       4
#endif

#ifndef BUZZER_FREQUENCY_HZ
#define BUZZER_FREQUENCY_HZ     4000
#endif


#endif // __CH554_BUZZER_CFG_H__