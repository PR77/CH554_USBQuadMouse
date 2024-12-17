;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (MINGW32)
;--------------------------------------------------------
	.module usbhost
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _mDelaymS
	.globl _mDelayuS
	.globl _memset
	.globl _UIF_BUS_RST
	.globl _UIF_DETECT
	.globl _UIF_TRANSFER
	.globl _UIF_SUSPEND
	.globl _UIF_HST_SOF
	.globl _UIF_FIFO_OV
	.globl _U_SIE_FREE
	.globl _U_TOG_OK
	.globl _U_IS_NAK
	.globl _ADC_CHAN0
	.globl _ADC_CHAN1
	.globl _CMP_CHAN
	.globl _ADC_START
	.globl _ADC_IF
	.globl _CMP_IF
	.globl _CMPO
	.globl _U1RI
	.globl _U1TI
	.globl _U1RB8
	.globl _U1TB8
	.globl _U1REN
	.globl _U1SMOD
	.globl _U1SM0
	.globl _S0_R_FIFO
	.globl _S0_T_FIFO
	.globl _S0_FREE
	.globl _S0_IF_BYTE
	.globl _S0_IF_FIRST
	.globl _S0_IF_OV
	.globl _S0_FST_ACT
	.globl _CP_RL2
	.globl _C_T2
	.globl _TR2
	.globl _EXEN2
	.globl _TCLK
	.globl _RCLK
	.globl _EXF2
	.globl _CAP1F
	.globl _TF2
	.globl _RI
	.globl _TI
	.globl _RB8
	.globl _TB8
	.globl _REN
	.globl _SM2
	.globl _SM1
	.globl _SM0
	.globl _IT0
	.globl _IE0
	.globl _IT1
	.globl _IE1
	.globl _TR0
	.globl _TF0
	.globl _TR1
	.globl _TF1
	.globl _RXD
	.globl _PWM1_
	.globl _TXD
	.globl _PWM2_
	.globl _AIN3
	.globl _VBUS1
	.globl _INT0
	.globl _TXD1_
	.globl _INT1
	.globl _T0
	.globl _RXD1_
	.globl _PWM2
	.globl _T1
	.globl _UDP
	.globl _UDM
	.globl _TIN0
	.globl _CAP1
	.globl _T2
	.globl _AIN0
	.globl _VBUS2
	.globl _TIN1
	.globl _CAP2
	.globl _T2EX
	.globl _RXD_
	.globl _TXD_
	.globl _AIN1
	.globl _UCC1
	.globl _TIN2
	.globl _SCS
	.globl _CAP1_
	.globl _T2_
	.globl _AIN2
	.globl _UCC2
	.globl _TIN3
	.globl _PWM1
	.globl _MOSI
	.globl _TIN4
	.globl _RXD1
	.globl _MISO
	.globl _TIN5
	.globl _TXD1
	.globl _SCK
	.globl _IE_SPI0
	.globl _IE_TKEY
	.globl _IE_USB
	.globl _IE_ADC
	.globl _IE_UART1
	.globl _IE_PWMX
	.globl _IE_GPIO
	.globl _IE_WDOG
	.globl _PX0
	.globl _PT0
	.globl _PX1
	.globl _PT1
	.globl _PS
	.globl _PT2
	.globl _PL_FLAG
	.globl _PH_FLAG
	.globl _EX0
	.globl _ET0
	.globl _EX1
	.globl _ET1
	.globl _ES
	.globl _ET2
	.globl _E_DIS
	.globl _EA
	.globl _P
	.globl _F1
	.globl _OV
	.globl _RS0
	.globl _RS1
	.globl _F0
	.globl _AC
	.globl _CY
	.globl _UEP1_DMA_H
	.globl _UEP1_DMA_L
	.globl _UEP1_DMA
	.globl _UEP0_DMA_H
	.globl _UEP0_DMA_L
	.globl _UEP0_DMA
	.globl _UEP2_3_MOD
	.globl _UEP4_1_MOD
	.globl _UEP3_DMA_H
	.globl _UEP3_DMA_L
	.globl _UEP3_DMA
	.globl _UEP2_DMA_H
	.globl _UEP2_DMA_L
	.globl _UEP2_DMA
	.globl _USB_DEV_AD
	.globl _USB_CTRL
	.globl _USB_INT_EN
	.globl _UEP4_T_LEN
	.globl _UEP4_CTRL
	.globl _UEP0_T_LEN
	.globl _UEP0_CTRL
	.globl _USB_RX_LEN
	.globl _USB_MIS_ST
	.globl _USB_INT_ST
	.globl _USB_INT_FG
	.globl _UEP3_T_LEN
	.globl _UEP3_CTRL
	.globl _UEP2_T_LEN
	.globl _UEP2_CTRL
	.globl _UEP1_T_LEN
	.globl _UEP1_CTRL
	.globl _UDEV_CTRL
	.globl _USB_C_CTRL
	.globl _TKEY_DATH
	.globl _TKEY_DATL
	.globl _TKEY_DAT
	.globl _TKEY_CTRL
	.globl _ADC_DATA
	.globl _ADC_CFG
	.globl _ADC_CTRL
	.globl _SBAUD1
	.globl _SBUF1
	.globl _SCON1
	.globl _SPI0_SETUP
	.globl _SPI0_CK_SE
	.globl _SPI0_CTRL
	.globl _SPI0_DATA
	.globl _SPI0_STAT
	.globl _PWM_CK_SE
	.globl _PWM_CTRL
	.globl _PWM_DATA1
	.globl _PWM_DATA2
	.globl _T2CAP1H
	.globl _T2CAP1L
	.globl _T2CAP1
	.globl _TH2
	.globl _TL2
	.globl _T2COUNT
	.globl _RCAP2H
	.globl _RCAP2L
	.globl _RCAP2
	.globl _T2MOD
	.globl _T2CON
	.globl _SBUF
	.globl _SCON
	.globl _TH1
	.globl _TH0
	.globl _TL1
	.globl _TL0
	.globl _TMOD
	.globl _TCON
	.globl _XBUS_AUX
	.globl _PIN_FUNC
	.globl _P3_DIR_PU
	.globl _P3_MOD_OC
	.globl _P3
	.globl _P2
	.globl _P1_DIR_PU
	.globl _P1_MOD_OC
	.globl _P1
	.globl _ROM_CTRL
	.globl _ROM_DATA_H
	.globl _ROM_DATA_L
	.globl _ROM_DATA
	.globl _ROM_ADDR_H
	.globl _ROM_ADDR_L
	.globl _ROM_ADDR
	.globl _GPIO_IE
	.globl _IP_EX
	.globl _IE_EX
	.globl _IP
	.globl _IE
	.globl _WDOG_COUNT
	.globl _RESET_KEEP
	.globl _WAKE_CTRL
	.globl _CLOCK_CFG
	.globl _PCON
	.globl _GLOBAL_CFG
	.globl _SAFE_MOD
	.globl _DPH
	.globl _DPL
	.globl _SP
	.globl _B
	.globl _ACC
	.globl _PSW
	.globl _HostCtrlTransfer_PARM_2
	.globl _USBHostTransact_PARM_3
	.globl _USBHostTransact_PARM_2
	.globl _DisableRootHubPort
	.globl _AnalyzeRootHub
	.globl _SetHostUsbAddr
	.globl _SetUsbSpeed
	.globl _ResetRootHubPort
	.globl _EnableRootHubPort
	.globl _SelectHubPort
	.globl _WaitUSB_Interrupt
	.globl _USBHostTransact
	.globl _HostCtrlTransfer
	.globl _CopySetupReqPkg
	.globl _CtrlGetDeviceDescr
	.globl _CtrlGetConfigDescr
	.globl _CtrlSetUsbAddress
	.globl _CtrlSetUsbConfig
	.globl _CtrlClearEndpStall
	.globl _CtrlSetUsbInterface
	.globl _CtrlGetHIDDeviceReport
	.globl _AnalyzeHidIntEndp
	.globl _AnalyzeBulkEndp
	.globl _InitRootDevice
	.globl _EnumAllRootDevice
	.globl _SearchTypeDevice
	.globl _SetBootProto
	.globl _InitUSB_Host
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_PSW	=	0x00d0
_ACC	=	0x00e0
_B	=	0x00f0
_SP	=	0x0081
_DPL	=	0x0082
_DPH	=	0x0083
_SAFE_MOD	=	0x00a1
_GLOBAL_CFG	=	0x00b1
_PCON	=	0x0087
_CLOCK_CFG	=	0x00b9
_WAKE_CTRL	=	0x00a9
_RESET_KEEP	=	0x00fe
_WDOG_COUNT	=	0x00ff
_IE	=	0x00a8
_IP	=	0x00b8
_IE_EX	=	0x00e8
_IP_EX	=	0x00e9
_GPIO_IE	=	0x00c7
_ROM_ADDR	=	0x8584
_ROM_ADDR_L	=	0x0084
_ROM_ADDR_H	=	0x0085
_ROM_DATA	=	0x8f8e
_ROM_DATA_L	=	0x008e
_ROM_DATA_H	=	0x008f
_ROM_CTRL	=	0x0086
_P1	=	0x0090
_P1_MOD_OC	=	0x0092
_P1_DIR_PU	=	0x0093
_P2	=	0x00a0
_P3	=	0x00b0
_P3_MOD_OC	=	0x0096
_P3_DIR_PU	=	0x0097
_PIN_FUNC	=	0x00c6
_XBUS_AUX	=	0x00a2
_TCON	=	0x0088
_TMOD	=	0x0089
_TL0	=	0x008a
_TL1	=	0x008b
_TH0	=	0x008c
_TH1	=	0x008d
_SCON	=	0x0098
_SBUF	=	0x0099
_T2CON	=	0x00c8
_T2MOD	=	0x00c9
_RCAP2	=	0xcbca
_RCAP2L	=	0x00ca
_RCAP2H	=	0x00cb
_T2COUNT	=	0xcdcc
_TL2	=	0x00cc
_TH2	=	0x00cd
_T2CAP1	=	0xcfce
_T2CAP1L	=	0x00ce
_T2CAP1H	=	0x00cf
_PWM_DATA2	=	0x009b
_PWM_DATA1	=	0x009c
_PWM_CTRL	=	0x009d
_PWM_CK_SE	=	0x009e
_SPI0_STAT	=	0x00f8
_SPI0_DATA	=	0x00f9
_SPI0_CTRL	=	0x00fa
_SPI0_CK_SE	=	0x00fb
_SPI0_SETUP	=	0x00fc
_SCON1	=	0x00c0
_SBUF1	=	0x00c1
_SBAUD1	=	0x00c2
_ADC_CTRL	=	0x0080
_ADC_CFG	=	0x009a
_ADC_DATA	=	0x009f
_TKEY_CTRL	=	0x00c3
_TKEY_DAT	=	0xc5c4
_TKEY_DATL	=	0x00c4
_TKEY_DATH	=	0x00c5
_USB_C_CTRL	=	0x0091
_UDEV_CTRL	=	0x00d1
_UEP1_CTRL	=	0x00d2
_UEP1_T_LEN	=	0x00d3
_UEP2_CTRL	=	0x00d4
_UEP2_T_LEN	=	0x00d5
_UEP3_CTRL	=	0x00d6
_UEP3_T_LEN	=	0x00d7
_USB_INT_FG	=	0x00d8
_USB_INT_ST	=	0x00d9
_USB_MIS_ST	=	0x00da
_USB_RX_LEN	=	0x00db
_UEP0_CTRL	=	0x00dc
_UEP0_T_LEN	=	0x00dd
_UEP4_CTRL	=	0x00de
_UEP4_T_LEN	=	0x00df
_USB_INT_EN	=	0x00e1
_USB_CTRL	=	0x00e2
_USB_DEV_AD	=	0x00e3
_UEP2_DMA	=	0xe5e4
_UEP2_DMA_L	=	0x00e4
_UEP2_DMA_H	=	0x00e5
_UEP3_DMA	=	0xe7e6
_UEP3_DMA_L	=	0x00e6
_UEP3_DMA_H	=	0x00e7
_UEP4_1_MOD	=	0x00ea
_UEP2_3_MOD	=	0x00eb
_UEP0_DMA	=	0xedec
_UEP0_DMA_L	=	0x00ec
_UEP0_DMA_H	=	0x00ed
_UEP1_DMA	=	0xefee
_UEP1_DMA_L	=	0x00ee
_UEP1_DMA_H	=	0x00ef
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_CY	=	0x00d7
_AC	=	0x00d6
_F0	=	0x00d5
_RS1	=	0x00d4
_RS0	=	0x00d3
_OV	=	0x00d2
_F1	=	0x00d1
_P	=	0x00d0
_EA	=	0x00af
_E_DIS	=	0x00ae
_ET2	=	0x00ad
_ES	=	0x00ac
_ET1	=	0x00ab
_EX1	=	0x00aa
_ET0	=	0x00a9
_EX0	=	0x00a8
_PH_FLAG	=	0x00bf
_PL_FLAG	=	0x00be
_PT2	=	0x00bd
_PS	=	0x00bc
_PT1	=	0x00bb
_PX1	=	0x00ba
_PT0	=	0x00b9
_PX0	=	0x00b8
_IE_WDOG	=	0x00ef
_IE_GPIO	=	0x00ee
_IE_PWMX	=	0x00ed
_IE_UART1	=	0x00ec
_IE_ADC	=	0x00eb
_IE_USB	=	0x00ea
_IE_TKEY	=	0x00e9
_IE_SPI0	=	0x00e8
_SCK	=	0x0097
_TXD1	=	0x0097
_TIN5	=	0x0097
_MISO	=	0x0096
_RXD1	=	0x0096
_TIN4	=	0x0096
_MOSI	=	0x0095
_PWM1	=	0x0095
_TIN3	=	0x0095
_UCC2	=	0x0095
_AIN2	=	0x0095
_T2_	=	0x0094
_CAP1_	=	0x0094
_SCS	=	0x0094
_TIN2	=	0x0094
_UCC1	=	0x0094
_AIN1	=	0x0094
_TXD_	=	0x0093
_RXD_	=	0x0092
_T2EX	=	0x0091
_CAP2	=	0x0091
_TIN1	=	0x0091
_VBUS2	=	0x0091
_AIN0	=	0x0091
_T2	=	0x0090
_CAP1	=	0x0090
_TIN0	=	0x0090
_UDM	=	0x00b7
_UDP	=	0x00b6
_T1	=	0x00b5
_PWM2	=	0x00b4
_RXD1_	=	0x00b4
_T0	=	0x00b4
_INT1	=	0x00b3
_TXD1_	=	0x00b2
_INT0	=	0x00b2
_VBUS1	=	0x00b2
_AIN3	=	0x00b2
_PWM2_	=	0x00b1
_TXD	=	0x00b1
_PWM1_	=	0x00b0
_RXD	=	0x00b0
_TF1	=	0x008f
_TR1	=	0x008e
_TF0	=	0x008d
_TR0	=	0x008c
_IE1	=	0x008b
_IT1	=	0x008a
_IE0	=	0x0089
_IT0	=	0x0088
_SM0	=	0x009f
_SM1	=	0x009e
_SM2	=	0x009d
_REN	=	0x009c
_TB8	=	0x009b
_RB8	=	0x009a
_TI	=	0x0099
_RI	=	0x0098
_TF2	=	0x00cf
_CAP1F	=	0x00cf
_EXF2	=	0x00ce
_RCLK	=	0x00cd
_TCLK	=	0x00cc
_EXEN2	=	0x00cb
_TR2	=	0x00ca
_C_T2	=	0x00c9
_CP_RL2	=	0x00c8
_S0_FST_ACT	=	0x00ff
_S0_IF_OV	=	0x00fe
_S0_IF_FIRST	=	0x00fd
_S0_IF_BYTE	=	0x00fc
_S0_FREE	=	0x00fb
_S0_T_FIFO	=	0x00fa
_S0_R_FIFO	=	0x00f8
_U1SM0	=	0x00c7
_U1SMOD	=	0x00c5
_U1REN	=	0x00c4
_U1TB8	=	0x00c3
_U1RB8	=	0x00c2
_U1TI	=	0x00c1
_U1RI	=	0x00c0
_CMPO	=	0x0087
_CMP_IF	=	0x0086
_ADC_IF	=	0x0085
_ADC_START	=	0x0084
_CMP_CHAN	=	0x0083
_ADC_CHAN1	=	0x0081
_ADC_CHAN0	=	0x0080
_U_IS_NAK	=	0x00df
_U_TOG_OK	=	0x00de
_U_SIE_FREE	=	0x00dd
_UIF_FIFO_OV	=	0x00dc
_UIF_HST_SOF	=	0x00db
_UIF_SUSPEND	=	0x00da
_UIF_TRANSFER	=	0x00d9
_UIF_DETECT	=	0x00d8
_UIF_BUS_RST	=	0x00d8
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_USBHostTransact_PARM_2:
	.ds 1
