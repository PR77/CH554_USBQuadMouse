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

#define QUADRATURE_LOW          (uint8_t)0
#define QUADRATURE_HIGH         !QUADRATURE_LOW

#define QUADRATURE_FORWARD      (uint8_t)0
#define QUADRATURE_BACKWARD     !QUADRATURE_FORWARD

typedef struct {

    uint8_t channelIndex;
    uint8_t sequenceCounts;
    uint8_t sequenceIndex;
    uint8_t direction;
    uint8_t directionChange;

} quadratureOutput_s;

void quadrature_initialise(void);
void quadrature_updateCounts(uint8_t channelIndex, int8_t counts);
void quadrature_update(uint8_t channelIndex);
static void quadrature_channelUpdate(quadratureOutput_s * quadratureOutput);

#endif // __CH554_QUADRATURE_H__