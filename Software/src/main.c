/********************************** (C) COPYRIGHT *******************************
* File Name     : MAIN.c
* Author        : Paul Raspa (PR77)
* License       : MIT
* Version       : V1.0
* Date          : 2024/12/17
* Description   : CH554 USB <> QUADRATURE Encoder for Amiga
*******************************************************************************/

#include <stdint.h>
#include <compiler.h>
#include "ch554.h"
#include "heartbeat.h"
#include "system.h"
#include "tick.h"
#include "quadrature.h"
#include "buttons.h"
#include "buzzer.h"
#include "i2c.h"
#include "ssd1306.h"
#include "usbhost.h"
#include "serial.h"
#include "bootloader.h"

#define CONSOLE_DEBUG_ENABLED

#define LED_FLASH_RATE_MS           300
#define USB_TRANSFER_RATE_MS        2
#define BUZZER_ACTIVE_DURATION_MS   2

__code uint8_t SetupGetDevDescr[] = { USB_REQ_TYP_IN, USB_GET_DESCRIPTOR, 0x00, USB_DESCR_TYP_DEVICE, 0x00, 0x00, sizeof(USB_DEV_DESCR), 0x00 };
__code uint8_t SetupGetCfgDescr[] = { USB_REQ_TYP_IN, USB_GET_DESCRIPTOR, 0x00, USB_DESCR_TYP_CONFIG, 0x00, 0x00, 0x04, 0x00 };
__code uint8_t SetupSetUsbAddr[] = { USB_REQ_TYP_OUT, USB_SET_ADDRESS, USB_DEVICE_ADDR, 0x00, 0x00, 0x00, 0x00, 0x00 };
__code uint8_t SetupSetUsbConfig[] = { USB_REQ_TYP_OUT, USB_SET_CONFIGURATION, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 };
__code uint8_t SetupSetUsbInterface[] = { USB_REQ_RECIP_INTERF, USB_SET_INTERFACE, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 };
__code uint8_t SetupClrEndpStall[] = { USB_REQ_TYP_OUT | USB_REQ_RECIP_ENDP, USB_CLEAR_FEATURE, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 };
__code uint8_t SetupSetHIDIdle[]= { 0x21, HID_SET_IDLE, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 };
__code uint8_t SetupGetHIDDevReport[] = { 0x81, USB_GET_DESCRIPTOR, 0x00, USB_DESCR_TYP_REPORT, 0x00, 0x00, 0xFF, 0x00 };
__code uint8_t SetupGetHubDescr[] = { HUB_GET_HUB_DESCRIPTOR, HUB_GET_DESCRIPTOR, 0x00, USB_DESCR_TYP_HUB, 0x00, 0x00, sizeof(USB_HUB_DESCR), 0x00 };

__xdata uint8_t UsbDevEndp0Size;                                                      
__xdata __at (0x0000) uint8_t RxBuffer[ MAX_PACKET_SIZE ];  // IN, must even address
__xdata __at (0x0040) uint8_t TxBuffer[ MAX_PACKET_SIZE ];  // OUT, must even address

uint8_t Set_Port = 0;
__xdata _RootHubDev ThisUsbDev;                             // ROOT
__xdata _DevOnHubPort DevOnHubPort[HUB_MAX_PORTS];          // Assumption: no more than 1 external HUB, each external HUB does not exceed HUB_MAX_PORTS ports (don’t care if there are more)
__bit FoundNewDev;