_USBHostTransact_PARM_3:
	.ds 2
_USBHostTransact_endp_pid_10000_117:
	.ds 1
_USBHostTransact_TransRetry_10000_118:
	.ds 1
_HostCtrlTransfer_PARM_2:
	.ds 3
_HostCtrlTransfer_RxLen_10000_128:
	.ds 1
_HostCtrlTransfer_pBuf_10000_128:
	.ds 2
_HostCtrlTransfer_pLen_10000_128:
	.ds 3
_CtrlGetDeviceDescr_len_10000_154:
	.ds 1
_CtrlGetConfigDescr_len_10000_158:
	.ds 1
_CtrlGetHIDDeviceReport_len_10000_171:
	.ds 1
_AnalyzeBulkEndp_buf_10000_180:
	.ds 2
_AnalyzeBulkEndp_s1_10000_181:
	.ds 1
_AnalyzeBulkEndp_s2_10000_181:
	.ds 1
_SetBootProto_get_10000_220:
	.ds 8
_SetBootProto_set_10000_220:
	.ds 8
_SetBootProto_report_10000_220:
	.ds 8
_SetBootProto_len_10000_220:
	.ds 1
;--------------------------------------------------------
; overlayable items in internal ram
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
_HostCtrlTransfer_sloc0_1_0:
	.ds 1
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; initialized external ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'DisableRootHubPort'
;------------------------------------------------------------
;	src\usbhost.c:28: void DisableRootHubPort(void)
;	-----------------------------------------
;	 function DisableRootHubPort
;	-----------------------------------------
_DisableRootHubPort:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	src\usbhost.c:30: ThisUsbDev.DeviceStatus = ROOT_DEV_DISCONNECT;
	mov	dptr,#_ThisUsbDev
	clr	a
	movx	@dptr,a
;	src\usbhost.c:31: ThisUsbDev.DeviceAddress = 0x00;
	mov	dptr,#(_ThisUsbDev + 0x0001)
	movx	@dptr,a
;	src\usbhost.c:32: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'AnalyzeRootHub'
;------------------------------------------------------------
;s                         Allocated to registers r7 
;------------------------------------------------------------
;	src\usbhost.c:41: uint8_t AnalyzeRootHub(void)
;	-----------------------------------------
;	 function AnalyzeRootHub
;	-----------------------------------------
_AnalyzeRootHub:
;	src\usbhost.c:44: s = ERR_SUCCESS;
	mov	r7,#0x00
;	src\usbhost.c:45: if (USB_MIS_ST & bUMS_DEV_ATTACH)
	mov	a,_USB_MIS_ST
	jnb	acc.0,00107$
;	src\usbhost.c:47: if (ThisUsbDev.DeviceStatus == ROOT_DEV_DISCONNECT // Device plugged in
	mov	dptr,#_ThisUsbDev
	movx	a,@dptr
	jz	00101$
;	src\usbhost.c:48: || (UHOST_CTRL & bUH_PORT_EN) == 0x00)
	mov	a,_UDEV_CTRL
	jb	acc.0,00108$
00101$:
;	src\usbhost.c:50: DisableRootHubPort();                         // Close the port
	lcall	_DisableRootHubPort
;	src\usbhost.c:52: ThisUsbDev.DeviceStatus = ROOT_DEV_CONNECTED; // Set the connection flag
	mov	dptr,#_ThisUsbDev
	mov	a,#0x01
	movx	@dptr,a
;	src\usbhost.c:56: s = ERR_USB_CONNECT;
	mov	r7,#0x15
	sjmp	00108$
00107$:
;	src\usbhost.c:59: else if (ThisUsbDev.DeviceStatus >= ROOT_DEV_CONNECTED)
	mov	dptr,#_ThisUsbDev
	movx	a,@dptr
	mov	r6,a
	cjne	r6,#0x01,00132$
00132$:
	jc	00108$
;	src\usbhost.c:61: DisableRootHubPort(); // Close the port
	lcall	_DisableRootHubPort
;	src\usbhost.c:66: s = ERR_USB_DISCON;
	mov	r7,#0x16
00108$:
;	src\usbhost.c:69: return (s);
	mov	dpl, r7
;	src\usbhost.c:70: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'SetHostUsbAddr'
;------------------------------------------------------------
;addr                      Allocated to registers r7 
;------------------------------------------------------------
;	src\usbhost.c:78: void SetHostUsbAddr(uint8_t addr)
;	-----------------------------------------
;	 function SetHostUsbAddr
;	-----------------------------------------
_SetHostUsbAddr:
	mov	r7, dpl
;	src\usbhost.c:80: USB_DEV_AD = USB_DEV_AD & bUDA_GP_BIT | addr & 0x7F;
	mov	a,_USB_DEV_AD
	anl	a,#0x80
	mov	r6,a
	mov	a,#0x7f
	anl	a,r7
	orl	a,r6
	mov	_USB_DEV_AD,a
;	src\usbhost.c:81: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'SetUsbSpeed'
;------------------------------------------------------------
;FullSpeed                 Allocated to registers r7 
;------------------------------------------------------------
;	src\usbhost.c:90: void SetUsbSpeed(uint8_t FullSpeed)
;	-----------------------------------------
;	 function SetUsbSpeed
;	-----------------------------------------
_SetUsbSpeed:
;	src\usbhost.c:92: if (FullSpeed) // full speed
	mov	a,dpl
	jz	00102$
;	src\usbhost.c:94: USB_CTRL &= ~bUC_LOW_SPEED;  // full speed
	anl	_USB_CTRL,#0xbf
;	src\usbhost.c:95: UH_SETUP &= ~bUH_PRE_PID_EN; // Prohibit PRE PID
	anl	_UEP1_CTRL,#0x7f
	ret
00102$:
;	src\usbhost.c:99: USB_CTRL |= bUC_LOW_SPEED; // Low speed
	orl	_USB_CTRL,#0x40
;	src\usbhost.c:101: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ResetRootHubPort'
;------------------------------------------------------------
;	src\usbhost.c:110: void ResetRootHubPort(void)
;	-----------------------------------------
;	 function ResetRootHubPort
;	-----------------------------------------
_ResetRootHubPort:
;	src\usbhost.c:112: UsbDevEndp0Size = DEFAULT_ENDP0_SIZE;       // Maximum packet size of endpoint 0 of the USB device
	mov	dptr,#_UsbDevEndp0Size
	mov	a,#0x08
	movx	@dptr,a
;	src\usbhost.c:113: memset(&ThisUsbDev, 0, sizeof(ThisUsbDev)); // Empty structure
	mov	_memset_PARM_2,#0x00
	mov	_memset_PARM_3,#0x0d
	mov	(_memset_PARM_3 + 1),#0x00
	mov	dptr,#_ThisUsbDev
	mov	b, #0x00
	lcall	_memset
;	src\usbhost.c:114: SetHostUsbAddr(0x00);
	mov	dpl, #0x00
	lcall	_SetHostUsbAddr
;	src\usbhost.c:115: UHOST_CTRL &= ~bUH_PORT_EN;                               // Turn off the port
	anl	_UDEV_CTRL,#0xfe
;	src\usbhost.c:116: SetUsbSpeed(1);                                           // The default is full speed
	mov	dpl, #0x01
	lcall	_SetUsbSpeed
;	src\usbhost.c:117: UHOST_CTRL = UHOST_CTRL & ~bUH_LOW_SPEED | bUH_BUS_RESET; // The default is full speed, start to reset
	mov	a,#0xfb
	anl	a,_UDEV_CTRL
	orl	a,#0x02
	mov	_UDEV_CTRL,a
;	src\usbhost.c:118: mDelaymS(20);                                             // Reset time 10mS to 20mS
	mov	dptr,#0x0014
	lcall	_mDelaymS
;	src\usbhost.c:119: UHOST_CTRL = UHOST_CTRL & ~bUH_BUS_RESET;                 // End reset
	anl	_UDEV_CTRL,#0xfd
;	src\usbhost.c:120: mDelayuS(250);
	mov	dptr,#0x00fa
	lcall	_mDelayuS
;	src\usbhost.c:121: UIF_DETECT = 0; // Clear interrupt flag
;	assignBit
	clr	_UIF_DETECT
;	src\usbhost.c:122: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'EnableRootHubPort'
;------------------------------------------------------------
;	src\usbhost.c:130: uint8_t EnableRootHubPort(void)
;	-----------------------------------------
;	 function EnableRootHubPort
;	-----------------------------------------
_EnableRootHubPort:
;	src\usbhost.c:132: if (ThisUsbDev.DeviceStatus < ROOT_DEV_CONNECTED)
	mov	dptr,#_ThisUsbDev
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x01,00143$
00143$:
	jnc	00102$
;	src\usbhost.c:133: ThisUsbDev.DeviceStatus = ROOT_DEV_CONNECTED;
	mov	dptr,#_ThisUsbDev
	mov	a,#0x01
	movx	@dptr,a
00102$:
;	src\usbhost.c:134: if (USB_MIS_ST & bUMS_DEV_ATTACH)
	mov	a,_USB_MIS_ST
	jnb	acc.0,00108$
;	src\usbhost.c:136: if ((UHOST_CTRL & bUH_PORT_EN) == 0x00)
	mov	a,_UDEV_CTRL
	jb	acc.0,00106$
;	src\usbhost.c:138: ThisUsbDev.DeviceSpeed = USB_MIS_ST & bUMS_DM_LEVEL ? 0 : 1;
	mov	a,_USB_MIS_ST
	jnb	acc.1,00111$
	mov	r7,#0x00
	sjmp	00112$
00111$:
	mov	r7,#0x01
00112$:
	mov	dptr,#(_ThisUsbDev + 0x0002)
	mov	a,r7
	movx	@dptr,a
;	src\usbhost.c:139: if (ThisUsbDev.DeviceSpeed == 0)
	mov	a,r7
	jnz	00106$
;	src\usbhost.c:140: UHOST_CTRL |= bUH_LOW_SPEED; // Low speed
	orl	_UDEV_CTRL,#0x04
00106$:
;	src\usbhost.c:142: USB_CTRL |= bUC_DMA_EN; // Start the USB host and DMA, and automatically pause before the interrupt flag is cleared
	orl	_USB_CTRL,#0x01
;	src\usbhost.c:143: UH_SETUP = bUH_SOF_EN;
	mov	_UEP1_CTRL,#0x40
