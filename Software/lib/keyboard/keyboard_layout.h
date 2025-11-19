/********************************** (C) COPYRIGHT *******************************
* File Name     : KEYBOARD_LAYOUT.H
* Author        : Paul Raspa (PR77)
* License       : MIT
* Version       : V1.0
* Date          : 2025/10/23
* Description   : CH554 Amiga Keyboard Emulation
*******************************************************************************/

#ifndef __CH554_KEYBOARD_LAYOUT_H__
#define __CH554_KEYBOARD_LAYOUT_H__

#include <stdint.h>
#include "ch554.h"
#include "usb_hid_keys.h"

// http://amigadev.elowar.com/read/ADCD_2.1/Devices_Manual_guide/node019D.html

#define AMIGA_ESC       0x45
#define AMIGA_F1        0x50
#define AMIGA_F2        0x51
#define AMIGA_F3        0x52
#define AMIGA_F4        0x53
#define AMIGA_F5        0x54
#define AMIGA_F6        0x55
#define AMIGA_F7        0x56
#define AMIGA_F8        0x57
#define AMIGA_F9        0x58
#define AMIGA_F10       0x59
#define AMIGA_CIRC      0x00
#define AMIGA_1         0x01
#define AMIGA_2         0x02
#define AMIGA_3         0x03
#define AMIGA_4         0x04
#define AMIGA_5         0x05
#define AMIGA_6         0x06
#define AMIGA_7         0x07
#define AMIGA_8         0x08
#define AMIGA_9         0x09
#define AMIGA_0         0x0A
#define AMIGA_MINUS     0x0B
#define AMIGA_EQUAL     0x0C
#define AMIGA_B_SLASH   0x0D
#define AMIGA_BSPC      0x41
#define AMIGA_DEL       0x46
#define AMIGA_HELP      0x5F

#define AMIGA_NP_RBO    0x5A
#define AMIGA_NP_RBC    0x5B

#define AMIGA_NP_SLASH  0x5C
#define AMIGA_NP_STAR   0x5D

#define AMIGA_TAB       0x42
#define AMIGA_Q         0x10
#define AMIGA_W         0x11
#define AMIGA_E         0x12
#define AMIGA_R         0x13
#define AMIGA_T         0x14
#define AMIGA_Y         0x15
#define AMIGA_U         0x16
#define AMIGA_I         0x17
#define AMIGA_O         0x18
#define AMIGA_P         0x19
#define AMIGA_SBO       0x1A
#define AMIGA_SBC       0x1B
#define AMIGA_ENTER     0x44

#define AMIGA_NP_7      0x3D
#define AMIGA_NP_8      0x3E
#define AMIGA_NP_9      0x3F
#define AMIGA_NP_MINUS  0x4A

#define AMIGA_L_CTRL    0x63
#define AMIGA_CAPS_LOCK 0x62
#define AMIGA_A         0x20
#define AMIGA_S         0x21
#define AMIGA_D         0x22
#define AMIGA_F         0x23
#define AMIGA_G         0x24
#define AMIGA_H         0x25
#define AMIGA_J         0x26
#define AMIGA_K         0x27
#define AMIGA_L         0x28
#define AMIGA_SEMI_C    0x29
#define AMIGA_APOST     0x2A
#define AMIGA_KEY_2B    0x2B

#define AMIGA_NP_4      0x2D
#define AMIGA_NP_5      0x2E
#define AMIGA_NP_6      0x2F
#define AMIGA_NP_PLUS   0x5E

#define AMIGA_L_SHIFT   0x60
#define AMIGA_KEY_30    0x30
#define AMIGA_Z         0x31
#define AMIGA_X         0x32
#define AMIGA_C         0x33
#define AMIGA_V         0x34
#define AMIGA_B         0x35
#define AMIGA_N         0x36
#define AMIGA_M         0x37
#define AMIGA_COMMA     0x38
#define AMIGA_F_STOP    0x39
#define AMIGA_SLASH     0x3A
#define AMIGA_R_SHIFT   0x61

#define AMIGA_NP_1      0x1D
#define AMIGA_NP_2      0x1E
#define AMIGA_NP_3      0x1F
#define AMIGA_NP_ENTER  0x43

#define AMIGA_L_R_ALT   0x64
#define AMIGA_L_AMIGA   0x66
#define AMIGA_SPACE     0x40
#define AMIGA_R_AMIGA   0x67

#define AMIGA_NP_0      0x0F
#define AMIGA_NP_F_STOP 0x3C

#define AMIGA_UP_ARW    0x4C
#define AMIGA_DN_ARW    0x4D
#define AMIGA_L_ARW     0x4F
#define AMIGA_R_ARW     0x4E

#define LOCALISE_DE

