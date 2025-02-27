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

__code uint8_t  SetupGetDevDescr[] = { USB_REQ_TYP_IN, USB_GET_DESCRIPTOR, 0x00, USB_DESCR_TYP_DEVICE, 0x00, 0x00, sizeof(USB_DEV_DESCR), 0x00 };
__code uint8_t  SetupGetCfgDescr[] = { USB_REQ_TYP_IN, USB_GET_DESCRIPTOR, 0x00, USB_DESCR_TYP_CONFIG, 0x00, 0x00, 0x04, 0x00 };
__code uint8_t  SetupSetUsbAddr[] = { USB_REQ_TYP_OUT, USB_SET_ADDRESS, USB_DEVICE_ADDR, 0x00, 0x00, 0x00, 0x00, 0x00 };
__code uint8_t  SetupSetUsbConfig[] = { USB_REQ_TYP_OUT, USB_SET_CONFIGURATION, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 };
__code uint8_t  SetupSetUsbInterface[] = { USB_REQ_RECIP_INTERF, USB_SET_INTERFACE, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 };
__code uint8_t  SetupClrEndpStall[] = { USB_REQ_TYP_OUT | USB_REQ_RECIP_ENDP, USB_CLEAR_FEATURE, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 };
__code uint8_t  SetupSetHIDIdle[]= { 0x21, HID_SET_IDLE, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 };
__code uint8_t  SetupGetHIDDevReport[] = { 0x81, USB_GET_DESCRIPTOR, 0x00, USB_DESCR_TYP_REPORT, 0x00, 0x00, 0xFF, 0x00 };
__code uint8_t  GetProtocol[] = { 0xC0, 0x33, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00 };

__xdata uint8_t  UsbDevEndp0Size;                                                      
__xdata __at (0x0000) uint8_t  RxBuffer[ MAX_PACKET_SIZE ];                            // IN, must even address
__xdata __at (0x0040) uint8_t  TxBuffer[ MAX_PACKET_SIZE ];                            // OUT, must even address

__code uint8_t  Sendlen[]= {0,4,16,35,39,53,67};
__code uint8_t  StringID[] = {
  'W','C','H',0x00,                                                                               // manufacturer name
  'W','C','H','U','A','R','T','D','e','m','o',0x00,                                               // model name
  0x57,0x43,0x48,0x20,0x41,0x63,0x63,0x65,0x73,0x73,0x6f,0x72,0x79,0x20,0x54,0x65,0x73,0x74,0x00, // description
  '1','.','0',0x00,                                                                               // version
  0x68,0x74,0x74,0x70,0x3a,0x2f,0x2f,0x77,0x63,0x68,0x2e,0x63,0x6e,0x00,                          // URI
  0x57,0x43,0x48,0x41,0x63,0x63,0x65,0x73,0x73,0x6f,0x72,0x79,0x31,0x00                           // serial number
};
__code uint8_t  SetStringID[]= {
  0x40,0x34,0x00,0x00,0x00,0x00,0x04,0x00,
  0x40,0x34,0x00,0x00,0x01,0x00,12,0x00,
  0x40,0x34,0x00,0x00,0x02,0x00,19,0x00,
  0x40,0x34,0x00,0x00,0x03,0x00,4,0x00,
  0x40,0x34,0x00,0x00,0x04,0x00,0x0E,0x00,
  0x40,0x34,0x00,0x00,0x05,0x00,0x0E,0x00
};

__code uint8_t  TouchAOAMode[] = { 0x40,0x35,0x00,0x00,0x00,0x00,0x00,0x00 };
__code uint8_t  XPrinterReport[] = { 0xA1, 0, 0x00, 0, 0x00, 0x00, 0xF1, 0x03 };
__code uint8_t  SetupGetHubDescr[] = { HUB_GET_HUB_DESCRIPTOR, HUB_GET_DESCRIPTOR, 0x00, USB_DESCR_TYP_HUB, 0x00, 0x00, sizeof( USB_HUB_DESCR ), 0x00 };

uint8_t Set_Port = 0;
__xdata _RootHubDev ThisUsbDev;                                                   //ROOT
__xdata _DevOnHubPort DevOnHubPort[HUB_MAX_PORTS];        // assumption: no more than 1 external HUB, each external HUB does not exceed HUB_MAX_PORTS ports (don’t care if there are more)
__bit FoundNewDev;

void main(void) {
    static uint32_t previousCountLEDFlash = 0, previousCountUSBTransfer = 0;
    uint8_t usbStatus = ERR_USB_UNKNOWN, i = 0, len = 0, endp = 0;
    uint16_t usbLocation = 0;

    system_disableGlobalInterupts();
    system_CfgFsys();

    P1_MOD_OC = P1_MOD_OC & ~(1 << LED_PIN);
    P1_DIR_PU = P1_DIR_PU |	(1 << LED_PIN);

    P1_MOD_OC = P1_MOD_OC | (1 << ENABLE_IAP_PIN);
    P1_DIR_PU = P1_DIR_PU |	(1 << ENABLE_IAP_PIN);

    tick_initialiseTimer0();
    tick_enableTimer0Interrupt();
    serial_initialiseSerial1(SERIAL_BAUD_RATE, 0, 0);
    i2c_initialise();
    ssd1306_initialise();
    ssd1306_clearScreen();

    InitUSB_Host();

    tick_startTimer0();
    system_enableGlobalInterupts();

    ssd1306_setCursor(0, 0);
    ssd1306_printString("MOUSE - QUAD RUNNING");
    serial_printString("\x1b[2J\x1b[HMOUSE - QUAD RUNNING\n\r");
    
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
                SelectHubPort(usbLocation);                                 // select to operate designated ROOT-HUB port, set current USB speed and USB address of operated device
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
                                ssd1306_printHexByte((uint8_t)(RxBuffer[i]));
                            }
                            ssd1306_printString(", ");

                            ssd1306_setCursor(12, 3);
                            if ((uint8_t)(RxBuffer[0]) & 0x01) {
                                ssd1306_printString("L");
                            } else ssd1306_printString("-");

                            ssd1306_setCursor(13, 3);
                            if ((uint8_t)(RxBuffer[0]) & 0x04) {
                                ssd1306_printString("M");
                            } else ssd1306_printString("-");
                            
                            ssd1306_setCursor(14, 3);
                            if ((uint8_t)(RxBuffer[0]) & 0x02) {
                                ssd1306_printString("R");
                            } else ssd1306_printString("-");
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