;	src\usbhost.c:144: UHOST_CTRL |= bUH_PORT_EN; // Enable HUB port
	orl	_UDEV_CTRL,#0x01
;	src\usbhost.c:145: return (ERR_SUCCESS);
	mov	dpl, #0x00
	ret
00108$:
;	src\usbhost.c:147: return (ERR_USB_DISCON);
	mov	dpl, #0x16
;	src\usbhost.c:148: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'SelectHubPort'
;------------------------------------------------------------
;	src\usbhost.c:157: void SelectHubPort(void)
;	-----------------------------------------
;	 function SelectHubPort
;	-----------------------------------------
_SelectHubPort:
;	src\usbhost.c:161: SetHostUsbAddr(ThisUsbDev.DeviceAddress); // 设置USB主机当前操作的USB设备地址
	mov	dptr,#(_ThisUsbDev + 0x0001)
	movx	a,@dptr
	mov	dpl,a
	lcall	_SetHostUsbAddr
;	src\usbhost.c:162: SetUsbSpeed(ThisUsbDev.DeviceSpeed);      // 设置USB设备的速度
	mov	dptr,#(_ThisUsbDev + 0x0002)
	movx	a,@dptr
	mov	dpl,a
;	src\usbhost.c:163: }
	ljmp	_SetUsbSpeed
;------------------------------------------------------------
;Allocation info for local variables in function 'WaitUSB_Interrupt'
;------------------------------------------------------------
;i                         Allocated to registers r6 r7 
;------------------------------------------------------------
;	src\usbhost.c:173: uint8_t WaitUSB_Interrupt(void)
;	-----------------------------------------
;	 function WaitUSB_Interrupt
;	-----------------------------------------
_WaitUSB_Interrupt:
;	src\usbhost.c:176: for (i = WAIT_USB_TOUT_200US; i != 0 && UIF_TRANSFER == 0; i--)
	mov	r6,#0x15
	mov	r7,#0x02
00104$:
	mov	a,r6
	orl	a,r7
	jz	00101$
	jb	_UIF_TRANSFER,00101$
	dec	r6
	cjne	r6,#0xff,00137$
	dec	r7
00137$:
	sjmp	00104$
00101$:
;	src\usbhost.c:180: return (UIF_TRANSFER ? ERR_SUCCESS : ERR_USB_UNKNOWN);
	jnb	_UIF_TRANSFER,00108$
	mov	r7,#0x00
	sjmp	00109$
00108$:
	mov	r7,#0xfe
00109$:
	mov	dpl,r7
;	src\usbhost.c:181: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'USBHostTransact'
;------------------------------------------------------------
;tog                       Allocated with name '_USBHostTransact_PARM_2'
;timeout                   Allocated with name '_USBHostTransact_PARM_3'
;endp_pid                  Allocated with name '_USBHostTransact_endp_pid_10000_117'
;TransRetry                Allocated with name '_USBHostTransact_TransRetry_10000_118'
;s                         Allocated to registers r7 
;r                         Allocated to registers r7 
;i                         Allocated to registers r0 r7 
;------------------------------------------------------------
;	src\usbhost.c:195: uint8_t USBHostTransact(uint8_t endp_pid, uint8_t tog, uint16_t timeout)
;	-----------------------------------------
;	 function USBHostTransact
;	-----------------------------------------
_USBHostTransact:
	mov	_USBHostTransact_endp_pid_10000_117,dpl
;	src\usbhost.c:201: UH_RX_CTRL = UH_TX_CTRL = tog;
	mov	_UEP3_CTRL,_USBHostTransact_PARM_2
	mov	_UEP2_CTRL,_USBHostTransact_PARM_2
;	src\usbhost.c:202: TransRetry = 0;
	mov	_USBHostTransact_TransRetry_10000_118,#0x00
;	src\usbhost.c:204: do
	mov	a,_USBHostTransact_endp_pid_10000_117
	swap	a
	anl	a,#0x0f
	mov	r5,a
	cjne	r5,#0x01,00281$
	mov	a,r5
	sjmp	00282$
00281$:
	clr	a
00282$:
	mov	r4,a
	clr	a
	cjne	r5,#0x09,00283$
	inc	a
00283$:
	mov	r3,a
	mov	r1,_USBHostTransact_PARM_3
	mov	r2,(_USBHostTransact_PARM_3 + 1)
00139$:
;	src\usbhost.c:206: UH_EP_PID = endp_pid; // Specify the token PID and destination endpoint number
	mov	_UEP2_T_LEN,_USBHostTransact_endp_pid_10000_117
;	src\usbhost.c:207: UIF_TRANSFER = 0;     // Allow transfer
;	assignBit
	clr	_UIF_TRANSFER
;	src\usbhost.c:209: for (i = WAIT_USB_TOUT_200US; i != 0 && UIF_TRANSFER == 0; i--)
	mov	r0,#0x15
	mov	r7,#0x02
00144$:
	mov	a,r0
	orl	a,r7
	jz	00101$
	jb	_UIF_TRANSFER,00101$
	dec	r0
	cjne	r0,#0xff,00287$
	dec	r7
00287$:
	sjmp	00144$
00101$:
;	src\usbhost.c:211: UH_EP_PID = 0x00; // Stop USB transfer
	mov	_UEP2_T_LEN,#0x00
;	src\usbhost.c:213: if (UIF_TRANSFER == 0)
	jb	_UIF_TRANSFER,00103$
;	src\usbhost.c:214: return (ERR_USB_UNKNOWN);
	mov	dpl, #0xfe
	ret
00103$:
;	src\usbhost.c:215: if (UIF_DETECT)
;	src\usbhost.c:218: UIF_DETECT = 0;       // 清中断标志
;	assignBit
	jbc	_UIF_DETECT,00289$
	sjmp	00111$
00289$:
;	src\usbhost.c:219: s = AnalyzeRootHub(); // 分析ROOT-HUB状态
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	push	ar1
	lcall	_AnalyzeRootHub
	mov	r7, dpl
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
;	src\usbhost.c:220: if (s == ERR_USB_CONNECT) 
	cjne	r7,#0x15,00105$
;	src\usbhost.c:221: FoundNewDev = 1;
;	assignBit
	setb	_FoundNewDev
00105$:
;	src\usbhost.c:222: if (ThisUsbDev.DeviceStatus == ROOT_DEV_DISCONNECT)
	mov	dptr,#_ThisUsbDev
	movx	a,@dptr
	mov	r7,a
	jnz	00107$
;	src\usbhost.c:223: return (ERR_USB_DISCON); // USB设备断开事件
	mov	dpl, #0x16
	ret
00107$:
;	src\usbhost.c:224: if (ThisUsbDev.DeviceStatus == ROOT_DEV_CONNECTED)
	cjne	r7,#0x01,00109$
;	src\usbhost.c:225: return (ERR_USB_CONNECT); // USB设备连接事件
	mov	dpl, #0x15
	ret
00109$:
;	src\usbhost.c:226: mDelayuS(200);                // 等待传输完成
	mov	dptr,#0x00c8
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	push	ar1
	lcall	_mDelayuS
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
00111$:
;	src\usbhost.c:228: if (UIF_TRANSFER)
	jb	_UIF_TRANSFER,00295$
	ljmp	00137$
00295$:
;	src\usbhost.c:230: if (U_TOG_OK)
	jnb	_U_TOG_OK,00113$
;	src\usbhost.c:231: return (ERR_SUCCESS);
	mov	dpl, #0x00
	ret
00113$:
;	src\usbhost.c:232: r = USB_INT_ST & MASK_UIS_H_RES; // USB设备应答状态
	mov	a,_USB_INT_ST
	anl	a,#0x0f
	mov	r7,a
;	src\usbhost.c:233: if (r == USB_PID_STALL)
	cjne	r7,#0x0e,00115$
;	src\usbhost.c:234: return (r | ERR_USB_TRANSFER);
	mov	a,#0x20
	orl	a,r7
	mov	dpl,a
	ret
00115$:
;	src\usbhost.c:235: if (r == USB_PID_NAK)
	cjne	r7,#0x0a,00134$
;	src\usbhost.c:237: if (timeout == 0)
	mov	a,r1
	orl	a,r2
	jnz	00117$
;	src\usbhost.c:238: return (r | ERR_USB_TRANSFER);
	mov	a,#0x20
	orl	a,r7
	mov	dpl,a
	ret
00117$:
;	src\usbhost.c:239: if (timeout < 0xFFFF)
	mov	ar0,r1
	mov	ar6,r2
	clr	c
	mov	a,r0
	subb	a,#0xff
	mov	a,r6
	subb	a,#0xff
	jnc	00119$
;	src\usbhost.c:240: timeout--;
	dec	r1
	cjne	r1,#0xff,00303$
	dec	r2
00303$:
00119$:
;	src\usbhost.c:241: --TransRetry;
	dec	_USBHostTransact_TransRetry_10000_118
	sjmp	00138$
00134$:
;	src\usbhost.c:244: switch (endp_pid >> 4)
	mov	a,r4
	jnz	00121$
	mov	a,r3
	jnz	00124$
	cjne	r5,#0x0d,00131$
;	src\usbhost.c:247: case USB_PID_OUT:
00121$:
;	src\usbhost.c:251: if (r)
	mov	a,r7
	jz	00138$
;	src\usbhost.c:252: return (r | ERR_USB_TRANSFER); // 不是超时/出错,意外应答
	mov	a,#0x20
	orl	a,r7
	mov	dpl,a
;	src\usbhost.c:254: case USB_PID_IN:
	ret
00124$:
;	src\usbhost.c:258: if (r == USB_PID_DATA0 || r == USB_PID_DATA1)
	cjne	r7,#0x03,00309$
	sjmp	00138$
00309$:
	cjne	r7,#0x0b,00310$
	sjmp	00138$
00310$:
;	src\usbhost.c:261: else if (r)
	mov	a,r7
	jz	00138$
;	src\usbhost.c:262: return (r | ERR_USB_TRANSFER); // 不是超时/出错,意外应答
	mov	a,#0x20
	orl	a,r7
	mov	dpl,a
;	src\usbhost.c:264: default:
	ret
00131$:
;	src\usbhost.c:265: return (ERR_USB_UNKNOWN); // 不可能的情况
	mov	dpl, #0xfe
;	src\usbhost.c:267: }
	ret
00137$:
;	src\usbhost.c:271: USB_INT_FG = 0xFF; /* 清中断标志 */
	mov	_USB_INT_FG,#0xff
00138$:
;	src\usbhost.c:273: mDelayuS(15);
	mov	dptr,#0x000f
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	push	ar1
	lcall	_mDelayuS
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
;	src\usbhost.c:274: } while (++TransRetry < 3);
	inc	_USBHostTransact_TransRetry_10000_118
	mov	a,#0x100 - 0x03
	add	a,_USBHostTransact_TransRetry_10000_118
	jc	00312$
	ljmp	00139$
00312$:
;	src\usbhost.c:275: return (ERR_USB_TRANSFER); // 应答超时
	mov	dpl, #0x20
;	src\usbhost.c:276: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'HostCtrlTransfer'
;------------------------------------------------------------
;RetLen                    Allocated with name '_HostCtrlTransfer_PARM_2'
;DataBuf                   Allocated to registers 
;RemLen                    Allocated to registers r1 r2 
;s                         Allocated to registers r7 
;RxLen                     Allocated with name '_HostCtrlTransfer_RxLen_10000_128'
;RxCnt                     Allocated to registers r5 
;TxCnt                     Allocated to registers r5 
;pBuf                      Allocated with name '_HostCtrlTransfer_pBuf_10000_128'
;pLen                      Allocated with name '_HostCtrlTransfer_pLen_10000_128'
;------------------------------------------------------------
;	src\usbhost.c:287: uint8_t HostCtrlTransfer(__xdata uint8_t *DataBuf, uint8_t *RetLen)
;	-----------------------------------------
;	 function HostCtrlTransfer
;	-----------------------------------------
_HostCtrlTransfer:
	mov	_HostCtrlTransfer_pBuf_10000_128,dpl
	mov	(_HostCtrlTransfer_pBuf_10000_128 + 1),dph
;	src\usbhost.c:294: pLen = RetLen;
	mov	_HostCtrlTransfer_pLen_10000_128,_HostCtrlTransfer_PARM_2
	mov	(_HostCtrlTransfer_pLen_10000_128 + 1),(_HostCtrlTransfer_PARM_2 + 1)
	mov	(_HostCtrlTransfer_pLen_10000_128 + 2),(_HostCtrlTransfer_PARM_2 + 2)
;	src\usbhost.c:295: mDelayuS(200);
	mov	dptr,#0x00c8
	lcall	_mDelayuS
;	src\usbhost.c:296: if (pLen)
	mov	a,_HostCtrlTransfer_pLen_10000_128
	orl	a,(_HostCtrlTransfer_pLen_10000_128 + 1)
	jz	00102$
;	src\usbhost.c:298: *pLen = 0; // 实际成功收发的总长度
	mov	dpl,_HostCtrlTransfer_pLen_10000_128
	mov	dph,(_HostCtrlTransfer_pLen_10000_128 + 1)
	mov	b,(_HostCtrlTransfer_pLen_10000_128 + 2)
	clr	a
	lcall	__gptrput
00102$:
;	src\usbhost.c:300: UH_TX_LEN = sizeof(USB_SETUP_REQ);
	mov	_UEP3_T_LEN,#0x08
;	src\usbhost.c:301: s = USBHostTransact((uint8_t)(USB_PID_SETUP << 4 | 0x00), 0x00, 10000); // SETUP阶段,200mS超时
	mov	_USBHostTransact_PARM_2,#0x00
	mov	_USBHostTransact_PARM_3,#0x10
	mov	(_USBHostTransact_PARM_3 + 1),#0x27
	mov	dpl, #0xd0
	lcall	_USBHostTransact
