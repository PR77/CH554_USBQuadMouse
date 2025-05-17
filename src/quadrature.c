/********************************** (C) COPYRIGHT *******************************
* File Name     : QUADRATURE.c
* Author        : Paul Raspa (PR77)
* License       : MIT
* Version       : V1.0
* Date          : 2025/02/28
* Description   : QUADRATURE ENCODER
*******************************************************************************/

#include <stdint.h>
#include <compiler.h>
#include <string.h>
#include <stdlib.h>
#include "ch554.h"
#include "serial.h"
#include "quadrature.h"
#include "quadrature_cfg.h"

SBIT(QUADRATURE_XA, QUADRATURE_XA_PORT, QUADRATURE_XA_PIN);
SBIT(QUADRATURE_XB, QUADRATURE_XB_PORT, QUADRATURE_XB_PIN);
SBIT(QUADRATURE_YA, QUADRATURE_YA_PORT, QUADRATURE_YA_PIN);
SBIT(QUADRATURE_YB, QUADRATURE_YB_PORT, QUADRATURE_YB_PIN);

static const uint8_t QUADRATURE_SEQUENCE[QUADRATURE_CHANNELS][QUADRATURE_SEQUENCE_STEPS] = {
    {QUADRATURE_HIGH, QUADRATURE_HIGH, QUADRATURE_LOW, QUADRATURE_LOW},
    {QUADRATURE_HIGH, QUADRATURE_LOW, QUADRATURE_LOW, QUADRATURE_HIGH}
};

static quadratureOutput_s quadratureOutputs[QUADRATURE_CHANNELS];

void quadrature_timer2Interrupt(void) __interrupt(INT_NO_TMR2) {

    TF2 = 0;
    
    for (uint8_t i = 0; i < QUADRATURE_CHANNELS; i++) {
        quadrature_channelUpdate(&quadratureOutputs[i]);
    }
}

void quadrature_initialise(encodingRate_e encodingRate) {

    QUADRATURE_XA_MOD_OC = QUADRATURE_XA_MOD_OC | (1 << QUADRATURE_XA_PIN);
    QUADRATURE_XA_DIR_PU = QUADRATURE_XA_DIR_PU | (1 << QUADRATURE_XA_PIN);

    QUADRATURE_XB_MOD_OC = QUADRATURE_XB_MOD_OC | (1 << QUADRATURE_XB_PIN);
    QUADRATURE_XB_DIR_PU = QUADRATURE_XB_DIR_PU | (1 << QUADRATURE_XB_PIN);

    QUADRATURE_YA_MOD_OC = QUADRATURE_YA_MOD_OC | (1 << QUADRATURE_YA_PIN);
    QUADRATURE_YA_DIR_PU = QUADRATURE_YA_DIR_PU | (1 << QUADRATURE_YA_PIN);

    QUADRATURE_YB_MOD_OC = QUADRATURE_YB_MOD_OC | (1 << QUADRATURE_YB_PIN);
    QUADRATURE_YB_DIR_PU = QUADRATURE_YB_DIR_PU | (1 << QUADRATURE_YB_PIN);

    memset(&quadratureOutputs, 0, (sizeof(quadratureOutput_s) * QUADRATURE_CHANNELS));

    quadratureOutputs[QUADRATURE_X_CHANNEL].channelIndex = QUADRATURE_X_CHANNEL;
    quadratureOutputs[QUADRATURE_Y_CHANNEL].channelIndex = QUADRATURE_Y_CHANNEL;

    // 12.4.2 Timer2 
    // Timer2 16-bit reload timer/counter mode:
    
    // (1). Set the RCLK bit and the TCLK bit in T2CON to 0, to select non-UART baud rate generator mode.
    RCLK = 0;
    TCLK = 0;
    
    // (2). Set the C_T2 bit in T2CON to 0, to select the internal clock, and turn to step (3). Alternatively, set to 1 
    // to select the falling edge on T2 pin as the count clock and skip step (3).
    C_T2 = 0;
    
    // (3). Set T2MOD to select the Timer internal clock frequency. If bT2_CLK is 0, Timer2 clock is Fsys/12. If 
    // bT2_CLK is 1, either Fsys/4 or Fsys is selected as the clock by bTMR_CLK=0 or 1.
    T2MOD = T2MOD & ~bT2_CLK;
    T2MOD = T2MOD & ~T2OE;
    
    // (4). Set the CP_RL2 bit in T2CON to 0, to select 16-bit reload timer/counter function of Timer2. 
    CP_RL2 = 0;
    
    // (5). Set RCAP2L and RCAP2H as the reload value of timer after overflow. Set TL2 and TH2 as the initial 
    // value of the timer (the same as RCAP2L and RCAP2H generally). Set TR2 to 1 to turn on Timer2.
    T2COUNT = TIMER_RELOAD_VALUE_HZ(encodingRate);
    RCAP2 = TIMER_RELOAD_VALUE_HZ(encodingRate);
    TR2 = 1;
    
    // (6). Inquire TF2 or Timer2 interrupt to obtain the current timer/counter state.
}

