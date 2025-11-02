/********************************** (C) COPYRIGHT *******************************
* File Name     : KEYBOARD_CFG.H
* Author        : Paul Raspa (PR77)
* License       : MIT
* Version       : V1.0
* Date          : 2025/10/23
* Description   : CH554 Amiga Keyboard Emulation
*******************************************************************************/

#ifndef __CH554_KEYBOARD_CFG_H__
#define __CH554_KEYBOARD_CFG_H__

#include <stdint.h>
#include "ch554.h"

#ifndef KBCLOCK_PORT
#define KBCLOCK_PORT        0xB0
#endif

#ifndef KBCLOCK_MOD_OC
#define KBCLOCK_MOD_OC      P3_MOD_OC
#endif

#ifndef KBCLOCK_DIR_PU
#define KBCLOCK_DIR_PU      P3_DIR_PU
#endif

#ifndef KBCLOCK_PIN
#define KBCLOCK_PIN         2
#endif

#ifndef KBDATA_PORT
#define KBDATA_PORT         0x90
#endif

#ifndef KBDATA_MOD_OC
#define KBDATA_MOD_OC       P1_MOD_OC
#endif

#ifndef KBDATA_DIR_PU
#define KBDATA_DIR_PU       P1_DIR_PU
#endif

#ifndef KBDATA_PIN
#define KBDATA_PIN          4
#endif

#ifndef KBRESET_PORT
#define KBRESET_PORT        0x90
#endif

#ifndef KBRESET_MOD_OC
#define KBRESET_MOD_OC      P1_MOD_OC
#endif

#ifndef KBRESET_DIR_PU
#define KBRESET_DIR_PU      P1_DIR_PU
#endif

#ifndef KBRESET_PIN
#define KBRESET_PIN         0
#endif

#ifndef KBSTATUS_PORT
#define KBSTATUS_PORT       0x90
#endif

#ifndef KBSTATUS_MOD_OC
#define KBSTATUS_MOD_OC     P1_MOD_OC
#endif

#ifndef KBSTATUS_DIR_PU
#define KBSTATUS_DIR_PU     P1_DIR_PU
#endif

#ifndef KBSTATUS_PIN
#define KBSTATUS_PIN        1
#endif

#ifndef KBINUSE_PORT
#define KBINUSE_PORT        0x90
#endif

#ifndef KBINUSE_MOD_OC
#define KBINUSE_MOD_OC      P1_MOD_OC
#endif

#ifndef KBINUSE_DIR_PU
#define KBINUSE_DIR_PU      P1_DIR_PU
#endif

#ifndef KBINUSE_PIN
#define KBINUSE_PIN         3
#endif

#endif // __CH554_KEYBOARD_CFG_H__