;	src\usbhost.c:302: if (s != ERR_SUCCESS)
	mov	a,dpl
	mov	r2,a
	jz	00104$
;	src\usbhost.c:304: return (s);
	mov	dpl, r2
	ret
00104$:
;	src\usbhost.c:306: UH_RX_CTRL = UH_TX_CTRL = bUH_R_TOG | bUH_R_AUTO_TOG | bUH_T_TOG | bUH_T_AUTO_TOG; // 默认DATA1
	mov	_UEP3_CTRL,#0xd0
	mov	_UEP2_CTRL,#0xd0
;	src\usbhost.c:307: UH_TX_LEN = 0x01;                                                                  // 默认无数据故状态阶段为IN
	mov	_UEP3_T_LEN,#0x01
;	src\usbhost.c:308: RemLen = (pSetupReq->wLengthH << 8) | (pSetupReq->wLengthL);
	mov	dptr,#(_TxBuffer + 0x0007)
	movx	a,@dptr
	mov	r2,a
	mov	r1,#0x00
	mov	dptr,#(_TxBuffer + 0x0006)
	movx	a,@dptr
	mov	r7,#0x00
	orl	ar1,a
	mov	a,r7
	orl	ar2,a
;	src\usbhost.c:309: if (RemLen && pBuf) // 需要收发数据
	mov	a,r1
	orl	a,r2
	jnz	00324$
	ljmp	00130$
00324$:
	mov	a,_HostCtrlTransfer_pBuf_10000_128
	orl	a,(_HostCtrlTransfer_pBuf_10000_128 + 1)
	jnz	00325$
	ljmp	00130$
00325$:
;	src\usbhost.c:311: if (pSetupReq->bRequestType & USB_REQ_TYP_IN) // 收
	mov	dptr,#_TxBuffer
	movx	a,@dptr
	jb	acc.7,00326$
	ljmp	00123$
00326$:
;	src\usbhost.c:313: while (RemLen)
00113$:
	mov	a,r1
	orl	a,r2
	jnz	00327$
	ljmp	00115$
00327$:
;	src\usbhost.c:315: mDelayuS(200);
	mov	dptr,#0x00c8
	push	ar2
	push	ar1
	lcall	_mDelayuS
;	src\usbhost.c:316: s = USBHostTransact((uint8_t)(USB_PID_IN << 4 | 0x00), UH_RX_CTRL, 200000 / 20); // IN数据
	mov	_USBHostTransact_PARM_2,_UEP2_CTRL
	mov	_USBHostTransact_PARM_3,#0x10
	mov	(_USBHostTransact_PARM_3 + 1),#0x27
	mov	dpl, #0x90
	lcall	_USBHostTransact
	mov	r7, dpl
	pop	ar1
	pop	ar2
;	src\usbhost.c:317: if (s != ERR_SUCCESS)
	mov	a,r7
	jz	00106$
;	src\usbhost.c:319: return (s);
	mov	dpl, r7
	ret
00106$:
;	src\usbhost.c:321: RxLen = USB_RX_LEN < RemLen ? USB_RX_LEN : RemLen;
	mov	r6,_USB_RX_LEN
	mov	r7,#0x00
	clr	c
	mov	a,r6
	subb	a,r1
	mov	a,r7
	subb	a,r2
	jnc	00146$
	mov	r6,_USB_RX_LEN
	sjmp	00147$
00146$:
	mov	ar6,r1
	mov	ar7,r2
00147$:
	mov	_HostCtrlTransfer_RxLen_10000_128,r6
;	src\usbhost.c:322: RemLen -= RxLen;
	mov	r7,_HostCtrlTransfer_RxLen_10000_128
	mov	ar0,r1
	mov	ar6,r2
	mov	ar5,r7
	mov	r7,#0x00
	mov	a,r0
	clr	c
	subb	a,r5
	mov	r0,a
	mov	a,r6
	subb	a,r7
	mov	r6,a
	mov	ar1,r0
	mov	ar2,r6
;	src\usbhost.c:323: if (pLen)
	mov	a,_HostCtrlTransfer_pLen_10000_128
	orl	a,(_HostCtrlTransfer_pLen_10000_128 + 1)
	jz	00161$
;	src\usbhost.c:325: *pLen += RxLen; // 实际成功收发的总长度
	mov	dpl,_HostCtrlTransfer_pLen_10000_128
	mov	dph,(_HostCtrlTransfer_pLen_10000_128 + 1)
	mov	b,(_HostCtrlTransfer_pLen_10000_128 + 2)
	lcall	__gptrget
	add	a,_HostCtrlTransfer_RxLen_10000_128
	mov	dpl,_HostCtrlTransfer_pLen_10000_128
	mov	dph,(_HostCtrlTransfer_pLen_10000_128 + 1)
	mov	b,(_HostCtrlTransfer_pLen_10000_128 + 2)
	lcall	__gptrput
;	src\usbhost.c:329: for (RxCnt = 0; RxCnt != RxLen; RxCnt++)
00161$:
	mov	r6,_HostCtrlTransfer_pBuf_10000_128
	mov	r7,(_HostCtrlTransfer_pBuf_10000_128 + 1)
	mov	r5,#0x00
00139$:
	mov	a,r5
	cjne	a,_HostCtrlTransfer_RxLen_10000_128,00331$
	sjmp	00176$
00331$:
;	src\usbhost.c:331: *pBuf = RxBuffer[RxCnt];
	mov	dpl,r5
	mov	dph,#(_RxBuffer >> 8)
	movx	a,@dptr
	mov	dpl,r6
	mov	dph,r7
	movx	@dptr,a
	inc	dptr
	mov	r6,dpl
	mov	r7,dph
;	src\usbhost.c:332: pBuf++;
;	src\usbhost.c:329: for (RxCnt = 0; RxCnt != RxLen; RxCnt++)
	inc	r5
	sjmp	00139$
00176$:
	mov	_HostCtrlTransfer_pBuf_10000_128,r6
	mov	(_HostCtrlTransfer_pBuf_10000_128 + 1),r7
;	src\usbhost.c:334: if (USB_RX_LEN == 0 || (USB_RX_LEN & (UsbDevEndp0Size - 1)))
	mov	a,_USB_RX_LEN
	jz	00115$
	mov	dptr,#_UsbDevEndp0Size
	movx	a,@dptr
	mov	r7,a
	mov	r6,#0x00
	dec	r7
	cjne	r7,#0xff,00333$
	dec	r6
00333$:
	mov	r4,_USB_RX_LEN
	mov	r5,#0x00
	mov	a,r4
	anl	ar7,a
	mov	a,r5
	anl	ar6,a
	mov	a,r7
	orl	a,r6
	jnz	00334$
	ljmp	00113$
00334$:
;	src\usbhost.c:336: break; // 短包
00115$:
;	src\usbhost.c:339: UH_TX_LEN = 0x00; // 状态阶段为OUT
	mov	_UEP3_T_LEN,#0x00
	ljmp	00130$
;	src\usbhost.c:343: while (RemLen)
00123$:
	mov	a,r1
	orl	a,r2
	jnz	00335$
	ljmp	00130$
00335$:
;	src\usbhost.c:345: mDelayuS(200);
	mov	dptr,#0x00c8
	push	ar2
	push	ar1
	lcall	_mDelayuS
	pop	ar1
	pop	ar2
;	src\usbhost.c:346: UH_TX_LEN = RemLen >= UsbDevEndp0Size ? UsbDevEndp0Size : RemLen;
	mov	dptr,#_UsbDevEndp0Size
	movx	a,@dptr
	mov	r6,a
	mov	r7,#0x00
	clr	c
	mov	a,r1
	subb	a,r6
	mov	a,r2
	subb	a,r7
	mov	_HostCtrlTransfer_sloc0_1_0,c
	jnc	00149$
	mov	ar6,r1
	mov	ar7,r2
00149$:
	mov	_UEP3_T_LEN,r6
;	src\usbhost.c:349: if (pBuf[1] == 0x09) // HID类命令处理
	mov	dpl,_HostCtrlTransfer_pBuf_10000_128
	mov	dph,(_HostCtrlTransfer_pBuf_10000_128 + 1)
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x09,00168$
;	src\usbhost.c:351: Set_Port = Set_Port ^ 1;
	xrl	_Set_Port,#0x01
;	src\usbhost.c:352: *pBuf = Set_Port;
	mov	dpl,_HostCtrlTransfer_pBuf_10000_128
	mov	dph,(_HostCtrlTransfer_pBuf_10000_128 + 1)
	mov	a,_Set_Port
	movx	@dptr,a
;	src\usbhost.c:360: for (TxCnt = 0; TxCnt != UH_TX_LEN; TxCnt++)
00168$:
	mov	r6,_HostCtrlTransfer_pBuf_10000_128
	mov	r7,(_HostCtrlTransfer_pBuf_10000_128 + 1)
	mov	r5,#0x00
00142$:
	mov	a,r5
	cjne	a,_UEP3_T_LEN,00339$
	sjmp	00177$
00339$:
;	src\usbhost.c:362: TxBuffer[TxCnt] = *pBuf;
	mov	a,r5
	add	a, #_TxBuffer
	mov	r3,a
	clr	a
	addc	a, #(_TxBuffer >> 8)
	mov	r4,a
	mov	dpl,r6
	mov	dph,r7
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	mov	r6,dpl
	mov	r7,dph
	mov	dpl,r3
	mov	dph,r4
	mov	a,r0
	movx	@dptr,a
;	src\usbhost.c:363: pBuf++;
;	src\usbhost.c:360: for (TxCnt = 0; TxCnt != UH_TX_LEN; TxCnt++)
	inc	r5
	sjmp	00142$
00177$:
	mov	_HostCtrlTransfer_pBuf_10000_128,r6
	mov	(_HostCtrlTransfer_pBuf_10000_128 + 1),r7
;	src\usbhost.c:365: s = USBHostTransact(USB_PID_OUT << 4 | 0x00, UH_TX_CTRL, 200000 / 20); // OUT数据
	mov	_USBHostTransact_PARM_2,_UEP3_CTRL
	mov	_USBHostTransact_PARM_3,#0x10
	mov	(_USBHostTransact_PARM_3 + 1),#0x27
	mov	dpl, #0x10
	push	ar2
	push	ar1
	lcall	_USBHostTransact
	mov	r7, dpl
	pop	ar1
	pop	ar2
;	src\usbhost.c:366: if (s != ERR_SUCCESS)
	mov	a,r7
	jz	00120$
;	src\usbhost.c:368: return (s);
	mov	dpl, r7
	ret
00120$:
;	src\usbhost.c:370: RemLen -= UH_TX_LEN;
	mov	r7,_UEP3_T_LEN
	mov	ar5,r1
	mov	ar6,r2
	mov	r4,#0x00
	mov	a,r5
	clr	c
	subb	a,r7
	mov	r5,a
	mov	a,r6
	subb	a,r4
	mov	r6,a
	mov	ar1,r5
	mov	ar2,r6
;	src\usbhost.c:371: if (pLen)
	mov	a,_HostCtrlTransfer_pLen_10000_128
	orl	a,(_HostCtrlTransfer_pLen_10000_128 + 1)
	jnz	00341$
	ljmp	00123$
00341$:
;	src\usbhost.c:373: *pLen += UH_TX_LEN; // 实际成功收发的总长度
	mov	dpl,_HostCtrlTransfer_pLen_10000_128
	mov	dph,(_HostCtrlTransfer_pLen_10000_128 + 1)
	mov	b,(_HostCtrlTransfer_pLen_10000_128 + 2)
	lcall	__gptrget
	add	a,_UEP3_T_LEN
	mov	dpl,_HostCtrlTransfer_pLen_10000_128
	mov	dph,(_HostCtrlTransfer_pLen_10000_128 + 1)
	mov	b,(_HostCtrlTransfer_pLen_10000_128 + 2)
	lcall	__gptrput
	ljmp	00123$
00130$:
;	src\usbhost.c:379: mDelayuS(200);
	mov	dptr,#0x00c8
	lcall	_mDelayuS
;	src\usbhost.c:380: s = USBHostTransact((UH_TX_LEN ? USB_PID_IN << 4 | 0x00 : USB_PID_OUT << 4 | 0x00), bUH_R_TOG | bUH_T_TOG, 200000 / 20); // STATUS阶段
	mov	a,_UEP3_T_LEN
	jz	00150$
	mov	r7,#0x90
	sjmp	00151$
00150$:
	mov	r7,#0x10
00151$:
	mov	_USBHostTransact_PARM_2,#0xc0
	mov	_USBHostTransact_PARM_3,#0x10
	mov	(_USBHostTransact_PARM_3 + 1),#0x27
	mov	dpl, r7
	lcall	_USBHostTransact
;	src\usbhost.c:381: if (s != ERR_SUCCESS)
	mov	a,dpl
	mov	r7,a
	jz	00133$
;	src\usbhost.c:383: return (s);
	mov	dpl, r7
	ret
00133$:
;	src\usbhost.c:385: if (UH_TX_LEN == 0)
	mov	a,_UEP3_T_LEN
;	src\usbhost.c:387: return (ERR_SUCCESS); // 状态OUT
	jnz	00135$
	mov	dpl,a
	ret
00135$:
;	src\usbhost.c:389: if (USB_RX_LEN == 0)
	mov	a,_USB_RX_LEN
;	src\usbhost.c:391: return (ERR_SUCCESS); // 状态IN,检查IN状态返回数据长度
	jnz	00137$
	mov	dpl,a
	ret
