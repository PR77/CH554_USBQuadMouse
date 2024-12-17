// Blink an LED connected to pin 1.4 via timer and some other stuff

#include <stdint.h>
#include <stdio.h>
#include <compiler.h>
#include "ch554.h"
#include "system.h"
#include "tick.h"
#include "i2c.h"
#include "ssd1306.h"
#include "usbhost.h"
#include "serial.h"
#include "bootloader.h"

#define LED_FLASH_RATE_MS               300
#define USB_TRANSFER_RATE_MS            8

#define ENABLE_IAP_PIN                  0
#define LED_PIN                         4

SBIT(EnableIAP, 0x90, ENABLE_IAP_PIN);
SBIT(LED, 0x90, LED_PIN);

void main(void) {
    static uint32_t previousCountLEDFlash = 0, previousCountUSBTransfer = 0;
    uint8_t usbStatus = ERR_USB_UNKNOWN, i = 0, len = 0, endp = 0;
    uint16_t usbLocation = 0;

    system_CfgFsys();

    P1_MOD_OC = P1_MOD_OC & ~(1 << LED_PIN);
    P1_DIR_PU = P1_DIR_PU |	(1 << LED_PIN);

    P1_MOD_OC = P1_MOD_OC | (1 << ENABLE_IAP_PIN);
    P1_DIR_PU = P1_DIR_PU |	(1 << ENABLE_IAP_PIN);

    tick_initialiseTimer0();
    serial_initialiseSerial1(SERIAL_BAUD_RATE, 0, 0);
    i2c_initialise();
    ssd1306_initialise();
    ssd1306_clearScreen();
    tick_enableTimer0Interrupt();   // enable timer0 interrupt

    /*CLEAN UP THIS*/
    PIN_FUNC = PIN_FUNC | (bUSB_IO_EN);
    InitUSB_Host();
    memset(&ThisUsbDev, 0, sizeof(_RootHubDev));
    FoundNewDev = 0;
    /**/

    EA = 1;                         // global interrupt enable
    tick_startTimer0();

    ssd1306_setCursor(0, 0);
    ssd1306_printString("MOUSE - QUAD RUNNING");
    
    while (1) {

        if ((tick_get1msTimerCount() - previousCountLEDFlash) > LED_FLASH_RATE_MS) {
            previousCountLEDFlash += LED_FLASH_RATE_MS;

            LED = !LED;
        }

        if (UIF_DETECT) {
            UIF_DETECT = 0;
            usbStatus = AnalyzeRootHub();
            if (ERR_USB_CONNECT == usbStatus) {
                FoundNewDev = 1;

                ssd1306_setCursor(0, 1);
                ssd1306_printString("CONNECTED USB DEVICE");
            }

            if (ERR_USB_DISCON == usbStatus) {
                FoundNewDev = 0;

                ssd1306_setCursor(0, 1);
                ssd1306_printString("REMOVED USB DEVICE  ");
                ssd1306_setCursor(0, 2);
                ssd1306_printString("                    ");
                ssd1306_setCursor(0, 3);
                ssd1306_printString("                    ");
            }
        }

        if (FoundNewDev) {
            FoundNewDev = 0;

            usbStatus = EnumAllRootDevice();
            if (ERR_SUCCESS != usbStatus) {
                ssd1306_setCursor(0, 2);
                ssd1306_printString("ENUMERATION ERROR ");
                ssd1306_printHexByte(usbStatus);
            }
        }

        if ((tick_get1msTimerCount() - previousCountUSBTransfer) > USB_TRANSFER_RATE_MS) {
            previousCountUSBTransfer += USB_TRANSFER_RATE_MS;

            usbLocation = SearchTypeDevice(DEV_TYPE_MOUSE);

            if(usbLocation != 0xFFFF) {                                   // found a mouse (how to deal with two mice?)
                ssd1306_setCursor(0, 2);
                ssd1306_printString("ENUMERATION LOC ");
                ssd1306_printHexWord(usbLocation);
            
                ssd1306_setCursor(0, 3);
                SelectHubPort();                                 // select to operate designated ROOT-HUB port, set current USB speed and USB address of operated device
                usbLocation = usbLocation >> 8;                                 // CH554 has only one USB, only the lower eight bits are required
                endp = usbLocation ? DevOnHubPort[usbLocation-1].GpVar[0] : ThisUsbDev.GpVar[0];  // address of interrupt endpoint, bit 7 is used for synchronization flag bit
                
                if(endp & USB_ENDP_ADDR_MASK) {                     // endpoint valid
                    usbStatus = USBHostTransact(USB_PID_IN << 4 | endp & 0x7F, endp & 0x80 ? bUH_R_TOG | bUH_T_TOG : 0, 0); // CH554 transmit transaction, get data, NAK does not retry
                    if(usbStatus == ERR_SUCCESS) {
                        endp ^= 0x80;                                   // flip sync flag

                        if(usbLocation) {
                            DevOnHubPort[usbLocation-1].GpVar[0] = endp;    // save synchronization flag
                        } else { 
                            ThisUsbDev.GpVar[0] = endp;
                        }
                
                        len = USB_RX_LEN;                               // received data length
                        if(len) {
                            for(i=0; i<len; i++) {
                                ssd1306_printHexWord((uint16_t)(RxBuffer[i]));
                            }
                        }
                    } else if (usbStatus != (USB_PID_NAK | ERR_USB_TRANSFER)) {
                        ssd1306_printString("MOUSE ERROR         ");
                    }
                } else {
                    ssd1306_printString("NO INT END POINT    ");
                }
                
                SetUsbSpeed(1);                                     // default is full speed
            }
        }

        if (EnableIAP == 0) {
            ssd1306_clearScreen();
            ssd1306_setCursor(0, 0);
            ssd1306_printString("---- BOOTLOADER ----");
            bootloader();
        }
    }
}