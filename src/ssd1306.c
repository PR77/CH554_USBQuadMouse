#include <stdint.h>
#include <compiler.h>
#include "ch554.h"
#include "i2c.h"
#include "ssd1306.h"

// References - 2020 by Stefan Wagner 
// Project Files (EasyEDA): https://easyeda.com/wagiminator
// Project Files (Github):  https://github.com/wagiminator
// License: http://creativecommons.org/licenses/by-sa/3.0/

// Select the screen size
#define SCREEN_128x32

#if defined(SCREEN_128x32) && defined(SCREEN_128x64)
#error "Please define either SCREEN_128x32 or SCREEN_128x64 but not both!"
#endif

#if !defined(SCREEN_128x32) && !defined(SCREEN_128x64)
#error "Please define one of SCREEN_128x32 or SCREEN_128x64!"
#endif

#if defined(SCREEN_128x32)
#define PAGES               4
#define MULTIPLE            1
#else
#define PAGES               8
#define MULTIPLE            2
#endif

#define OLED_FONT_WIDTH     5
#define OLED_FONT_HEIGHT    8

// -----------------------------------------------------------------------------
// OLED Implementation
// -----------------------------------------------------------------------------

// OLED init settings
const uint8_t OLED_INIT_CMD[] = {
    OLED_MULTIPLEX, ((PAGES * 8) - 1),  // set multiplex (HEIGHT-1): 31 for 128x32, 63 for 128x64
#if defined(SCREEN_128x32)  
    OLED_MEMORYMODE, 0x00,          // set page memory addressing mode
    OLED_PAGES, 0x00, (PAGES - 1),  // set min and max page
    OLED_COMPINS, 0x02,             // set COM pins hardware configuration to sequential
#endif  
    OLED_CHARGEPUMP, 0x14,          // enable charge pump
    OLED_DISPLAY_ON,                // switch on OLED
    OLED_XFLIP, OLED_YFLIP          // flip the screen
};

// Standard ASCII 5x8 font (adapted from Neven Boyanov and Stephen Denne)
const uint8_t OLED_FONT[] = {
    0x00, 0x00, 0x00, 0x00, 0x00,   //   0 
    0x00, 0x00, 0x2f, 0x00, 0x00,   // ! 1 
    0x00, 0x07, 0x00, 0x07, 0x00,   // " 2 
    0x14, 0x7f, 0x14, 0x7f, 0x14,   // # 3 
    0x24, 0x2a, 0x7f, 0x2a, 0x12,   // $ 4 
    0x62, 0x64, 0x08, 0x13, 0x23,   // % 5 
    0x36, 0x49, 0x55, 0x22, 0x50,   // & 6 
    0x00, 0x05, 0x03, 0x00, 0x00,   // ' 7 
    0x00, 0x1c, 0x22, 0x41, 0x00,   // ( 8 
    0x00, 0x41, 0x22, 0x1c, 0x00,   // ) 9 
    0x14, 0x08, 0x3E, 0x08, 0x14,   // * 10
    0x08, 0x08, 0x3E, 0x08, 0x08,   // + 11
    0x00, 0x00, 0xA0, 0x60, 0x00,   // , 12
    0x08, 0x08, 0x08, 0x08, 0x08,   // - 13
    0x00, 0x60, 0x60, 0x00, 0x00,   // . 14
    0x20, 0x10, 0x08, 0x04, 0x02,   // / 15
    0x3E, 0x51, 0x49, 0x45, 0x3E,   // 0 16
    0x00, 0x42, 0x7F, 0x40, 0x00,   // 1 17
    0x42, 0x61, 0x51, 0x49, 0x46,   // 2 18
    0x21, 0x41, 0x45, 0x4B, 0x31,   // 3 19
    0x18, 0x14, 0x12, 0x7F, 0x10,   // 4 20
    0x27, 0x45, 0x45, 0x45, 0x39,   // 5 21
    0x3C, 0x4A, 0x49, 0x49, 0x30,   // 6 22
    0x01, 0x71, 0x09, 0x05, 0x03,   // 7 23
    0x36, 0x49, 0x49, 0x49, 0x36,   // 8 24
    0x06, 0x49, 0x49, 0x29, 0x1E,   // 9 25
    0x00, 0x36, 0x36, 0x00, 0x00,   // : 26
    0x00, 0x56, 0x36, 0x00, 0x00,   // ; 27
    0x08, 0x14, 0x22, 0x41, 0x00,   // < 28
    0x14, 0x14, 0x14, 0x14, 0x14,   // = 29
    0x00, 0x41, 0x22, 0x14, 0x08,   // > 30
    0x02, 0x01, 0x51, 0x09, 0x06,   // ? 31
    0x32, 0x49, 0x59, 0x51, 0x3E,   // @ 32
    0x7C, 0x12, 0x11, 0x12, 0x7C,   // A 33
    0x7F, 0x49, 0x49, 0x49, 0x36,   // B 34
    0x3E, 0x41, 0x41, 0x41, 0x22,   // C 35
    0x7F, 0x41, 0x41, 0x22, 0x1C,   // D 36
    0x7F, 0x49, 0x49, 0x49, 0x41,   // E 37
    0x7F, 0x09, 0x09, 0x09, 0x01,   // F 38
    0x3E, 0x41, 0x49, 0x49, 0x7A,   // G 39
    0x7F, 0x08, 0x08, 0x08, 0x7F,   // H 40
    0x00, 0x41, 0x7F, 0x41, 0x00,   // I 41
    0x20, 0x40, 0x41, 0x3F, 0x01,   // J 42
    0x7F, 0x08, 0x14, 0x22, 0x41,   // K 43
    0x7F, 0x40, 0x40, 0x40, 0x40,   // L 44
    0x7F, 0x02, 0x0C, 0x02, 0x7F,   // M 45
    0x7F, 0x04, 0x08, 0x10, 0x7F,   // N 46
    0x3E, 0x41, 0x41, 0x41, 0x3E,   // O 47
    0x7F, 0x09, 0x09, 0x09, 0x06,   // P 48
    0x3E, 0x41, 0x51, 0x21, 0x5E,   // Q 49
    0x7F, 0x09, 0x19, 0x29, 0x46,   // R 50
    0x46, 0x49, 0x49, 0x49, 0x31,   // S 51
    0x01, 0x01, 0x7F, 0x01, 0x01,   // T 52
    0x3F, 0x40, 0x40, 0x40, 0x3F,   // U 53
    0x1F, 0x20, 0x40, 0x20, 0x1F,   // V 54
    0x3F, 0x40, 0x38, 0x40, 0x3F,   // W 55
    0x63, 0x14, 0x08, 0x14, 0x63,   // X 56
    0x07, 0x08, 0x70, 0x08, 0x07,   // Y 57
    0x61, 0x51, 0x49, 0x45, 0x43,   // Z 58
    0x00, 0x7F, 0x41, 0x41, 0x00,   // [ 59
    0x02, 0x04, 0x08, 0x10, 0x20,   // \ 60
    0x00, 0x41, 0x41, 0x7F, 0x00,   // ] 61
    0x04, 0x02, 0x01, 0x02, 0x04,   // ^ 62
    0x40, 0x40, 0x40, 0x40, 0x40    // _ 63
};