00137$:
;	src\usbhost.c:393: return (ERR_USB_BUF_OVER); // IN状态阶段错误
	mov	dpl, #0x17
;	src\usbhost.c:394: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'CopySetupReqPkg'
;------------------------------------------------------------
;pReqPkt                   Allocated to registers 
;i                         Allocated to registers r5 
;------------------------------------------------------------
;	src\usbhost.c:402: void CopySetupReqPkg(__code uint8_t *pReqPkt) // 复制控制传输的请求包
;	-----------------------------------------
;	 function CopySetupReqPkg
;	-----------------------------------------
_CopySetupReqPkg:
	mov	r6, dpl
	mov	r7, dph
;	src\usbhost.c:405: for (i = 0; i != sizeof(USB_SETUP_REQ); i++)
	mov	r5,#0x00
00102$:
;	src\usbhost.c:407: ((__xdata uint8_t *)pSetupReq)[i] = *pReqPkt;
	mov	a,r5
	add	a, #_TxBuffer
	mov	r3,a
	clr	a
	addc	a, #(_TxBuffer >> 8)
	mov	r4,a
	mov	dpl,r6
	mov	dph,r7
	clr	a
	movc	a,@a+dptr
	mov	r2,a
	inc	dptr
	mov	r6,dpl
	mov	r7,dph
	mov	dpl,r3
	mov	dph,r4
	mov	a,r2
	movx	@dptr,a
;	src\usbhost.c:408: pReqPkt++;
;	src\usbhost.c:405: for (i = 0; i != sizeof(USB_SETUP_REQ); i++)
	inc	r5
	cjne	r5,#0x08,00102$
;	src\usbhost.c:410: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'CtrlGetDeviceDescr'
;------------------------------------------------------------
;s                         Allocated to registers r6 
;len                       Allocated with name '_CtrlGetDeviceDescr_len_10000_154'
;------------------------------------------------------------
;	src\usbhost.c:420: uint8_t CtrlGetDeviceDescr(void)
;	-----------------------------------------
;	 function CtrlGetDeviceDescr
;	-----------------------------------------
_CtrlGetDeviceDescr:
;	src\usbhost.c:424: UsbDevEndp0Size = DEFAULT_ENDP0_SIZE;
	mov	dptr,#_UsbDevEndp0Size
	mov	a,#0x08
	movx	@dptr,a
;	src\usbhost.c:425: CopySetupReqPkg(SetupGetDevDescr);
	mov	dptr,#_SetupGetDevDescr
	lcall	_CopySetupReqPkg
;	src\usbhost.c:426: s = HostCtrlTransfer(Com_Buffer, (uint8_t *)&len); // 执行控制传输
	mov	_HostCtrlTransfer_PARM_2,#_CtrlGetDeviceDescr_len_10000_154
	mov	(_HostCtrlTransfer_PARM_2 + 1),#0x00
	mov	(_HostCtrlTransfer_PARM_2 + 2),#0x40
	mov	dptr,#_Com_Buffer
	lcall	_HostCtrlTransfer
;	src\usbhost.c:427: if (s != ERR_SUCCESS)
	mov	a,dpl
	mov	r6,a
	jz	00102$
;	src\usbhost.c:429: return (s);
	mov	dpl, r6
	ret
00102$:
;	src\usbhost.c:431: UsbDevEndp0Size = ((PXUSB_DEV_DESCR)Com_Buffer)->bMaxPacketSize0; // 端点0最大包长度,这是简化处理,正常应该先获取前8字节后立即更新UsbDevEndp0Size再继续
	mov	dptr,#(_Com_Buffer + 0x0007)
	movx	a,@dptr
	mov	dptr,#_UsbDevEndp0Size
	movx	@dptr,a
;	src\usbhost.c:432: if (len < ((PUSB_SETUP_REQ)SetupGetDevDescr)->wLengthL)
	mov	dptr,#(_SetupGetDevDescr + 0x0006)
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	clr	c
	mov	a,_CtrlGetDeviceDescr_len_10000_154
	subb	a,r7
	jnc	00104$
;	src\usbhost.c:434: return (ERR_USB_BUF_OVER); // 描述符长度错误
	mov	dpl, #0x17
	ret
00104$:
;	src\usbhost.c:436: return (ERR_SUCCESS);
	mov	dpl, #0x00
;	src\usbhost.c:437: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'CtrlGetConfigDescr'
;------------------------------------------------------------
;s                         Allocated to registers r7 
;len                       Allocated with name '_CtrlGetConfigDescr_len_10000_158'
;------------------------------------------------------------
;	src\usbhost.c:447: uint8_t CtrlGetConfigDescr(void)
;	-----------------------------------------
;	 function CtrlGetConfigDescr
;	-----------------------------------------
_CtrlGetConfigDescr:
;	src\usbhost.c:450: CopySetupReqPkg(SetupGetCfgDescr);
	mov	dptr,#_SetupGetCfgDescr
	lcall	_CopySetupReqPkg
;	src\usbhost.c:451: s = HostCtrlTransfer(Com_Buffer, (uint8_t *)&len); // 执行控制传输
	mov	_HostCtrlTransfer_PARM_2,#_CtrlGetConfigDescr_len_10000_158
	mov	(_HostCtrlTransfer_PARM_2 + 1),#0x00
	mov	(_HostCtrlTransfer_PARM_2 + 2),#0x40
	mov	dptr,#_Com_Buffer
	lcall	_HostCtrlTransfer
;	src\usbhost.c:452: if (s != ERR_SUCCESS)
	mov	a,dpl
	mov	r7,a
	jz	00102$
;	src\usbhost.c:454: return (s);
	mov	dpl, r7
	ret
00102$:
;	src\usbhost.c:457: len = ((PXUSB_CFG_DESCR)Com_Buffer)->wTotalLengthL;
	mov	dptr,#(_Com_Buffer + 0x0002)
	movx	a,@dptr
	mov	_CtrlGetConfigDescr_len_10000_158,a
;	src\usbhost.c:458: CopySetupReqPkg(SetupGetCfgDescr);
	mov	dptr,#_SetupGetCfgDescr
	lcall	_CopySetupReqPkg
;	src\usbhost.c:459: pSetupReq->wLengthL = len;                         // 完整配置描述符的总长度
	mov	dptr,#(_TxBuffer + 0x0006)
	mov	a,_CtrlGetConfigDescr_len_10000_158
	movx	@dptr,a
;	src\usbhost.c:460: s = HostCtrlTransfer(Com_Buffer, (uint8_t *)&len); // 执行控制传输
	mov	_HostCtrlTransfer_PARM_2,#_CtrlGetConfigDescr_len_10000_158
	mov	(_HostCtrlTransfer_PARM_2 + 1),#0x00
	mov	(_HostCtrlTransfer_PARM_2 + 2),#0x40
	mov	dptr,#_Com_Buffer
	lcall	_HostCtrlTransfer
;	src\usbhost.c:461: if (s != ERR_SUCCESS)
	mov	a,dpl
	mov	r7,a
	jz	00104$
;	src\usbhost.c:463: return (s);
	mov	dpl, r7
	ret
00104$:
;	src\usbhost.c:465: return (ERR_SUCCESS);
	mov	dpl, #0x00
;	src\usbhost.c:466: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'CtrlSetUsbAddress'
;------------------------------------------------------------
;addr                      Allocated to registers r7 
;s                         Allocated to registers r5 
;------------------------------------------------------------
;	src\usbhost.c:475: uint8_t CtrlSetUsbAddress(uint8_t addr)
;	-----------------------------------------
;	 function CtrlSetUsbAddress
;	-----------------------------------------
_CtrlSetUsbAddress:
	mov	r7, dpl
;	src\usbhost.c:478: CopySetupReqPkg(SetupSetUsbAddr);
	mov	dptr,#_SetupSetUsbAddr
	push	ar7
	lcall	_CopySetupReqPkg
	pop	ar7
;	src\usbhost.c:479: pSetupReq->wValueL = addr;        // USB设备地址
	mov	dptr,#(_TxBuffer + 0x0002)
	mov	a,r7
	movx	@dptr,a
;	src\usbhost.c:480: s = HostCtrlTransfer(NULL, NULL); // 执行控制传输
	clr	a
	mov	_HostCtrlTransfer_PARM_2,a
	mov	(_HostCtrlTransfer_PARM_2 + 1),a
	mov	(_HostCtrlTransfer_PARM_2 + 2),a
	mov	dptr,#0x0000
	push	ar7
	lcall	_HostCtrlTransfer
	mov	r6, dpl
	pop	ar7
;	src\usbhost.c:481: if (s != ERR_SUCCESS)
	mov	a,r6
	mov	r5,a
	jz	00102$
;	src\usbhost.c:483: return (s);
	mov	dpl, r5
	ret
00102$:
;	src\usbhost.c:485: SetHostUsbAddr(addr); // 设置USB主机当前操作的USB设备地址
	mov	dpl, r7
	lcall	_SetHostUsbAddr
;	src\usbhost.c:486: mDelaymS(10);         // 等待USB设备完成操作
	mov	dptr,#0x000a
	lcall	_mDelaymS
;	src\usbhost.c:487: return (ERR_SUCCESS);
	mov	dpl, #0x00
;	src\usbhost.c:488: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'CtrlSetUsbConfig'
;------------------------------------------------------------
;cfg                       Allocated to registers r7 
;------------------------------------------------------------
;	src\usbhost.c:497: uint8_t CtrlSetUsbConfig(uint8_t cfg)
;	-----------------------------------------
;	 function CtrlSetUsbConfig
;	-----------------------------------------
_CtrlSetUsbConfig:
	mov	r7, dpl
;	src\usbhost.c:499: CopySetupReqPkg(SetupSetUsbConfig);
	mov	dptr,#_SetupSetUsbConfig
	push	ar7
	lcall	_CopySetupReqPkg
	pop	ar7
;	src\usbhost.c:500: pSetupReq->wValueL = cfg;              // USB设备配置
	mov	dptr,#(_TxBuffer + 0x0002)
	mov	a,r7
	movx	@dptr,a
;	src\usbhost.c:501: return (HostCtrlTransfer(NULL, NULL)); // 执行控制传输
	clr	a
	mov	_HostCtrlTransfer_PARM_2,a
	mov	(_HostCtrlTransfer_PARM_2 + 1),a
	mov	(_HostCtrlTransfer_PARM_2 + 2),a
	mov	dptr,#0x0000
;	src\usbhost.c:502: }
	ljmp	_HostCtrlTransfer
;------------------------------------------------------------
;Allocation info for local variables in function 'CtrlClearEndpStall'
;------------------------------------------------------------
;endp                      Allocated to registers r7 
;------------------------------------------------------------
;	src\usbhost.c:511: uint8_t CtrlClearEndpStall(uint8_t endp)
;	-----------------------------------------
;	 function CtrlClearEndpStall
;	-----------------------------------------
_CtrlClearEndpStall:
	mov	r7, dpl
;	src\usbhost.c:513: CopySetupReqPkg(SetupClrEndpStall);    // 清除端点的错误
	mov	dptr,#_SetupClrEndpStall
	push	ar7
	lcall	_CopySetupReqPkg
	pop	ar7
;	src\usbhost.c:514: pSetupReq->wIndexL = endp;             // 端点地址
	mov	dptr,#(_TxBuffer + 0x0004)
	mov	a,r7
	movx	@dptr,a
;	src\usbhost.c:515: return (HostCtrlTransfer(NULL, NULL)); // 执行控制传输
	clr	a
	mov	_HostCtrlTransfer_PARM_2,a
	mov	(_HostCtrlTransfer_PARM_2 + 1),a
	mov	(_HostCtrlTransfer_PARM_2 + 2),a
	mov	dptr,#0x0000
;	src\usbhost.c:516: }
	ljmp	_HostCtrlTransfer
;------------------------------------------------------------
;Allocation info for local variables in function 'CtrlSetUsbInterface'
;------------------------------------------------------------
;cfg                       Allocated to registers r7 
;------------------------------------------------------------
;	src\usbhost.c:526: uint8_t CtrlSetUsbInterface(uint8_t cfg)
;	-----------------------------------------
;	 function CtrlSetUsbInterface
;	-----------------------------------------
_CtrlSetUsbInterface:
	mov	r7, dpl
;	src\usbhost.c:528: CopySetupReqPkg(SetupSetUsbInterface);
	mov	dptr,#_SetupSetUsbInterface
	push	ar7
	lcall	_CopySetupReqPkg
	pop	ar7
;	src\usbhost.c:529: pSetupReq->wValueL = cfg;              // USB设备配置
	mov	dptr,#(_TxBuffer + 0x0002)
	mov	a,r7
	movx	@dptr,a
;	src\usbhost.c:530: return (HostCtrlTransfer(NULL, NULL)); // 执行控制传输
	clr	a
	mov	_HostCtrlTransfer_PARM_2,a
	mov	(_HostCtrlTransfer_PARM_2 + 1),a
	mov	(_HostCtrlTransfer_PARM_2 + 2),a
	mov	dptr,#0x0000
;	src\usbhost.c:531: }
	ljmp	_HostCtrlTransfer
;------------------------------------------------------------
;Allocation info for local variables in function 'CtrlGetHIDDeviceReport'
;------------------------------------------------------------
;infc                      Allocated to registers r7 
;s                         Allocated to registers r7 
;len                       Allocated with name '_CtrlGetHIDDeviceReport_len_10000_171'
;------------------------------------------------------------
;	src\usbhost.c:541: uint8_t CtrlGetHIDDeviceReport(uint8_t infc)
;	-----------------------------------------
;	 function CtrlGetHIDDeviceReport
;	-----------------------------------------
_CtrlGetHIDDeviceReport:
	mov	r7, dpl
