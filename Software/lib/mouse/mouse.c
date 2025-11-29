/********************************** (C) COPYRIGHT *******************************
* File Name     : MOUSE.C
* Author        : Paul Raspa (PR77)
* License       : MIT
* Version       : V1.0
* Date          : 2025/11/09
* Description   : CH554 Amiga Mouse Emulation - middle layer SWC
*******************************************************************************/

#include <stdint.h>
#include <compiler.h>
#include <string.h>
#include <stdlib.h>
#include "ch554.h"
#include "quadrature.h"
#include "buttons.h"
#include "mouse.h"

static __xdata devTypeMousePayload_s previousRawMouseReport;
static __xdata char buttonString[4];

void mouse_initialise(void) {
    buttons_initialise(invertButtons);
    quadrature_initialise(encodingRate4000Hz);

    memset(&previousRawMouseReport, 0, sizeof(devTypeMousePayload_s));
    strncpy(buttonString, "---", sizeof(buttonString));
}

void mouse_deinitialise(void) {
    quadrature_deinitialise();
}

uint8_t mouse_translateMovement(devTypeMousePayload_s *rawMouseReport) {

    int8_t movementAmount = 0;
    uint8_t movementUpdate = 0;
    
    // NULL pointer check - this function is called with the address of RxBuffer
    // and need to ensure this buffer is not at 0.
    if (NULL == rawMouseReport) {
        return (0);
    }

    if (rawMouseReport->xAxisMovement != previousRawMouseReport.xAxisMovement) {
        movementAmount = (rawMouseReport->xAxisMovement) / MOVEMENT_FILTER;
        previousRawMouseReport.xAxisMovement = movementAmount;
        quadrature_updateCounts(QUADRATURE_X_CHANNEL, previousRawMouseReport.xAxisMovement);
        movementUpdate = 1;
    }

    if (rawMouseReport->yAxisMovement != previousRawMouseReport.yAxisMovement) {
        movementAmount = (rawMouseReport->yAxisMovement) / MOVEMENT_FILTER;
        previousRawMouseReport.yAxisMovement = movementAmount;
        quadrature_updateCounts(QUADRATURE_Y_CHANNEL, previousRawMouseReport.yAxisMovement);
        movementUpdate = 1;
    }

    if (rawMouseReport->buttonState & MOUSE_BUTTON_LEFT) {
        buttons_leftButton(1);

    } else {
        buttons_leftButton(0);
    }

    if (rawMouseReport->buttonState & MOUSE_BUTTON_MIDDLE) {
        // ...
    } else {
        // ...
    }    

    if (rawMouseReport->buttonState & MOUSE_BUTTON_RIGHT) {
        buttons_rightButton(1);
    } else {
        buttons_rightButton(0);
    }    

    return (movementUpdate);
}

char * mouse_getButtonString(devTypeMousePayload_s *rawMouseReport) {

    // Button string is made up of 3 characters (plus terminator). For example,
    // with no buttons pressed "---", left "L--", middle "-M-" and right "--R".
    strncpy(buttonString, "---", sizeof(buttonString));

    // NULL pointer check
    if (NULL != rawMouseReport) {
        if (rawMouseReport->buttonState & MOUSE_BUTTON_LEFT) {
            buttonString[0] = 'L';
        }
        
        if (rawMouseReport->buttonState & MOUSE_BUTTON_MIDDLE) {
            buttonString[1] = 'M';
        }
        
        if (rawMouseReport->buttonState & MOUSE_BUTTON_RIGHT) {
            buttonString[2] = 'R';
        }
    }
    
    return (buttonString);
}

