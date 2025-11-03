/********************************** (C) COPYRIGHT *******************************
* File Name     : I2C.C
* Author        : Zhiyuan Wan
* License       : MIT
* Version       : V1.0
* Date          : 2018/03/17
* Description   : 8051 Software I2C
********************************************************************************
* Modified      : Paul Raspa (PR77)
* License       : MIT
* Version       : V2.0
* Date          : 2024/12/17
*******************************************************************************/

#include <stdint.h>
#include <compiler.h>
#include "ch554.h"
#include "i2c.h"
#include "i2c_cfg.h"

// =============================================================================
// I2C Delay
// https://github.com/wagiminator/CH552-USB-OLED
// =============================================================================
// (for 400kHz devices -> SCL low: min 1300us, SCL high: min 600us)
// The exact number of clock cycles required for jumps and thus also loops cannot 
// be precisely predicted. However, this can be accepted for this type of 
// application (synchronous data transmission).
#if FREQ_SYS == 24000000                                       // ~500kHz I2C clock
  #define I2C_DELAY_H() __asm__("sjmp .+2");++SAFE_MOD      // delay 6-7 clock cycles
  #define I2C_DELAY_L() __asm__("sjmp .+2");++SAFE_MOD      // delay 6-7 clock cycles
#elif FREQ_SYS == 16000000                                     // ~500kHz I2C clock
  #define I2C_DELAY_H() __asm__("sjmp .+2")                 // delay 4-5 clock cycles
  #define I2C_DELAY_L()                                     // no delay
#elif FREQ_SYS == 12000000                                     // ~360kHz I2C clock
  #define I2C_DELAY_H() __asm__("orl _SAFE_MOD, #0x00")     // delay 3 clock cycles
  #define I2C_DELAY_L()                                     // no delay
#elif FREQ_SYS == 6000000                                      // ~200kHz I2C clock
  #define I2C_DELAY_H() __asm__("nop")                      // delay 1 clock cycle
  #define I2C_DELAY_L()                                     // no delay
#else                                                       // ~100kHz I2C clock
  #define I2C_DELAY_H()                                     // no delay
  #define I2C_DELAY_L()                                     // no delay
#endif

SBIT(I2C_SDAT, I2C_PORT, I2C_SDAT_PIN);
SBIT(I2C_SCLK, I2C_PORT, I2C_SCLK_PIN);

void i2c_initialise(void) {

    I2C_MOD_OC = I2C_MOD_OC | (1 << I2C_SDAT_PIN);
    I2C_DIR_PU = I2C_DIR_PU | (1 << I2C_SDAT_PIN);

    I2C_MOD_OC = I2C_MOD_OC | (1 << I2C_SCLK_PIN);
    I2C_DIR_PU = I2C_DIR_PU | (1 << I2C_SCLK_PIN);

    /* GPIO port initial */
    I2C_SDAT = 1;
    I2C_SCLK = 1;
}

void i2c_startCommunication(uint8_t address) {

    I2C_SDAT = 0;
    I2C_DELAY_H();
    I2C_SCLK = 0;
    i2c_writeByte(address);
}

void i2c_restartCommunication(uint8_t address) {

    I2C_SDAT = 1;
    I2C_DELAY_H();
    I2C_SCLK = 1;
    i2c_startCommunication(address);
}

void i2c_stopCommunication(void) {

    I2C_SDAT = 0;
    I2C_DELAY_L();
    I2C_SCLK = 1;
    I2C_DELAY_H();
    I2C_SDAT = 1;
    I2C_DELAY_H();
}

void i2c_writeByte(uint8_t data) {

    for (uint8_t i = 0; i < I2C_DATA_LENGTH; i++) {
        I2C_SDAT = (data & 0x80);
        data <<= 1;

        I2C_SCLK = 1;
        I2C_DELAY_H();
        I2C_SCLK = 0;
        I2C_DELAY_L();
    }
    
    I2C_SDAT = 1;
    I2C_DELAY_H();
    I2C_SCLK = 1;
    I2C_DELAY_H();
    I2C_SCLK = 0;
    I2C_DELAY_L();
}

uint8_t i2c_readByte(bool sendAck) {

    uint8_t data = 0;

    I2C_SDAT = 1;

    for (uint8_t i = 0; i < I2C_DATA_LENGTH; i++) {
        data <<= 1;
        I2C_DELAY_H();
        I2C_SCLK = 1;

        if (I2C_SDAT) {
            data |= 0x01;
        }

        I2C_SCLK = 0;
        I2C_DELAY_L();
    }

    if (sendAck) {
        I2C_SDAT = 0;
    }

    I2C_DELAY_H();
    I2C_SCLK = 1;
    I2C_DELAY_H();
    I2C_SCLK = 0;
    I2C_DELAY_L();
    
    return (data);
}