;	src\usbhost.c:546: CopySetupReqPkg(SetupSetHIDIdle);
	mov	dptr,#_SetupSetHIDIdle
	push	ar7
	lcall	_CopySetupReqPkg
	pop	ar7
;	src\usbhost.c:547: TxBuffer[4] = infc;
	mov	dptr,#(_TxBuffer + 0x0004)
	mov	a,r7
	movx	@dptr,a
;	src\usbhost.c:548: s = HostCtrlTransfer(Com_Buffer, (uint8_t *)&len); // 执行控制传输
	mov	_HostCtrlTransfer_PARM_2,#_CtrlGetHIDDeviceReport_len_10000_171
	mov	(_HostCtrlTransfer_PARM_2 + 1),#0x00
	mov	(_HostCtrlTransfer_PARM_2 + 2),#0x40
	mov	dptr,#_Com_Buffer
	push	ar7
	lcall	_HostCtrlTransfer
	mov	r6, dpl
	pop	ar7
;	src\usbhost.c:549: if (s != ERR_SUCCESS)
	mov	a,r6
	jz	00102$
;	src\usbhost.c:551: return (s);
	mov	dpl, r6
	ret
00102$:
;	src\usbhost.c:554: CopySetupReqPkg(SetupGetHIDDevReport);
	mov	dptr,#_SetupGetHIDDevReport
	push	ar7
	lcall	_CopySetupReqPkg
	pop	ar7
;	src\usbhost.c:555: TxBuffer[4] = infc;
	mov	dptr,#(_TxBuffer + 0x0004)
	mov	a,r7
	movx	@dptr,a
;	src\usbhost.c:556: s = HostCtrlTransfer(Com_Buffer, (uint8_t *)&len); // 执行控制传输
	mov	_HostCtrlTransfer_PARM_2,#_CtrlGetHIDDeviceReport_len_10000_171
	mov	(_HostCtrlTransfer_PARM_2 + 1),#0x00
	mov	(_HostCtrlTransfer_PARM_2 + 2),#0x40
	mov	dptr,#_Com_Buffer
	lcall	_HostCtrlTransfer
;	src\usbhost.c:557: if (s != ERR_SUCCESS)
	mov	a,dpl
	mov	r7,a
	jz	00104$
;	src\usbhost.c:559: return (s);
	mov	dpl, r7
	ret
00104$:
;	src\usbhost.c:562: return (ERR_SUCCESS);
	mov	dpl, #0x00
;	src\usbhost.c:563: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'AnalyzeHidIntEndp'
;------------------------------------------------------------
;buf                       Allocated to registers r6 r7 
;i                         Allocated to registers r5 
;s                         Allocated to registers r4 
;l                         Allocated to registers r3 
;------------------------------------------------------------
;	src\usbhost.c:572: uint8_t AnalyzeHidIntEndp(__xdata uint8_t *buf)
;	-----------------------------------------
;	 function AnalyzeHidIntEndp
;	-----------------------------------------
_AnalyzeHidIntEndp:
	mov	r6, dpl
	mov	r7, dph
;	src\usbhost.c:577: memset(ThisUsbDev.GpVar, 0, sizeof(ThisUsbDev.GpVar)); // 清空数组
	mov	_memset_PARM_2,#0x00
	mov	_memset_PARM_3,#0x04
	mov	(_memset_PARM_3 + 1),#0x00
	mov	dptr,#(_ThisUsbDev + 0x0008)
	mov	b, #0x00
	push	ar7
	push	ar6
	lcall	_memset
	pop	ar6
	pop	ar7
;	src\usbhost.c:579: for (i = 0; i < ((PXUSB_CFG_DESCR)buf)->wTotalLengthL; i += l) // 搜索中断端点描述符,跳过配置描述符和接口描述符
	mov	r5,#0x00
	mov	r4,#0x00
00111$:
	mov	ar2,r6
	mov	ar3,r7
	mov	dpl,r2
	mov	dph,r3
	inc	dptr
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	clr	c
	mov	a,r5
	subb	a,r3
	jnc	00109$
;	src\usbhost.c:581: if (((PXUSB_ENDP_DESCR)(buf + i))->bDescriptorType == USB_DESCR_TYP_ENDP                         // 是端点描述符
	mov	a,r5
	add	a, r6
	mov	r2,a
	clr	a
	addc	a, r7
	mov	r3,a
	mov	ar0,r2
	mov	ar1,r3
	mov	dpl,r0
	mov	dph,r1
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	cjne	r1,#0x05,00104$
;	src\usbhost.c:582: && (((PXUSB_ENDP_DESCR)(buf + i))->bmAttributes & USB_ENDP_TYPE_MASK) == USB_ENDP_TYPE_INTER // 是中断端点
	mov	ar0,r2
	mov	ar1,r3
	mov	dpl,r0
	mov	dph,r1
	inc	dptr
	inc	dptr
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	anl	ar1,#0x03
	cjne	r1,#0x03,00104$
;	src\usbhost.c:583: && (((PXUSB_ENDP_DESCR)(buf + i))->bEndpointAddress & USB_ENDP_DIR_MASK))                    // 是IN端点
	mov	ar0,r2
	mov	ar1,r3
	mov	dpl,r0
	mov	dph,r1
	inc	dptr
	inc	dptr
	movx	a,@dptr
	jnb	acc.7,00104$
;	src\usbhost.c:585: ThisUsbDev.GpVar[s] = ((PXUSB_ENDP_DESCR)(buf + i))->bEndpointAddress & USB_ENDP_ADDR_MASK;  // 中断端点的地址，可以根据需要保存wMaxPacketSize和bInterval
	mov	a,r4
	add	a, #(_ThisUsbDev + 0x0008)
	mov	r0,a
	clr	a
	addc	a, #((_ThisUsbDev + 0x0008) >> 8)
	mov	r1,a
	mov	dpl,r2
	mov	dph,r3
	inc	dptr
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	anl	ar3,#0x0f
	mov	dpl,r0
	mov	dph,r1
	mov	a,r3
	movx	@dptr,a
;	src\usbhost.c:589: s++;
	inc	r4
;	src\usbhost.c:590: if (s >= 4)
	cjne	r4,#0x04,00158$
00158$:
	jnc	00109$
;	src\usbhost.c:591: break; // Only analyze 4 endpoints
00104$:
;	src\usbhost.c:593: l = ((PXUSB_ENDP_DESCR)(buf + i))->bLength; // 当前描述符长度,跳过
	mov	a,r5
	add	a, r6
	mov	dpl,a
	clr	a
	addc	a, r7
	mov	dph,a
	movx	a,@dptr
;	src\usbhost.c:594: if (l > 16)
	mov  r3,a
	add	a,#0xff - 0x10
	jc	00109$
;	src\usbhost.c:579: for (i = 0; i < ((PXUSB_CFG_DESCR)buf)->wTotalLengthL; i += l) // 搜索中断端点描述符,跳过配置描述符和接口描述符
	mov	a,r3
	add	a, r5
	mov	r5,a
	ljmp	00111$
00109$:
;	src\usbhost.c:602: return (s);
	mov	dpl, r4
;	src\usbhost.c:603: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'AnalyzeBulkEndp'
;------------------------------------------------------------
;buf                       Allocated with name '_AnalyzeBulkEndp_buf_10000_180'
;i                         Allocated to registers r3 
;s1                        Allocated with name '_AnalyzeBulkEndp_s1_10000_181'
;s2                        Allocated with name '_AnalyzeBulkEndp_s2_10000_181'
;l                         Allocated to registers r7 
;------------------------------------------------------------
;	src\usbhost.c:612: uint8_t AnalyzeBulkEndp(__xdata uint8_t *buf)
;	-----------------------------------------
;	 function AnalyzeBulkEndp
;	-----------------------------------------
_AnalyzeBulkEndp:
	mov	_AnalyzeBulkEndp_buf_10000_180,dpl
	mov	(_AnalyzeBulkEndp_buf_10000_180 + 1),dph
;	src\usbhost.c:615: s1 = 0;
	mov	_AnalyzeBulkEndp_s1_10000_181,#0x00
;	src\usbhost.c:616: s2 = 2;
	mov	_AnalyzeBulkEndp_s2_10000_181,#0x02
;	src\usbhost.c:618: memset(ThisUsbDev.GpVar, 0, sizeof(ThisUsbDev.GpVar)); // 清空数组
	mov	_memset_PARM_2,#0x00
	mov	_memset_PARM_3,#0x04
	mov	(_memset_PARM_3 + 1),#0x00
	mov	dptr,#(_ThisUsbDev + 0x0008)
	mov	b, #0x00
	lcall	_memset
;	src\usbhost.c:620: for (i = 0; i < ((PXUSB_CFG_DESCR)buf)->wTotalLengthL; i += l) // 搜索中断端点描述符,跳过配置描述符和接口描述符
	mov	r3,#0x00
00115$:
	mov	r1,_AnalyzeBulkEndp_buf_10000_180
	mov	r2,(_AnalyzeBulkEndp_buf_10000_180 + 1)
	mov	dpl,r1
	mov	dph,r2
	inc	dptr
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	clr	c
	mov	a,r3
	subb	a,r2
	jc	00167$
	ljmp	00113$
00167$:
;	src\usbhost.c:622: if ((((PXUSB_ENDP_DESCR)(buf + i))->bDescriptorType == USB_DESCR_TYP_ENDP)                         // 是端点描述符
	mov	a,r3
	add	a, _AnalyzeBulkEndp_buf_10000_180
	mov	r1,a
	clr	a
	addc	a, (_AnalyzeBulkEndp_buf_10000_180 + 1)
	mov	r2,a
	mov	ar0,r1
	mov	ar4,r2
	mov	dpl,r0
	mov	dph,r4
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	cjne	r4,#0x05,00168$
	sjmp	00169$
00168$:
	ljmp	00109$
00169$:
;	src\usbhost.c:623: && ((((PXUSB_ENDP_DESCR)(buf + i))->bmAttributes & USB_ENDP_TYPE_MASK) == USB_ENDP_TYPE_BULK)) // 是中断端点
	mov	ar0,r1
	mov	ar4,r2
	mov	dpl,r0
	mov	dph,r4
	inc	dptr
	inc	dptr
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	anl	ar4,#0x03
	cjne	r4,#0x02,00109$
;	src\usbhost.c:626: if (((PXUSB_ENDP_DESCR)(buf + i))->bEndpointAddress & USB_ENDP_DIR_MASK)
	mov	ar0,r1
	mov	ar4,r2
	mov	dpl,r0
	mov	dph,r4
	inc	dptr
	inc	dptr
	movx	a,@dptr
	jnb	acc.7,00102$
;	src\usbhost.c:627: ThisUsbDev.GpVar[s1++] = ((PXUSB_ENDP_DESCR)(buf + i))->bEndpointAddress & USB_ENDP_ADDR_MASK;
	mov	r4,_AnalyzeBulkEndp_s1_10000_181
	inc	_AnalyzeBulkEndp_s1_10000_181
	mov	a,r4
	add	a, #(_ThisUsbDev + 0x0008)
	mov	r0,a
	clr	a
	addc	a, #((_ThisUsbDev + 0x0008) >> 8)
	mov	r4,a
	mov	ar5,r1
	mov	ar7,r2
	mov	dpl,r5
	mov	dph,r7
	inc	dptr
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	anl	ar7,#0x0f
	mov	dpl,r0
	mov	dph,r4
	mov	a,r7
	movx	@dptr,a
	sjmp	00103$
00102$:
;	src\usbhost.c:629: ThisUsbDev.GpVar[s2++] = ((PXUSB_ENDP_DESCR)(buf + i))->bEndpointAddress & USB_ENDP_ADDR_MASK;
	mov	r7,_AnalyzeBulkEndp_s2_10000_181
	inc	_AnalyzeBulkEndp_s2_10000_181
	mov	a,r7
	add	a, #(_ThisUsbDev + 0x0008)
	mov	r7,a
	clr	a
	addc	a, #((_ThisUsbDev + 0x0008) >> 8)
	mov	r6,a
	mov	dpl,r1
	mov	dph,r2
	inc	dptr
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	anl	ar5,#0x0f
	mov	dpl,r7
	mov	dph,r6
	mov	a,r5
	movx	@dptr,a
00103$:
;	src\usbhost.c:631: if (s1 == 2)
	mov	a,#0x02
	cjne	a,_AnalyzeBulkEndp_s1_10000_181,00105$
;	src\usbhost.c:632: s1 = 1;
	mov	_AnalyzeBulkEndp_s1_10000_181,#0x01
00105$:
;	src\usbhost.c:633: if (s2 == 4)
	mov	a,#0x04
	cjne	a,_AnalyzeBulkEndp_s2_10000_181,00109$
;	src\usbhost.c:634: s2 = 3;
	mov	_AnalyzeBulkEndp_s2_10000_181,#0x03
00109$:
;	src\usbhost.c:636: l = ((PXUSB_ENDP_DESCR)(buf + i))->bLength; // 当前描述符长度,跳过
	mov	a,r3
	add	a, _AnalyzeBulkEndp_buf_10000_180
	mov	dpl,a
	clr	a
	addc	a, (_AnalyzeBulkEndp_buf_10000_180 + 1)
	mov	dph,a
	movx	a,@dptr
;	src\usbhost.c:637: if (l > 16)
	mov  r7,a
	add	a,#0xff - 0x10
	jc	00113$
;	src\usbhost.c:620: for (i = 0; i < ((PXUSB_CFG_DESCR)buf)->wTotalLengthL; i += l) // 搜索中断端点描述符,跳过配置描述符和接口描述符
	mov	a,r7
	add	a, r3
	mov	r3,a
	ljmp	00115$