#ifdef LOCALISE_DE
#define KEYMAP "DE"
#define KEYMAP_REV 1
#define DE_KEYCODE_TO_AMIGA  \
    {KEY_ESC,           AMIGA_ESC      ,   0}, /* ESC          */  \
    {KEY_F1,            AMIGA_F1       ,   0}, /* F1           */  \
    {KEY_F2,            AMIGA_F2       ,   0}, /* F2           */  \
    {KEY_F3,            AMIGA_F3       ,   0}, /* F3           */  \
    {KEY_F4,            AMIGA_F4       ,   0}, /* F4           */  \
    {KEY_F5,            AMIGA_F5       ,   0}, /* F5           */  \
    {KEY_F6,            AMIGA_F6       ,   0}, /* F6           */  \
    {KEY_F7,            AMIGA_F7       ,   0}, /* F7           */  \
    {KEY_F8,            AMIGA_F8       ,   0}, /* F8           */  \
    {KEY_F9,            AMIGA_F9       ,   0}, /* F9           */  \
    {KEY_F10,           AMIGA_F1       ,   0}, /* F0           */  \
    {KEY_GRAVE,         AMIGA_CIRC     , '^'}, /* ^            */  \
    {KEY_1,             AMIGA_1        , '1'}, /* 1            */  \
    {KEY_2,             AMIGA_2        , '2'}, /* 2            */  \
    {KEY_3,             AMIGA_3        , '3'}, /* 3            */  \
    {KEY_4,             AMIGA_4        , '4'}, /* 4            */  \
    {KEY_5,             AMIGA_5        , '5'}, /* 5            */  \
    {KEY_6,             AMIGA_6        , '6'}, /* 6            */  \
    {KEY_7,             AMIGA_7        , '7'}, /* 7            */  \
    {KEY_8,             AMIGA_8        , '8'}, /* 8            */  \
    {KEY_9,             AMIGA_9        , '9'}, /* 9            */  \
    {KEY_0,             AMIGA_0        , '0'}, /* 0            */  \
    {KEY_MINUS,         AMIGA_MINUS    ,   0}, /* ß            */  \
    {KEY_EQUAL,         AMIGA_EQUAL    , '='}, /* ´            */  \
    {KEY_BACKSLASH,     AMIGA_B_SLASH  ,'\\'}, /* \            */  \
    {KEY_BACKSPACE,     AMIGA_BSPC     ,   0}, /* BACKSPACE    */  \
    {KEY_DELETE,        AMIGA_DEL      ,   0}, /* DELETE       */  \
    {KEY_HELP,          AMIGA_HELP     ,   0}, /* HELP         */  \
    {KEY_KPSLASH,       AMIGA_NP_SLASH , '/'}, /* /            */  \
    {KEY_KPSTAR,        AMIGA_NP_STAR  , '*'}, /* *            */  \
    {KEY_TAB,           AMIGA_TAB      , 'Q'}, /* TAB          */  \
    {KEY_Q,             AMIGA_Q        , 'Q'}, /* Q            */  \
    {KEY_W,             AMIGA_W        , 'W'}, /* W            */  \
    {KEY_E,             AMIGA_E        , 'E'}, /* E            */  \
    {KEY_R,             AMIGA_R        , 'R'}, /* R            */  \
    {KEY_T,             AMIGA_T        , 'T'}, /* T            */  \
    {KEY_Z,             AMIGA_Z        , 'Z'}, /* Z            */  \
    {KEY_U,             AMIGA_U        , 'U'}, /* U            */  \
    {KEY_I,             AMIGA_I        , 'I'}, /* I            */  \
    {KEY_O,             AMIGA_O        , 'O'}, /* O            */  \
    {KEY_P,             AMIGA_P        , 'P'}, /* P            */  \
    {KEY_LEFTBRACE,     AMIGA_SBO      ,   0}, /* Ü            */  \
    {KEY_RIGHTBRACE,    AMIGA_SBC      , '+'}, /* +            */  \
    {KEY_ENTER,         AMIGA_ENTER    ,   0}, /* ENTER        */  \
    {KEY_KP7,           AMIGA_NP_7     , '7'}, /* 7            */  \
    {KEY_KP8,           AMIGA_NP_8     , '8'}, /* 8            */  \
    {KEY_KP9,           AMIGA_NP_9     , '9'}, /* 9            */  \
    {KEY_KPMINUS,       AMIGA_NP_MINUS , '-'}, /* -            */  \
    {KEY_CAPSLOCK,      AMIGA_CAPS_LOCK,   0}, /* CAPS-LOCK    */  \
    {KEY_A,             AMIGA_A        , 'A'}, /* A            */  \
    {KEY_S,             AMIGA_S        , 'S'}, /* S            */  \
    {KEY_D,             AMIGA_D        , 'D'}, /* D            */  \
    {KEY_F,             AMIGA_F        , 'F'}, /* F            */  \
    {KEY_G,             AMIGA_G        , 'G'}, /* G            */  \
    {KEY_H,             AMIGA_H        , 'H'}, /* H            */  \
    {KEY_J,             AMIGA_J        , 'J'}, /* J            */  \
    {KEY_K,             AMIGA_K        , 'K'}, /* K            */  \
    {KEY_L,             AMIGA_L        , 'L'}, /* L            */  \
    {KEY_SEMICOLON,     AMIGA_SEMI_C   ,   0}, /* Ö            */  \
    {KEY_APOSTROPHE,    AMIGA_APOST    ,   0}, /* Ä            */  \
    {KEY_HASHTILDE,     AMIGA_KEY_2B   , '#'}, /* #            */  \
    {KEY_KP4,           AMIGA_NP_4     , '4'}, /* 4            */  \
    {KEY_KP5,           AMIGA_NP_5     , '5'}, /* 5            */  \
    {KEY_KP6,           AMIGA_NP_6     , '6'}, /* 6            */  \
    {KEY_KPPLUS,        AMIGA_NP_PLUS  , '+'}, /* +            */  \
    {KEY_102ND,         AMIGA_KEY_30   , '<'}, /* <            */  \
    {KEY_Y,             AMIGA_Y        , 'Y'}, /* Y            */  \
    {KEY_X,             AMIGA_X        , 'X'}, /* X            */  \
    {KEY_C,             AMIGA_C        , 'C'}, /* C            */  \
    {KEY_V,             AMIGA_V        , 'V'}, /* V            */  \
    {KEY_B,             AMIGA_B        , 'B'}, /* B            */  \
    {KEY_N,             AMIGA_N        , 'N'}, /* N            */  \
    {KEY_M,             AMIGA_M        , 'M'}, /* M            */  \
    {KEY_COMMA,         AMIGA_COMMA    , ','}, /* ,            */  \
    {KEY_DOT,           AMIGA_F_STOP   , '.'}, /* .            */  \
    {KEY_SLASH,         AMIGA_SLASH    , '-'}, /* -            */  \
    {KEY_KP1,           AMIGA_NP_1     , '1'}, /* 1            */  \
    {KEY_KP2,           AMIGA_NP_2     , '2'}, /* 2            */  \
    {KEY_KP3,           AMIGA_NP_3     , '3'}, /* 3            */  \
    {KEY_SPACE,         AMIGA_SPACE    ,   0}, /* SPACE        */  \
    {KEY_KPENTER,       AMIGA_NP_ENTER ,   0}, /* ENTER        */  \
    {KEY_KP0,           AMIGA_NP_0     , '0'}, /* 0            */  \
    {KEY_KPDOT,         AMIGA_NP_F_STOP, '.'}, /* .            */  \
    {KEY_UP,            AMIGA_UP_ARW   ,   0}, /* UP-ARROW     */  \
    {KEY_DOWN,          AMIGA_DN_ARW   ,   0}, /* DOWN-ARROW   */  \
    {KEY_LEFT,          AMIGA_L_ARW    ,   0}, /* LEFT-ARROW   */  \
    {KEY_RIGHT,         AMIGA_R_ARW    ,   0}  /* RIGHT-ARROW  */  