// HEX encoding table
const uint8_t hexTable[]={
    '0', '1', '2', '3',
    '4', '5', '6', '7',
    '8', '9', 'A', 'B',
    'C', 'D', 'E', 'F'
};

// OLED init function
void ssd1306_initialise(void) {
    i2c_startCommunication(OLED_ADDR);
    i2c_writeByte(OLED_CMD_MODE);
    for (uint8_t i = 0; i < sizeof(OLED_INIT_CMD); i++) {
        i2c_writeByte(OLED_INIT_CMD[i]);
    }
    i2c_stopCommunication();
}

// OLED set vertical shift
void ssd1306_verticalShift(uint8_t yPosition) {
    i2c_startCommunication(OLED_ADDR);
    i2c_writeByte(OLED_CMD_MODE);
    i2c_writeByte(OLED_OFFSET);
    i2c_writeByte(yPosition);
    i2c_stopCommunication();
}

// OLED print a character
void ssd1306_printCharacter(char character) {
    uint16_t offset = 0;

    if (character >= 32) {
        offset = character - 32;
    }

    offset += offset << 2;                  // -> offset = (ch - 32) * 5
    i2c_writeByte(0x00);                    // print spacing between characters
    for(uint8_t i = 0; i < OLED_FONT_WIDTH; i++) {
        i2c_writeByte(OLED_FONT[offset++]);
    }
}

// OLED print a string from program memory
void ssd1306_printString(char* string) {
    i2c_startCommunication(OLED_ADDR);
    i2c_writeByte(OLED_DAT_MODE);
    while (*string) {                       // repeat until string terminator
        ssd1306_printCharacter(*string++);  // print character on OLED
    }
    i2c_stopCommunication();
}

void ssd1306_printHexByte(uint8_t value) {
    i2c_startCommunication(OLED_ADDR);
    i2c_writeByte(OLED_DAT_MODE);
    ssd1306_printCharacter(hexTable[(value >> 4)]);
    ssd1306_printCharacter(hexTable[value & 0x0F]);
    i2c_stopCommunication();
}

void ssd1306_printHexWord(uint16_t value) {
    ssd1306_printHexByte(value >> 8);
    ssd1306_printHexByte(value & 0xFF);
}

// OLED set the cursor
void ssd1306_setCursor(uint8_t xPosition, uint8_t yPosition) {
    i2c_startCommunication(OLED_ADDR);
    i2c_writeByte(OLED_CMD_MODE);
    i2c_writeByte(OLED_PAGE | (yPosition & 0x07));          // set start page
    i2c_writeByte(OLED_COLUMN_LOW | (xPosition & 0x0F));    // set low nibble of start column
    i2c_writeByte(OLED_COLUMN_HIGH | (xPosition >> 4));     // set high nibble of start column
    i2c_stopCommunication();
}

// OLED clear screen
void ssd1306_clearScreen(void) {

    for (uint8_t i = 0; i < PAGES; i++) {       // clear screen line by line
        ssd1306_setCursor(0, i);
        i2c_startCommunication(OLED_ADDR);      // start transmission to OLED
        i2c_writeByte(OLED_DAT_MODE);           // set data mode
        
        for(uint8_t i = 128; i; i--) {
            i2c_writeByte(0x00);
        }
        i2c_stopCommunication();                // stop transmission
    }
}

void ssd1306_test(void) {
    // print all characters on 4 lines, 20 per line
    uint8_t c = 32;

    for (uint8_t l = 0; l < 4; l++) {
        ssd1306_setCursor(0, l * MULTIPLE);
        i2c_startCommunication(OLED_ADDR);
        i2c_writeByte(OLED_DAT_MODE);
        
        for (uint8_t p = 20; p; p--) {
            ssd1306_printCharacter(c++);
            if (c == 32 + 64) {
                break;
            }
        }
        i2c_stopCommunication();
    }
}