#ifndef __CH554_SYSTEM_H__
#define __CH554_SYSTEM_H__

#include <stdint.h>
#include "ch554.h"

void system_CfgFsys(void);
void mDelayuS(uint16_t n);
void mDelaymS(uint16_t n);
inline void system_WDTModeSelect(uint8_t mode);
inline void system_WDTFeed(uint8_t timerTime);

#endif // __CH554_SYSTEM_H__