#define KEYCODE_TO_AMIGA_ENTERIES 87

#define DE_MODIFIER_TO_AMIGA  \
    {KEY_MOD_LCTRL,     AMIGA_L_CTRL   ,   0}, /* LEFT-CONTROL */  \
    {KEY_MOD_LSHIFT,    AMIGA_L_SHIFT  ,   0}, /* LEFT-SHIFT   */  \
    {KEY_MOD_LALT,      AMIGA_L_R_ALT  ,   0}, /* LEFT-ALT     */  \
    {KEY_MOD_RCTRL,     AMIGA_L_CTRL   ,   0}, /* RIGHT-CONTROL*/  \
    {KEY_MOD_RSHIFT,    AMIGA_R_SHIFT  ,   0}, /* RIGHT-SHIFT  */  \
    {KEY_MOD_RALT,      AMIGA_L_R_ALT  ,   0}, /* LEFT-ALT     */  \
    {KEY_MOD_LMETA,     AMIGA_L_AMIGA  ,   0}, /* LEFT-AMIGA   */  \
    {KEY_MOD_RMETA,     AMIGA_R_AMIGA  ,   0}  /* RIGHT-AMIGA  */  

#define MODIFIER_TO_AMIGA_ENTERIES 8

#endif // LOCALISE_DE

#endif // __CH554_KEYBOARD_LAYOUT_H__