00113$:
;	src\usbhost.c:642: return (0);
	mov	dpl, #0x00
;	src\usbhost.c:643: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'InitRootDevice'
;------------------------------------------------------------
;t                         Allocated to registers r6 
;i                         Allocated to registers r5 
;s                         Allocated to registers r7 
;cfg                       Allocated to registers r4 
;dv_cls                    Allocated to registers r5 
;if_cls                    Allocated to registers r5 
;ifc                       Allocated to registers r3 
;if_cls2                   Allocated to registers r1 
;------------------------------------------------------------
;	src\usbhost.c:652: uint8_t InitRootDevice(void)
;	-----------------------------------------
;	 function InitRootDevice
;	-----------------------------------------
_InitRootDevice:
;	src\usbhost.c:656: s = 0;
	mov	r7,#0x00
;	src\usbhost.c:660: USBDevEnum:
	mov	r6,#0x00
;	src\usbhost.c:661: for (i = 0; i < t; i++)
00153$:
	clr	c
	mov	a,#0x0a
	subb	a,r6
	clr	a
	rlc	a
	mov	r5,a
	mov	r4,#0x00
00141$:
	clr	c
	mov	a,r4
	subb	a,r6
	jnc	00104$
;	src\usbhost.c:663: mDelaymS(100);
	mov	dptr,#0x0064
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_mDelaymS
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	src\usbhost.c:664: if (t > 10)
	mov	a,r5
	jz	00142$
;	src\usbhost.c:665: return (s);
	mov	dpl, r7
	ret
00142$:
;	src\usbhost.c:661: for (i = 0; i < t; i++)
	inc	r4
	sjmp	00141$
00104$:
;	src\usbhost.c:667: ResetRootHubPort();              // 检测到设备后,复位相应端口的USB总线
	push	ar6
	lcall	_ResetRootHubPort
	pop	ar6
;	src\usbhost.c:668: for (i = 0, s = 0; i < 100; i++) // 等待USB设备复位后重新连接,100mS超时
	mov	r5,#0x00
	mov	r4,#0x00
00144$:
	cjne	r5,#0x64,00316$
00316$:
	jnc	00111$
;	src\usbhost.c:670: mDelaymS(1);
	mov	dptr,#0x0001
	push	ar6
	push	ar5
	push	ar4
	lcall	_mDelaymS
;	src\usbhost.c:671: if (EnableRootHubPort() == ERR_SUCCESS) // 使能ROOT-HUB端口
	lcall	_EnableRootHubPort
	mov	a, dpl
	pop	ar4
	pop	ar5
	pop	ar6
;	src\usbhost.c:673: i = 0;
	jnz	00108$
	mov	r5,a
;	src\usbhost.c:674: s++; // 计时等待USB设备连接后稳定
	inc	r4
;	src\usbhost.c:675: if (s > (20 + t))
	mov	ar2,r6
	mov	r3,#0x00
	mov	a,#0x14
	add	a, r2
	mov	r2,a
	clr	a
	addc	a, r3
	mov	r3,a
	mov	ar0,r4
	mov	r1,#0x00
	clr	c
	mov	a,r2
	subb	a,r0
	mov	a,r3
	xrl	a,#0x80
	mov	b,r1
	xrl	b,#0x80
	subb	a,b
	jc	00111$
;	src\usbhost.c:677: break; // 已经稳定连接15mS
00108$:
;	src\usbhost.c:680: if (i) // The device is not connected after reset
	mov	a,r5
	jz	00145$
;	src\usbhost.c:682: DisableRootHubPort();
	push	ar6
	push	ar5
	push	ar4
	lcall	_DisableRootHubPort
	pop	ar4
	pop	ar5
	pop	ar6
00145$:
;	src\usbhost.c:668: for (i = 0, s = 0; i < 100; i++) // 等待USB设备复位后重新连接,100mS超时
	inc	r5
	sjmp	00144$
00111$:
;	src\usbhost.c:689: SelectHubPort();
	push	ar6
	lcall	_SelectHubPort
;	src\usbhost.c:696: s = CtrlGetDeviceDescr(); // Get device descriptor
	lcall	_CtrlGetDeviceDescr
	mov	r7, dpl
	pop	ar6
;	src\usbhost.c:697: if (s == ERR_SUCCESS)
	mov	a,r7
	jz	00321$
	ljmp	00139$
00321$:
;	src\usbhost.c:706: ThisUsbDev.DeviceVID = (((uint16_t)((PXUSB_DEV_DESCR)Com_Buffer)->idVendorH) << 8) + ((PXUSB_DEV_DESCR)Com_Buffer)->idVendorL; // 保存VID PID信息
	mov	dptr,#(_Com_Buffer + 0x0009)
	movx	a,@dptr
	mov	r4,a
	mov	r5,#0x00
	mov	dptr,#(_Com_Buffer + 0x0008)
	movx	a,@dptr
	mov	r2,#0x00
	add	a, r5
	mov	r5,a
	mov	a,r2
	addc	a, r4
	mov	r4,a
	mov	dptr,#(_ThisUsbDev + 0x0004)
	mov	a,r5
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
;	src\usbhost.c:707: ThisUsbDev.DevicePID = (((uint16_t)((PXUSB_DEV_DESCR)Com_Buffer)->idProductH) << 8) + ((PXUSB_DEV_DESCR)Com_Buffer)->idProductL;
	mov	dptr,#(_Com_Buffer + 0x000b)
	movx	a,@dptr
	mov	r4,a
	mov	r5,#0x00
	mov	dptr,#(_Com_Buffer + 0x000a)
	movx	a,@dptr
	add	a, r5
	mov	r5,a
	mov	a,r2
	addc	a, r4
	mov	r4,a
	mov	dptr,#(_ThisUsbDev + 0x0006)
	mov	a,r5
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
;	src\usbhost.c:708: dv_cls = ((PXUSB_DEV_DESCR)Com_Buffer)->bDeviceClass;              // 设备类代码
	mov	dptr,#(_Com_Buffer + 0x0004)
	movx	a,@dptr
	mov	r5,a
;	src\usbhost.c:709: s = CtrlSetUsbAddress(((PUSB_SETUP_REQ)SetupSetUsbAddr)->wValueL); // 设置USB设备地址,加上RootHubIndex可以保证2个HUB端口分配不同的地址
	mov	dptr,#(_SetupSetUsbAddr + 0x0002)
	clr	a
	movc	a,@a+dptr
	mov	dpl,a
	push	ar6
	push	ar5
	lcall	_CtrlSetUsbAddress
	mov	r7, dpl
	pop	ar5
	pop	ar6
;	src\usbhost.c:710: if (s == ERR_SUCCESS)
	mov	a,r7
	jz	00322$
	ljmp	00139$
00322$:
;	src\usbhost.c:712: ThisUsbDev.DeviceAddress = ((PUSB_SETUP_REQ)SetupSetUsbAddr)->wValueL; // 保存USB地址
	mov	dptr,#(_SetupSetUsbAddr + 0x0002)
	clr	a
	movc	a,@a+dptr
	mov	dptr,#(_ThisUsbDev + 0x0001)
	movx	@dptr,a
;	src\usbhost.c:716: s = CtrlGetConfigDescr(); // 获取配置描述符
	push	ar6
	push	ar5
	lcall	_CtrlGetConfigDescr
	mov	r7, dpl
	pop	ar5
	pop	ar6
;	src\usbhost.c:717: if (s == ERR_SUCCESS)
	mov	a,r7
	jz	00323$
	ljmp	00139$
00323$:
;	src\usbhost.c:719: cfg = ((PXUSB_CFG_DESCR)Com_Buffer)->bConfigurationValue;
	mov	dptr,#(_Com_Buffer + 0x0005)
	movx	a,@dptr
	mov	r4,a
;	src\usbhost.c:720: ifc = ((PXUSB_CFG_DESCR)Com_Buffer)->bNumInterfaces;
	mov	dptr,#(_Com_Buffer + 0x0004)
	movx	a,@dptr
	mov	r3,a
;	src\usbhost.c:729: if_cls = ((PXUSB_CFG_DESCR_LONG)Com_Buffer)->itf_descr.bInterfaceClass; // 接口类代码
	mov	dptr,#(_Com_Buffer + 0x000e)
	movx	a,@dptr
	mov	r2,a
;	src\usbhost.c:730: if_cls2 = Com_Buffer[41];
	mov	dptr,#(_Com_Buffer + 0x0029)
	movx	a,@dptr
	mov	r1,a
;	src\usbhost.c:732: if ((dv_cls == 0x00) && (if_cls == USB_DEV_CLASS_HID) && (((PXUSB_CFG_DESCR_LONG)Com_Buffer)->itf_descr.bInterfaceSubClass <= 0x01)) // 是HID类设备,键盘/鼠标等
	mov	a,r5
	jz	00324$
	ljmp	00130$
00324$:
	cjne	r2,#0x03,00325$
	sjmp	00326$
00325$:
	ljmp	00130$
00326$:
	mov	dptr,#(_Com_Buffer + 0x000f)
	movx	a,@dptr
	add	a,#0xff - 0x01
	jnc	00327$
	ljmp	00130$
00327$:
;	src\usbhost.c:734: s = AnalyzeHidIntEndp(Com_Buffer); // 从描述符中分析出HID中断端点的地址
	mov	dptr,#_Com_Buffer
	push	ar6
	push	ar4
	push	ar3
	push	ar1
	lcall	_AnalyzeHidIntEndp
	pop	ar1
	pop	ar3
	pop	ar4
;	src\usbhost.c:740: if_cls = ((PXUSB_CFG_DESCR_LONG)Com_Buffer)->itf_descr.bInterfaceProtocol;
	mov	dptr,#(_Com_Buffer + 0x0010)
	movx	a,@dptr
	mov	r5,a
;	src\usbhost.c:748: s = CtrlSetUsbConfig(cfg); // 设置USB设备配置
	mov	dpl, r4
	push	ar5
	push	ar3
	push	ar1
	lcall	_CtrlSetUsbConfig
	mov	r7, dpl
	pop	ar1
	pop	ar3
	pop	ar5
	pop	ar6
;	src\usbhost.c:749: if (s == ERR_SUCCESS)
	mov	a,r7
	jz	00328$
	ljmp	00139$
00328$:
;	src\usbhost.c:754: for (dv_cls = 0; dv_cls < ifc; dv_cls++) // ifc = nbinterfaces
	mov	r2,#0x00
00147$:
	clr	c
	mov	a,r2
	subb	a,r3
	jnc	00112$
;	src\usbhost.c:756: s = CtrlGetHIDDeviceReport(dv_cls); // 获取报表描述符
	mov	dpl, r2
	push	ar6
	push	ar5
	push	ar3
	push	ar2
	push	ar1
	lcall	_CtrlGetHIDDeviceReport
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar5
	pop	ar6
;	src\usbhost.c:754: for (dv_cls = 0; dv_cls < ifc; dv_cls++) // ifc = nbinterfaces
	inc	r2
	sjmp	00147$
00112$:
;	src\usbhost.c:770: ThisUsbDev.DeviceStatus = ROOT_DEV_SUCCESS;
	mov	dptr,#_ThisUsbDev
	mov	a,#0x03
	movx	@dptr,a
;	src\usbhost.c:771: if (if_cls == 1)
	cjne	r5,#0x01,00125$
;	src\usbhost.c:773: ThisUsbDev.DeviceType = DEV_TYPE_KEYBOARD;
	mov	dptr,#(_ThisUsbDev + 0x0003)
	mov	a,#0x23
	movx	@dptr,a
;	src\usbhost.c:775: if (ifc > 1)
	mov	a,r3
	add	a,#0xff - 0x01
	jnc	00116$
;	src\usbhost.c:780: ThisUsbDev.DeviceType = USB_DEV_CLASS_HID; // 复合HID设备
	mov	dptr,#(_ThisUsbDev + 0x0003)
	mov	a,#0x03
	movx	@dptr,a
;	src\usbhost.c:781: if (if_cls2 == 2)
	cjne	r1,#0x02,00116$
;	src\usbhost.c:783: ThisUsbDev.DeviceType = DEV_TYPE_MOUSE2;
	mov	dptr,#(_ThisUsbDev + 0x0003)
	mov	a,#0x43
	movx	@dptr,a
;	src\usbhost.c:786: SetBootProto(0); // Keyboard proto
	mov	dpl, #0x00
	lcall	_SetBootProto
;	src\usbhost.c:787: SetBootProto(1);
	mov	dpl, #0x01
	lcall	_SetBootProto
00116$:
;	src\usbhost.c:796: SetUsbSpeed(1); // 默认为全速
	mov	dpl, #0x01
	lcall	_SetUsbSpeed
;	src\usbhost.c:798: return (ERR_SUCCESS);
	mov	dpl, #0x00
	ret
00125$:
;	src\usbhost.c:800: else if (if_cls == 2)
	cjne	r5,#0x02,00122$
;	src\usbhost.c:802: ThisUsbDev.DeviceType = DEV_TYPE_MOUSE;
	mov	dptr,#(_ThisUsbDev + 0x0003)
	mov	a,#0x33
	movx	@dptr,a
;	src\usbhost.c:811: SetBootProto(0);
	mov	dpl, #0x00
	lcall	_SetBootProto
;	src\usbhost.c:815: SetUsbSpeed(1); // The default is full speed
	mov	dpl, #0x01
	lcall	_SetUsbSpeed
;	src\usbhost.c:817: return (ERR_SUCCESS);
	mov	dpl, #0x00
	ret
00122$:
;	src\usbhost.c:819: else if (if_cls == 0)
	mov	a,r5
	jnz	00126$
