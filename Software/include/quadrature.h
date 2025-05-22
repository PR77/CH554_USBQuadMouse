/********************************** (C) COPYRIGHT *******************************
* File Name     : QUADRATURE.H
* Author        : Paul Raspa (PR77)
* License       : MIT
* Version       : V1.0
* Date          : 2025/02/28
* Description   : QUADRATURE ENCODER
*******************************************************************************/

#ifndef __CH554_QUADRATURE_H__
#define __CH554_QUADRATURE_H__

#include <stdint.h>
#include "ch554.h"
#include "quadrature_cfg.h"

#define QUADRATURE_LOW              (uint8_t)0
#define QUADRATURE_HIGH             !QUADRATURE_LOW

#define QUADRATURE_FORWARD          (uint8_t)0
#define QUADRATURE_BACKWARD         !QUADRATURE_FORWARD

#define TIMER_RELOAD_VALUE_HZ(x)    (uint16_t)(0xFFFF - (uint32_t)((FREQ_SYS/12)/(x)))

typedef struct {

    uint8_t channelIndex;
    uint8_t sequenceCounts;
    uint8_t sequenceIndex;
    uint8_t direction;
    uint8_t directionChange;

} quadratureOutput_s;

typedef enum {

    encodingRate60Hz = 1,
    encodingRate1000Hz = 1000,
    encodingRate2000Hz = 2000,
    encodingRate4000Hz = 4000,
    encodingRate8000Hz = 8000,
    encodingRate12000Hz = 12000,
    encodingRateMaximum

} encodingRate_e;

void quadrature_timer2Interrupt(void) __interrupt(INT_NO_TMR2);
void quadrature_initialise(encodingRate_e encodingRate);
inline void quadrature_startEncoding(void);
inline void quadrature_stopEncoding(void);
void quadrature_updateCounts(uint8_t channelIndex, int8_t counts);
uint8_t quadrature_getCounts(uint8_t channelIndex);
static void quadrature_channelUpdate(quadratureOutput_s * quadratureOutput);

#endif // __CH554_QUADRATURE_H__