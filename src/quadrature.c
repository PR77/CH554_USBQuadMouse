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

#include "heartbeat.h"

#define ENABLE_QUADRATURE_DEBUG

SBIT(QUADRATURE_XA, QUADRATURE_PORT, QUADRATURE_XA_PIN);
SBIT(QUADRATURE_XB, QUADRATURE_PORT, QUADRATURE_XB_PIN);
SBIT(QUADRATURE_YA, QUADRATURE_PORT, QUADRATURE_YA_PIN);
SBIT(QUADRATURE_YB, QUADRATURE_PORT, QUADRATURE_YB_PIN);

static const uint8_t QUADRATURE_SEQUENCE[QUADRATURE_CHANNELS][QUADRATURE_SEQUENCE_STEPS] = {
    {QUADRATURE_HIGH, QUADRATURE_HIGH, QUADRATURE_LOW, QUADRATURE_LOW},
    {QUADRATURE_HIGH, QUADRATURE_LOW, QUADRATURE_LOW, QUADRATURE_HIGH}
};

static quadratureOutput_s quadratureOutputs[QUADRATURE_CHANNELS];

void quadrature_timer2Interrupt(void) __interrupt(INT_NO_TMR2) {

    TF2 = 0;
    
    heartbeat_toggleState();

    //for (uint8_t i = 0; i < QUADRATURE_CHANNELS; i++) {
    //    quadrature_channelUpdate(&quadratureOutputs[i]);
    //}
}

void quadrature_initialise(encodingRate_e encodingRate) {

    // TODO...
    // NOT PUSH PULL --- NEEDS TO BE WEAK PULLUP, BUT CHECK AGAINST SCHEMATICS!!!

    #ifndef ENABLE_QUADRATURE_DEBUG
    QUADRATURE_MOD_OC = QUADRATURE_MOD_OC | (1 << QUADRATURE_XA_PIN);
    QUADRATURE_DIR_PU = QUADRATURE_DIR_PU | (1 << QUADRATURE_XA_PIN);

    QUADRATURE_MOD_OC = QUADRATURE_MOD_OC | (1 << QUADRATURE_XB_PIN);
    QUADRATURE_DIR_PU = QUADRATURE_DIR_PU | (1 << QUADRATURE_XB_PIN);

    QUADRATURE_MOD_OC = QUADRATURE_MOD_OC | (1 << QUADRATURE_YA_PIN);
    QUADRATURE_DIR_PU = QUADRATURE_DIR_PU | (1 << QUADRATURE_YA_PIN);

    QUADRATURE_MOD_OC = QUADRATURE_MOD_OC | (1 << QUADRATURE_YB_PIN);
    QUADRATURE_DIR_PU = QUADRATURE_DIR_PU | (1 << QUADRATURE_YB_PIN);
    #endif // ENABLE_QUADRATURE_DEBUG

    memset(&quadratureOutputs, 0, (sizeof(quadratureOutput_s) * QUADRATURE_CHANNELS));

    quadratureOutputs[QUADRATURE_X_CHANNEL].channelIndex = QUADRATURE_X_CHANNEL;
    quadratureOutputs[QUADRATURE_Y_CHANNEL].channelIndex = QUADRATURE_Y_CHANNEL;

#define TIMER_RELOAD_VALUE_MS(x)    (uint16_t)(0xFFFF - (uint32_t)((FREQ_SYS/12)/(x * 1000)))

    RCLK = 0;
    TCLK = 0;
    C_T2 = 0;
    CP_RL2 = 0;
    T2MOD = T2MOD & ~bT2_CLK;
    T2MOD = T2MOD & ~T2OE;
    T2COUNT = 0; //0xFFFF; //TIMER_RELOAD_VALUE_MS(1000);
    RCAP2 = 0x2000; //TIMER_RELOAD_VALUE_MS(1000);
    TR2 = 1;
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

    // DISABLE TIMER 2 INTERRUPTS

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

    // ENABLE TIMER 2 INTERRUPTS
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

    #ifdef ENABLE_QUADRATURE_DEBUG
    {
        serial_printString((QUADRATURE_SEQUENCE[QUADRATURE_CHANNELS_A_INDEX][currentSequenceIndex] == QUADRATURE_HIGH) ? "-" : "_");
        serial_printString("\x1b[1B");
        serial_printString("\x1b[1D");
        serial_printString((QUADRATURE_SEQUENCE[QUADRATURE_CHANNELS_B_INDEX][currentSequenceIndex] == QUADRATURE_HIGH) ? "-" : "_");
        serial_printString("\x1b[1A");
    }
    #else
    if (currentChannelIndex == QUADRATURE_X_CHANNEL) {
        QUADRATURE_XA = QUADRATURE_SEQUENCE[QUADRATURE_CHANNELS_A_INDEX][currentSequenceIndex];
        QUADRATURE_XB = QUADRATURE_SEQUENCE[QUADRATURE_CHANNELS_B_INDEX][currentSequenceIndex];
    } else if (currentChannelIndex == QUADRATURE_Y_CHANNEL) {
        QUADRATURE_YA = QUADRATURE_SEQUENCE[QUADRATURE_CHANNELS_A_INDEX][currentSequenceIndex];
        QUADRATURE_YB = QUADRATURE_SEQUENCE[QUADRATURE_CHANNELS_B_INDEX][currentSequenceIndex];
    } else {
        return;
    }
    #endif // ENABLE_QUADRATURE_DEBUG

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