;	src\usbhost.c:821: ThisUsbDev.DeviceType = DEV_TYPE_JOYSTICK;
	mov	dptr,#(_ThisUsbDev + 0x0003)
	mov	a,#0x53
	movx	@dptr,a
;	src\usbhost.c:823: if (ifc > 1)
	mov	a,r3
	add	a,#0xff - 0x01
	jnc	00118$
;	src\usbhost.c:828: ThisUsbDev.DeviceType = USB_DEV_CLASS_HID; // Composite HID equipment
	mov	dptr,#(_ThisUsbDev + 0x0003)
	mov	a,#0x03
	movx	@dptr,a
00118$:
;	src\usbhost.c:833: SetUsbSpeed(1); // The default is full speed
	mov	dpl, #0x01
	lcall	_SetUsbSpeed
;	src\usbhost.c:835: return (ERR_SUCCESS);
	mov	dpl, #0x00
	ret
00126$:
;	src\usbhost.c:837: s = ERR_USB_UNSUPPORT;
	mov	r7,#0xfb
	sjmp	00139$
00130$:
;	src\usbhost.c:853: AnalyzeBulkEndp(Com_Buffer); // 分析出批量端点
	mov	dptr,#_Com_Buffer
	push	ar6
	push	ar4
	lcall	_AnalyzeBulkEndp
	pop	ar4
;	src\usbhost.c:861: s = CtrlSetUsbConfig(cfg); // 设置USB设备配置
	mov	dpl, r4
	lcall	_CtrlSetUsbConfig
	mov	r7, dpl
	pop	ar6
;	src\usbhost.c:862: if (s == ERR_SUCCESS)
00139$:
;	src\usbhost.c:879: ThisUsbDev.DeviceStatus = ROOT_DEV_FAILED;
	mov	dptr,#_ThisUsbDev
	mov	a,#0x02
	movx	@dptr,a
;	src\usbhost.c:880: SetUsbSpeed(1); // 默认为全速
	mov	dpl, #0x01
	push	ar7
	push	ar6
	lcall	_SetUsbSpeed
	pop	ar6
	pop	ar7
;	src\usbhost.c:881: t++;
	inc	r6
;	src\usbhost.c:882: goto USBDevEnum;
;	src\usbhost.c:883: }
	ljmp	00153$
;------------------------------------------------------------
;Allocation info for local variables in function 'EnumAllRootDevice'
;------------------------------------------------------------
;s                         Allocated to registers r6 
;------------------------------------------------------------
;	src\usbhost.c:891: uint8_t EnumAllRootDevice(void)
;	-----------------------------------------
;	 function EnumAllRootDevice
;	-----------------------------------------
_EnumAllRootDevice:
;	src\usbhost.c:897: if (ThisUsbDev.DeviceStatus == ROOT_DEV_CONNECTED) // The device has just been plugged in and has not been initialized
	mov	dptr,#_ThisUsbDev
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x01,00104$
;	src\usbhost.c:899: s = InitRootDevice(); // Initialize/enumerate the USB devices of the specified HUB port
	lcall	_InitRootDevice
;	src\usbhost.c:900: if (s != ERR_SUCCESS)
	mov	a,dpl
	mov	r6,a
	jz	00104$
;	src\usbhost.c:902: return (s);
	mov	dpl, r6
	ret
00104$:
;	src\usbhost.c:905: return (ERR_SUCCESS);
	mov	dpl, #0x00
;	src\usbhost.c:906: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'SearchTypeDevice'
;------------------------------------------------------------
;type                      Allocated to registers r7 
;RootHubIndex              Allocated to registers 
;------------------------------------------------------------
;	src\usbhost.c:916: uint16_t SearchTypeDevice(uint8_t type)
;	-----------------------------------------
;	 function SearchTypeDevice
;	-----------------------------------------
_SearchTypeDevice:
	mov	r7, dpl
;	src\usbhost.c:922: if ((ThisUsbDev.DeviceType == type) && (ThisUsbDev.DeviceStatus >= ROOT_DEV_SUCCESS))
	mov	dptr,#(_ThisUsbDev + 0x0003)
	movx	a,@dptr
	cjne	a,ar7,00102$
	mov	dptr,#_ThisUsbDev
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x03,00120$
00120$:
	jc	00102$
;	src\usbhost.c:924: return ((uint16_t)RootHubIndex << 8); // 类型匹配且枚举成功,在ROOT-HUB端口上
	mov	dptr,#0x0000
	ret
00102$:
;	src\usbhost.c:927: return (0xFFFF);
	mov	dptr,#0xffff
;	src\usbhost.c:928: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'SetBootProto'
;------------------------------------------------------------
;intf                      Allocated to registers r7 
;get                       Allocated with name '_SetBootProto_get_10000_220'
;set                       Allocated with name '_SetBootProto_set_10000_220'
;report                    Allocated with name '_SetBootProto_report_10000_220'
;len                       Allocated with name '_SetBootProto_len_10000_220'
;s                         Allocated to registers r6 
;------------------------------------------------------------
;	src\usbhost.c:930: uint8_t SetBootProto(uint8_t intf)
;	-----------------------------------------
;	 function SetBootProto
;	-----------------------------------------
_SetBootProto:
	mov	r7, dpl
;	src\usbhost.c:932: uint8_t get[] = {0xA1, 0x03, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00};
	mov	_SetBootProto_get_10000_220,#0xa1
	mov	(_SetBootProto_get_10000_220 + 0x0001),#0x03
	mov	(_SetBootProto_get_10000_220 + 0x0002),#0x00
	mov	(_SetBootProto_get_10000_220 + 0x0003),#0x00
	mov	(_SetBootProto_get_10000_220 + 0x0004),#0x00
	mov	(_SetBootProto_get_10000_220 + 0x0005),#0x00
	mov	(_SetBootProto_get_10000_220 + 0x0006),#0x01
	mov	(_SetBootProto_get_10000_220 + 0x0007),#0x00
;	src\usbhost.c:933: uint8_t set[] = {0x21, 0x0b, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00};
	mov	_SetBootProto_set_10000_220,#0x21
	mov	(_SetBootProto_set_10000_220 + 0x0001),#0x0b
	mov	(_SetBootProto_set_10000_220 + 0x0002),#0x00
	mov	(_SetBootProto_set_10000_220 + 0x0003),#0x00
	mov	(_SetBootProto_set_10000_220 + 0x0004),#0x00
	mov	(_SetBootProto_set_10000_220 + 0x0005),#0x00
	mov	(_SetBootProto_set_10000_220 + 0x0006),#0x00
	mov	(_SetBootProto_set_10000_220 + 0x0007),#0x00
;	src\usbhost.c:934: uint8_t report[] = {0x21, 0x09, 0x00, 0x02, 0x00, 0x00, 0x01, 0x00};
	mov	_SetBootProto_report_10000_220,#0x21
	mov	(_SetBootProto_report_10000_220 + 0x0001),#0x09
	mov	(_SetBootProto_report_10000_220 + 0x0002),#0x00
	mov	(_SetBootProto_report_10000_220 + 0x0003),#0x02
	mov	(_SetBootProto_report_10000_220 + 0x0004),#0x00
	mov	(_SetBootProto_report_10000_220 + 0x0005),#0x00
	mov	(_SetBootProto_report_10000_220 + 0x0006),#0x01
	mov	(_SetBootProto_report_10000_220 + 0x0007),#0x00
;	src\usbhost.c:938: for (s = 0; s != sizeof(get); s++)
	mov	r6,#0x00
00109$:
;	src\usbhost.c:940: ((__xdata uint8_t *)pSetupReq)[s] = get[s];
	mov	a,r6
	add	a, #_TxBuffer
	mov	dpl,a
	clr	a
	addc	a, #(_TxBuffer >> 8)
	mov	dph,a
	mov	a,r6
	add	a, #_SetBootProto_get_10000_220
	mov	r1,a
	mov	a,@r1
	movx	@dptr,a
;	src\usbhost.c:938: for (s = 0; s != sizeof(get); s++)
	inc	r6
	cjne	r6,#0x08,00109$
;	src\usbhost.c:942: ((__xdata uint8_t *)pSetupReq)[4] = intf;
	mov	dptr,#(_TxBuffer + 0x0004)
	mov	a,r7
	movx	@dptr,a
;	src\usbhost.c:943: s = HostCtrlTransfer(Com_Buffer, &len);
	mov	_HostCtrlTransfer_PARM_2,#_SetBootProto_len_10000_220
	mov	(_HostCtrlTransfer_PARM_2 + 1),#0x00
	mov	(_HostCtrlTransfer_PARM_2 + 2),#0x40
	mov	dptr,#_Com_Buffer
	push	ar7
	lcall	_HostCtrlTransfer
	mov	r6, dpl
	pop	ar7
;	src\usbhost.c:945: if (s != ERR_SUCCESS)
	mov	a,r6
	jz	00103$
;	src\usbhost.c:947: return (s);
	mov	dpl, r6
	ret
00103$:
;	src\usbhost.c:956: if (Com_Buffer[0] != 0)
	mov	dptr,#_Com_Buffer
	movx	a,@dptr
	jz	00106$
;	src\usbhost.c:958: for (s = 0; s != sizeof(set); s++)
	mov	r5,#0x00
00111$:
;	src\usbhost.c:960: ((__xdata uint8_t *)pSetupReq)[s] = set[s];
	mov	a,r5
	add	a, #_TxBuffer
	mov	dpl,a
	clr	a
	addc	a, #(_TxBuffer >> 8)
	mov	dph,a
	mov	a,r5
	add	a, #_SetBootProto_set_10000_220
	mov	r1,a
	mov	a,@r1
	movx	@dptr,a
;	src\usbhost.c:958: for (s = 0; s != sizeof(set); s++)
	inc	r5
	cjne	r5,#0x08,00111$
;	src\usbhost.c:962: ((__xdata uint8_t *)pSetupReq)[4] = intf;
	mov	dptr,#(_TxBuffer + 0x0004)
	mov	a,r7
	movx	@dptr,a
;	src\usbhost.c:963: s = HostCtrlTransfer(Com_Buffer, &len);
	mov	_HostCtrlTransfer_PARM_2,#_SetBootProto_len_10000_220
	mov	(_HostCtrlTransfer_PARM_2 + 1),#0x00
	mov	(_HostCtrlTransfer_PARM_2 + 2),#0x40
	mov	dptr,#_Com_Buffer
	lcall	_HostCtrlTransfer
	mov	r6, dpl
00106$:
;	src\usbhost.c:984: if (s != ERR_SUCCESS)
	mov	a,r6
	jz	00108$
;	src\usbhost.c:986: return (s);
	mov	dpl, r6
	ret
00108$:
;	src\usbhost.c:988: return (ERR_SUCCESS);
	mov	dpl, #0x00
;	src\usbhost.c:989: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'InitUSB_Host'
;------------------------------------------------------------
;i                         Allocated to registers r7 
;------------------------------------------------------------
;	src\usbhost.c:998: void InitUSB_Host(void)
;	-----------------------------------------
;	 function InitUSB_Host
;	-----------------------------------------
_InitUSB_Host:
;	src\usbhost.c:1001: IE_USB = 0;
;	assignBit
	clr	_IE_USB
;	src\usbhost.c:1004: USB_CTRL = bUC_HOST_MODE;  // 先设定模式
	mov	_USB_CTRL,#0x80
;	src\usbhost.c:1005: UHOST_CTRL &= ~bUH_PD_DIS; // 启用主机下拉
	anl	_UDEV_CTRL,#0x7f
;	src\usbhost.c:1006: USB_DEV_AD = 0x00;
	mov	_USB_DEV_AD,#0x00
;	src\usbhost.c:1007: UH_EP_MOD = bUH_EP_TX_EN | bUH_EP_RX_EN;
	mov	_UEP2_3_MOD,#0x48
;	src\usbhost.c:1008: UH_RX_DMA = (uint16_t)RxBuffer;
	mov	r6,#_RxBuffer
	mov	r7,#(_RxBuffer >> 8)
	mov	((_UEP2_DMA >> 0) & 0xFF),r6
	mov	((_UEP2_DMA >> 8) & 0xFF),r7
;	src\usbhost.c:1009: UH_TX_DMA = (uint16_t)TxBuffer;
	mov	r6,#_TxBuffer
	mov	r7,#(_TxBuffer >> 8)
	mov	((_UEP3_DMA >> 0) & 0xFF),r6
	mov	((_UEP3_DMA >> 8) & 0xFF),r7
;	src\usbhost.c:1010: UH_RX_CTRL = 0x00;
	mov	_UEP2_CTRL,#0x00
;	src\usbhost.c:1011: UH_TX_CTRL = 0x00;
	mov	_UEP3_CTRL,#0x00
;	src\usbhost.c:1012: USB_CTRL = bUC_HOST_MODE | bUC_INT_BUSY; // | bUC_DMA_EN;                     // 启动USB主机及DMA,在中断标志未清除前自动暂停
	mov	_USB_CTRL,#0x88
;	src\usbhost.c:1016: USB_INT_FG = 0xFF;                       // 清中断标志
	mov	_USB_INT_FG,#0xff
;	src\usbhost.c:1017: for (i = 0; i != 2; i++)
	mov	r7,#0x00
00102$:
;	src\usbhost.c:1019: DisableRootHubPort(); // 清空
	push	ar7
	lcall	_DisableRootHubPort
	pop	ar7
;	src\usbhost.c:1017: for (i = 0; i != 2; i++)
	inc	r7
	cjne	r7,#0x02,00102$
;	src\usbhost.c:1021: USB_INT_EN = bUIE_TRANSFER | bUIE_DETECT;
	mov	_USB_INT_EN,#0x03
;	src\usbhost.c:1023: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