void main(void) {
    static uint32_t previousCountLEDFlash = 0, previousCountUSBTransfer = 0;
    uint8_t usbStatus = (uint8_t)ERR_USB_UNKNOWN, len = 0, endp = 0;
    uint16_t usbLocation = 0;

    // Setup low level system and bootloader
    system_disableGlobalInterupts();
    system_CfgFsys();
    bootloader_initialise();

    // Setup timer ticks
    tick_initialiseTimer0();
    tick_enableTimer0Interrupt();

    // Setup quadrature encoder
    quadrature_initialise(encodingRate12000Hz);

    // Setup heartbeat LED
    heartbeat_initialise();

    // Setup serial port (debug)
    serial_initialiseSerial1(SERIAL_BAUD_RATE, 0);

    // Setup i2c and SSD1306 OLED
    i2c_initialise();
    ssd1306_initialise();
    ssd1306_clearScreen();

    // Setup and initialise USB host
    InitUSB_Host();

    // Setup buttons and buzzer
    buttons_initialise(1);
    buzzer_initialise();

    tick_startTimer0();
    system_enableGlobalInterupts();

    // Application code starts here ...
    ssd1306_setCursor(0, 0);
    ssd1306_printString("MOUSE <> QUAD RUNNING");
    serial_printString("\x1b[2J\x1b[HMOUSE <> QUADRATURE ENCODER RUNNING\n\r");

    quadrature_startEncoding();
    buzzer_startBuzzer();
    system_mDelaymS(BUZZER_ACTIVE_DURATION_MS);
    buzzer_stopBuzzer();

    while (1) {

        /*
        TO DO: Better debug the RX handling. It seems _if_ the RX buffer is quickly
        filled, the timeout loop may not break out.
        */

#if defined(CONSOLE_DEBUG_ENABLED)
        if (serial_isDataAvailable() == RECEIVE_DATA_AVAIL)
            CONSOLE_PORT_PUTCHR((uint8_t)serial_getByteSerial1(0));
#endif // CONSOLE_DEBUG_ENABLED

        if ((tick_get1msTimerCount() - previousCountLEDFlash) > LED_FLASH_RATE_MS) {
            previousCountLEDFlash += LED_FLASH_RATE_MS;

            heartbeat_toggleState();
        }

        if (UIF_DETECT) {
            UIF_DETECT = 0;
            usbStatus = AnalyzeRootHub();
            if (ERR_USB_CONNECT == usbStatus) {
                FoundNewDev = 1;

                ssd1306_setCursor(0, 1);
                ssd1306_printString("CONNECTED USB DEVICE ");
                ssd1306_setCursor(0, 2);
                ssd1306_printString("                     ");
                ssd1306_setCursor(0, 3);
                ssd1306_printString("                     ");
            }

            if (ERR_USB_DISCON == usbStatus) {
                FoundNewDev = 0;

                ssd1306_setCursor(0, 1);
                ssd1306_printString("REMOVED USB DEVICE   ");
                ssd1306_setCursor(0, 2);
                ssd1306_printString("                     ");
                ssd1306_setCursor(0, 3);
                ssd1306_printString("                     ");
            }
        }

        if (FoundNewDev) {
            FoundNewDev = 0;

            usbStatus = EnumAllRootDevice();
            if (ERR_SUCCESS != usbStatus) {
                ssd1306_setCursor(0, 2);
                ssd1306_printString("ENUMERATION ERROR  ");
                ssd1306_printHexByte(usbStatus);
            }
        }

        if ((tick_get1msTimerCount() - previousCountUSBTransfer) > USB_TRANSFER_RATE_MS) {
            previousCountUSBTransfer += USB_TRANSFER_RATE_MS;

            usbLocation = SearchTypeDevice(DEV_TYPE_MOUSE);

            if (usbLocation != 0xFFFF) {                                     // found a mouse (how to deal with two mice?)
                ssd1306_setCursor(0, 2);
                ssd1306_printString("ENUMERATION LOC ");
                ssd1306_printHexWord(usbLocation);
            
                ssd1306_setCursor(0, 3);
                SelectHubPort(usbLocation);                                 // select to operate designated ROOT-HUB port, set current USB speed and USB address of operated device
                usbLocation = usbLocation >> 8;                             // CH554 has only one USB, only the lower eight bits are required

                if (usbLocation) {
                    endp = DevOnHubPort[usbLocation-1].GpVar[0];            // address of interrupt endpoint, bit 7 is used for synchronization flag bit
                } else {
                    endp = ThisUsbDev.GpVar[0];
                }

                if (endp & USB_ENDP_ADDR_MASK) {                             // endpoint valid
                    // CH554 transmit transaction, get data, NAK does not retry
                    usbStatus = USBHostTransact(USB_PID_IN << 4 | endp & 0x7F, endp & 0x80 ? bUH_R_TOG | bUH_T_TOG : 0, 0);
                    if (usbStatus == ERR_SUCCESS) {
                        endp ^= 0x80;                                       // flip sync flag

                        if (usbLocation) {
                            DevOnHubPort[usbLocation-1].GpVar[0] = endp;    // save synchronization flag
                        } else { 
                            ThisUsbDev.GpVar[0] = endp;
                        }
                
                        len = USB_RX_LEN;                                   // received data length
                        if (len) {
                            static int8_t previousXCounts = 0, previousYCounts = 0;

                            for (uint8_t i = 0; i < 4; i++) {
                                // Byte 0 - Buttons
                                // Byte 1 - X
                                // Byte 2 - Y
                                // Bzte 3 - Wheel
                                ssd1306_printHexByte((uint8_t)(RxBuffer[i]));
                            }
                            ssd1306_printString(", ");

                            ssd1306_setCursor(10, 3);
                            if ((uint8_t)(RxBuffer[0]) & 0x01) {
                                buttons_leftButton(1);
                                ssd1306_printString("L");
                            } else {
                                buttons_leftButton(0);
                                ssd1306_printString("-");
                            }

                            ssd1306_setCursor(11, 3);
                            if ((uint8_t)(RxBuffer[0]) & 0x04) {
                                ssd1306_printString("M");
                            } else ssd1306_printString("-");
                            
                            ssd1306_setCursor(12, 3);
                            if ((uint8_t)(RxBuffer[0]) & 0x02) {
                                buttons_rightButton(1);
                                ssd1306_printString("R, ");
                            } else {
                                buttons_rightButton(0);
                                ssd1306_printString("-, ");
                            }

                            if (previousXCounts != (int8_t)(RxBuffer[1])) {
                                previousXCounts = (int8_t)(RxBuffer[1]);
                                quadrature_updateCounts(QUADRATURE_X_CHANNEL, previousXCounts);
                            }

                            if (previousYCounts != (int8_t)(RxBuffer[2])) {
                                previousYCounts = (int8_t)(RxBuffer[2]);
                                quadrature_updateCounts(QUADRATURE_Y_CHANNEL, previousYCounts);
                            }

                            ssd1306_printHexByte(quadrature_getCounts(QUADRATURE_X_CHANNEL));
                            ssd1306_printString(", ");
                            ssd1306_printHexByte(quadrature_getCounts(QUADRATURE_Y_CHANNEL));
                        }
                    } else if (usbStatus != (USB_PID_NAK | ERR_USB_TRANSFER)) {
                        ssd1306_printString("MOUSE ERROR DETECTED ");
                    }
                } else {
                    ssd1306_printString("NO INTRPT END POINT  ");
                }
            }
        }

        if (bootloader_checkBootloaderRequest()) {
            buzzer_stopBuzzer();
            ssd1306_clearScreen();
            ssd1306_setCursor(0, 0);
            ssd1306_printString("---- BOOT LOADER ----");
            bootloader_enter();
        }
    }
} 