inline void quadrature_startEncoding(void) {

    if (ET2 == 0) {
        // Only if already disabled, then enable timer 2 interrupt.
        ET2 = 1;
    }
}

inline void quadrature_stopEncoding(void) {

    if (ET2 == 1) {
        // Only if already enabled, then disable timer 2 interrupt.
        ET2 = 0;
    }
}

void quadrature_updateCounts(uint8_t channelIndex, int8_t counts) {

    if (channelIndex >= QUADRATURE_CHANNELS) {
        return;
    }

    quadrature_stopEncoding();

    if ((counts > 0) && (counts < INT8_MAX)) {
        if (quadratureOutputs[channelIndex].direction == QUADRATURE_BACKWARD) {
            quadratureOutputs[channelIndex].direction = QUADRATURE_FORWARD;
            quadratureOutputs[channelIndex].directionChange = 1;
        }
    }

    if ((counts > INT8_MIN) && (counts < 0)) {
        if (quadratureOutputs[channelIndex].direction == QUADRATURE_FORWARD) {
            quadratureOutputs[channelIndex].direction = QUADRATURE_BACKWARD;
            quadratureOutputs[channelIndex].directionChange = 1;
        }
    }

    if (quadratureOutputs[channelIndex].directionChange == 1) {
        quadratureOutputs[channelIndex].directionChange = 0;
        quadratureOutputs[channelIndex].sequenceCounts = 0;
        return;    
    }

    quadratureOutputs[channelIndex].sequenceCounts += abs(counts);

    quadrature_startEncoding();
}

static void quadrature_channelUpdate(quadratureOutput_s * quadratureOutput) {

    uint8_t currentSequenceIndex = 0, currentChannelIndex = 0;

    // NULL pointer check
    if (!quadratureOutput) {
        return;
    }

    currentChannelIndex = quadratureOutput->channelIndex;

    // Channel index check
    if (currentChannelIndex >= QUADRATURE_CHANNELS) {
        return;
    }

    currentSequenceIndex = quadratureOutput->sequenceIndex;

    // Sequence index check
    if (currentSequenceIndex >= QUADRATURE_SEQUENCE_STEPS) {
        return;
    }

    // Sequence counts check
    if (quadratureOutput->sequenceCounts) {
        quadratureOutput->sequenceCounts--;
    } else {
        return;
    }

    if (currentChannelIndex == QUADRATURE_X_CHANNEL) {
        QUADRATURE_XA = QUADRATURE_SEQUENCE[QUADRATURE_CHANNELS_A_INDEX][currentSequenceIndex];
        QUADRATURE_XB = QUADRATURE_SEQUENCE[QUADRATURE_CHANNELS_B_INDEX][currentSequenceIndex];
    } else if (currentChannelIndex == QUADRATURE_Y_CHANNEL) {
        QUADRATURE_YA = QUADRATURE_SEQUENCE[QUADRATURE_CHANNELS_A_INDEX][currentSequenceIndex];
        QUADRATURE_YB = QUADRATURE_SEQUENCE[QUADRATURE_CHANNELS_B_INDEX][currentSequenceIndex];
    } else {
        return;
    }

    if (quadratureOutputs->direction == QUADRATURE_FORWARD) {
        if ((currentSequenceIndex + 1) >= QUADRATURE_SEQUENCE_STEPS) {
            currentSequenceIndex = 0;
        } else {
            currentSequenceIndex++;
        }
    } else if (quadratureOutputs->direction == QUADRATURE_BACKWARD) {
        if (currentSequenceIndex == 0) {
            currentSequenceIndex = (QUADRATURE_SEQUENCE_STEPS - 1);
        } else {
            currentSequenceIndex--;    
        }
    } else {
        return;
    }

    quadratureOutput->sequenceIndex = currentSequenceIndex;
}
