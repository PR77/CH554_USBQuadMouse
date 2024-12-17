/********************************** (C) COPYRIGHT *******************************
* File Name     : I2C.H
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

#ifndef __CH554_I2C_H__
#define __CH554_I2C_H__

#include <stdint.h>
#include "ch554.h"

typedef __bit bool;

void i2c_initialise(void);
void i2c_startCommunication(uint8_t address);
void i2c_restartCommunication(uint8_t address);
void i2c_stopCommunication(void);
void i2c_writeByte(uint8_t data);
uint8_t i2c_readByte(bool sendAck);

#endif // __CH554_I2C_H__