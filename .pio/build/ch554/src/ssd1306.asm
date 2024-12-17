;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (MINGW32)
;--------------------------------------------------------
	.module ssd1306
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _hexTable
	.globl _OLED_FONT
	.globl _OLED_INIT_CMD
	.globl _i2c_writeByte
	.globl _i2c_stopCommunication
	.globl _i2c_startCommunication
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
	.globl _ssd1306_setCursor_PARM_2
	.globl _ssd1306_initialise
	.globl _ssd1306_verticalShift
	.globl _ssd1306_printCharacter
	.globl _ssd1306_printString
	.globl _ssd1306_printHexByte
	.globl _ssd1306_printHexWord
	.globl _ssd1306_setCursor
	.globl _ssd1306_clearScreen
	.globl _ssd1306_test
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
_ssd1306_setCursor_PARM_2:
	.ds 1
;--------------------------------------------------------
; overlayable items in internal ram
;--------------------------------------------------------
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
;Allocation info for local variables in function 'ssd1306_initialise'
;------------------------------------------------------------
;i                         Allocated to registers r7 
;------------------------------------------------------------
;	src\ssd1306.c:128: void ssd1306_initialise(void) {
;	-----------------------------------------
;	 function ssd1306_initialise
;	-----------------------------------------
_ssd1306_initialise:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	src\ssd1306.c:129: i2c_startCommunication(OLED_ADDR);
	mov	dpl, #0x78
	lcall	_i2c_startCommunication
;	src\ssd1306.c:130: i2c_writeByte(OLED_CMD_MODE);
	mov	dpl, #0x00
	lcall	_i2c_writeByte
;	src\ssd1306.c:131: for (uint8_t i = 0; i < sizeof(OLED_INIT_CMD); i++) {
	mov	r7,#0x00
00103$:
	cjne	r7,#0x0e,00120$
00120$:
	jnc	00101$
;	src\ssd1306.c:132: i2c_writeByte(OLED_INIT_CMD[i]);
	mov	a,r7
	mov	dptr,#_OLED_INIT_CMD
	movc	a,@a+dptr
	mov	dpl,a
	push	ar7
	lcall	_i2c_writeByte
	pop	ar7
;	src\ssd1306.c:131: for (uint8_t i = 0; i < sizeof(OLED_INIT_CMD); i++) {
	inc	r7
	sjmp	00103$
00101$:
;	src\ssd1306.c:134: i2c_stopCommunication();
;	src\ssd1306.c:135: }
	ljmp	_i2c_stopCommunication
;------------------------------------------------------------
;Allocation info for local variables in function 'ssd1306_verticalShift'
;------------------------------------------------------------
;yPosition                 Allocated to registers r7 
;------------------------------------------------------------
;	src\ssd1306.c:138: void ssd1306_verticalShift(uint8_t yPosition) {
;	-----------------------------------------
;	 function ssd1306_verticalShift
;	-----------------------------------------
_ssd1306_verticalShift:
	mov	r7, dpl
;	src\ssd1306.c:139: i2c_startCommunication(OLED_ADDR);
	mov	dpl, #0x78
	push	ar7
	lcall	_i2c_startCommunication
;	src\ssd1306.c:140: i2c_writeByte(OLED_CMD_MODE);
	mov	dpl, #0x00
	lcall	_i2c_writeByte
;	src\ssd1306.c:141: i2c_writeByte(OLED_OFFSET);
	mov	dpl, #0xd3
	lcall	_i2c_writeByte
	pop	ar7
;	src\ssd1306.c:142: i2c_writeByte(yPosition);
	mov	dpl, r7
	lcall	_i2c_writeByte
;	src\ssd1306.c:143: i2c_stopCommunication();
;	src\ssd1306.c:144: }
	ljmp	_i2c_stopCommunication
;------------------------------------------------------------
;Allocation info for local variables in function 'ssd1306_printCharacter'
;------------------------------------------------------------
;character                 Allocated to registers r7 
;offset                    Allocated to registers r4 r7 
;i                         Allocated to registers r5 
;------------------------------------------------------------
;	src\ssd1306.c:147: void ssd1306_printCharacter(char character) {
;	-----------------------------------------
;	 function ssd1306_printCharacter
;	-----------------------------------------
_ssd1306_printCharacter:
	mov	r7, dpl
;	src\ssd1306.c:148: uint16_t offset = 0;
	mov	r5,#0x00
	mov	r6,#0x00
;	src\ssd1306.c:150: if (character >= 32) {
	cjne	r7,#0x20,00131$
00131$:
	jc	00102$
;	src\ssd1306.c:151: offset = character - 32;
	mov	a,r7
	add	a,#0xe0
	mov	r5,a
	mov	r6,#0x00
00102$:
;	src\ssd1306.c:154: offset += offset << 2;                  // -> offset = (ch - 32) * 5
	mov	a,r5
	add	a,r5
	mov	r4,a
	mov	a,r6
	rlc	a
	mov	r7,a
	mov	a,r4
	add	a,r4
	mov	r4,a
	mov	a,r7
	rlc	a
	mov	r7,a
	mov	a,r4
	add	a, r5
	mov	r4,a
	mov	a,r7
	addc	a, r6
	mov	r7,a
;	src\ssd1306.c:155: i2c_writeByte(0x00);                    // print spacing between characters
	mov	dpl, #0x00
	push	ar7
	push	ar4
	lcall	_i2c_writeByte
	pop	ar4
	pop	ar7
;	src\ssd1306.c:156: for(uint8_t i = 0; i < OLED_FONT_WIDTH; i++) {
	mov	ar6,r4
	mov	r5,#0x00
00105$:
	cjne	r5,#0x05,00133$
00133$:
	jnc	00107$
;	src\ssd1306.c:157: i2c_writeByte(OLED_FONT[offset++]);
	mov	a,r6
	add	a, #_OLED_FONT
	mov	dpl,a
	mov	a,r7
	addc	a, #(_OLED_FONT >> 8)
	mov	dph,a
	inc	r6
	cjne	r6,#0x00,00135$
	inc	r7
00135$:
	clr	a
	movc	a,@a+dptr
	mov	dpl,a
	push	ar7
	push	ar6
	push	ar5
	lcall	_i2c_writeByte
	pop	ar5
	pop	ar6
	pop	ar7
;	src\ssd1306.c:156: for(uint8_t i = 0; i < OLED_FONT_WIDTH; i++) {
	inc	r5
	sjmp	00105$
00107$:
;	src\ssd1306.c:159: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ssd1306_printString'
;------------------------------------------------------------
;string                    Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	src\ssd1306.c:162: void ssd1306_printString(char* string) {
;	-----------------------------------------
;	 function ssd1306_printString
;	-----------------------------------------
_ssd1306_printString:
	mov	r5, dpl
	mov	r6, dph
	mov	r7, b
;	src\ssd1306.c:163: i2c_startCommunication(OLED_ADDR);
	mov	dpl, #0x78
	push	ar7
	push	ar6
	push	ar5
	lcall	_i2c_startCommunication
;	src\ssd1306.c:164: i2c_writeByte(OLED_DAT_MODE);
	mov	dpl, #0x40
	lcall	_i2c_writeByte
	pop	ar5
	pop	ar6
	pop	ar7
;	src\ssd1306.c:165: while (*string) {                       // repeat until string terminator
00101$:
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	jz	00103$
;	src\ssd1306.c:166: ssd1306_printCharacter(*string++);  // print character on OLED
	mov	dpl,r4
	inc	r5
	cjne	r5,#0x00,00120$
	inc	r6
00120$:
	push	ar7
	push	ar6
	push	ar5
	lcall	_ssd1306_printCharacter
	pop	ar5
	pop	ar6
	pop	ar7
	sjmp	00101$
00103$:
;	src\ssd1306.c:168: i2c_stopCommunication();
;	src\ssd1306.c:169: }
	ljmp	_i2c_stopCommunication
;------------------------------------------------------------
;Allocation info for local variables in function 'ssd1306_printHexByte'
;------------------------------------------------------------
;value                     Allocated to registers r7 
;------------------------------------------------------------
;	src\ssd1306.c:171: void ssd1306_printHexByte(uint8_t value) {
;	-----------------------------------------
;	 function ssd1306_printHexByte
;	-----------------------------------------
_ssd1306_printHexByte:
	mov	r7, dpl
;	src\ssd1306.c:172: i2c_startCommunication(OLED_ADDR);
	mov	dpl, #0x78
	push	ar7
	lcall	_i2c_startCommunication
;	src\ssd1306.c:173: i2c_writeByte(OLED_DAT_MODE);
	mov	dpl, #0x40
	lcall	_i2c_writeByte
	pop	ar7
;	src\ssd1306.c:174: ssd1306_printCharacter(hexTable[(value >> 4)]);
	mov	a,r7
	swap	a
	anl	a,#0x0f
	mov	dptr,#_hexTable
	movc	a,@a+dptr
	mov	dpl,a
	push	ar7
	lcall	_ssd1306_printCharacter
	pop	ar7
;	src\ssd1306.c:175: ssd1306_printCharacter(hexTable[value & 0x0F]);
	anl	ar7,#0x0f
	mov	r6,#0x00
	mov	a,r7
	add	a, #_hexTable
	mov	dpl,a
	mov	a,r6
	addc	a, #(_hexTable >> 8)
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	dpl,a
	lcall	_ssd1306_printCharacter
;	src\ssd1306.c:176: i2c_stopCommunication();
;	src\ssd1306.c:177: }
	ljmp	_i2c_stopCommunication
;------------------------------------------------------------
;Allocation info for local variables in function 'ssd1306_printHexWord'
;------------------------------------------------------------
;value                     Allocated to registers r6 r7 
;------------------------------------------------------------
;	src\ssd1306.c:179: void ssd1306_printHexWord(uint16_t value) {
;	-----------------------------------------
;	 function ssd1306_printHexWord
;	-----------------------------------------
_ssd1306_printHexWord:
	mov	r6, dpl
	mov	r7, dph
;	src\ssd1306.c:180: ssd1306_printHexByte(value >> 8);
	mov	dpl,r7
	push	ar7
	push	ar6
	lcall	_ssd1306_printHexByte
	pop	ar6
	pop	ar7
;	src\ssd1306.c:181: ssd1306_printHexByte(value & 0xFF);
	mov	dpl,r6
;	src\ssd1306.c:182: }
	ljmp	_ssd1306_printHexByte
;------------------------------------------------------------
;Allocation info for local variables in function 'ssd1306_setCursor'
;------------------------------------------------------------
;yPosition                 Allocated with name '_ssd1306_setCursor_PARM_2'
;xPosition                 Allocated to registers r7 
;------------------------------------------------------------
;	src\ssd1306.c:185: void ssd1306_setCursor(uint8_t xPosition, uint8_t yPosition) {
;	-----------------------------------------
;	 function ssd1306_setCursor
;	-----------------------------------------
_ssd1306_setCursor:
	mov	r7, dpl
;	src\ssd1306.c:186: i2c_startCommunication(OLED_ADDR);
	mov	dpl, #0x78
	push	ar7
	lcall	_i2c_startCommunication
;	src\ssd1306.c:187: i2c_writeByte(OLED_CMD_MODE);
	mov	dpl, #0x00
	lcall	_i2c_writeByte
;	src\ssd1306.c:188: i2c_writeByte(OLED_PAGE | (yPosition & 0x07));          // set start page
	mov	a,_ssd1306_setCursor_PARM_2
	anl	a,#0x07
	orl	a,#0xb0
	mov	dpl,a
	lcall	_i2c_writeByte
	pop	ar7
;	src\ssd1306.c:189: i2c_writeByte(OLED_COLUMN_LOW | (xPosition & 0x0F));    // set low nibble of start column
	mov	a,#0x0f
	anl	a,r7
	mov	dpl,a
	push	ar7
	lcall	_i2c_writeByte
	pop	ar7
;	src\ssd1306.c:190: i2c_writeByte(OLED_COLUMN_HIGH | (xPosition >> 4));     // set high nibble of start column
	mov	a,r7
	swap	a
	anl	a,#0x0f
	mov	r7,a
	mov	a,#0x10
	orl	a,r7
	mov	dpl,a
	lcall	_i2c_writeByte
;	src\ssd1306.c:191: i2c_stopCommunication();
;	src\ssd1306.c:192: }
	ljmp	_i2c_stopCommunication
;------------------------------------------------------------
;Allocation info for local variables in function 'ssd1306_clearScreen'
;------------------------------------------------------------
;i                         Allocated to registers r7 
;i                         Allocated to registers r6 
;------------------------------------------------------------
;	src\ssd1306.c:195: void ssd1306_clearScreen(void) {
;	-----------------------------------------
;	 function ssd1306_clearScreen
;	-----------------------------------------
_ssd1306_clearScreen:
;	src\ssd1306.c:197: for (uint8_t i = 0; i < PAGES; i++) {       // clear screen line by line
	mov	r7,#0x00
00107$:
	cjne	r7,#0x04,00137$
00137$:
	jnc	00109$
;	src\ssd1306.c:198: ssd1306_setCursor(0, i);
	mov	_ssd1306_setCursor_PARM_2,r7
	mov	dpl, #0x00
	push	ar7
	lcall	_ssd1306_setCursor
;	src\ssd1306.c:199: i2c_startCommunication(OLED_ADDR);      // start transmission to OLED
	mov	dpl, #0x78
	lcall	_i2c_startCommunication
;	src\ssd1306.c:200: i2c_writeByte(OLED_DAT_MODE);           // set data mode
	mov	dpl, #0x40
	lcall	_i2c_writeByte
	pop	ar7
;	src\ssd1306.c:202: for(uint8_t i = 128; i; i--) {
	mov	r6,#0x80
00104$:
	mov	a,r6
	jz	00101$
;	src\ssd1306.c:203: i2c_writeByte(0x00);
	mov	dpl, #0x00
	push	ar7
	push	ar6
	lcall	_i2c_writeByte
	pop	ar6
	pop	ar7
;	src\ssd1306.c:202: for(uint8_t i = 128; i; i--) {
	dec	r6
	sjmp	00104$
00101$:
;	src\ssd1306.c:205: i2c_stopCommunication();                // stop transmission
	push	ar7
	lcall	_i2c_stopCommunication
	pop	ar7
;	src\ssd1306.c:197: for (uint8_t i = 0; i < PAGES; i++) {       // clear screen line by line
	inc	r7
	sjmp	00107$
00109$:
;	src\ssd1306.c:207: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ssd1306_test'
;------------------------------------------------------------
;c                         Allocated to registers r7 
;l                         Allocated to registers r6 
;p                         Allocated to registers r4 
;------------------------------------------------------------
;	src\ssd1306.c:209: void ssd1306_test(void) {
;	-----------------------------------------
;	 function ssd1306_test
;	-----------------------------------------
_ssd1306_test:
;	src\ssd1306.c:211: uint8_t c = 32;
	mov	r7,#0x20
;	src\ssd1306.c:213: for (uint8_t l = 0; l < 4; l++) {
	mov	r6,#0x00
00109$:
	cjne	r6,#0x04,00145$
00145$:
	jnc	00111$
;	src\ssd1306.c:214: ssd1306_setCursor(0, l * MULTIPLE);
	mov	_ssd1306_setCursor_PARM_2,r6
	mov	dpl, #0x00
	push	ar7
	push	ar6
	lcall	_ssd1306_setCursor
;	src\ssd1306.c:215: i2c_startCommunication(OLED_ADDR);
	mov	dpl, #0x78
	lcall	_i2c_startCommunication
;	src\ssd1306.c:216: i2c_writeByte(OLED_DAT_MODE);
	mov	dpl, #0x40
	lcall	_i2c_writeByte
	pop	ar6
	pop	ar7
;	src\ssd1306.c:218: for (uint8_t p = 20; p; p--) {
	mov	ar5,r7
	mov	r4,#0x14
00106$:
	mov	a,r4
	jz	00118$
;	src\ssd1306.c:219: ssd1306_printCharacter(c++);
	mov	dpl,r5
	inc	r5
	push	ar6
	push	ar5
	push	ar4
	lcall	_ssd1306_printCharacter
	pop	ar4
	pop	ar5
	pop	ar6
;	src\ssd1306.c:220: if (c == 32 + 64) {
	cjne	r5,#0x60,00148$
	sjmp	00118$
00148$:
;	src\ssd1306.c:218: for (uint8_t p = 20; p; p--) {
	dec	r4
	sjmp	00106$
00118$:
	mov	ar7,r5
;	src\ssd1306.c:224: i2c_stopCommunication();
	push	ar7
	push	ar6
	lcall	_i2c_stopCommunication
	pop	ar6
	pop	ar7
;	src\ssd1306.c:213: for (uint8_t l = 0; l < 4; l++) {
	inc	r6
	sjmp	00109$
00111$:
;	src\ssd1306.c:226: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
_OLED_INIT_CMD:
	.db #0xa8	; 168
	.db #0x1f	; 31
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x22	; 34
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0xda	; 218
	.db #0x02	; 2
	.db #0x8d	; 141
	.db #0x14	; 20
	.db #0xaf	; 175
	.db #0xa1	; 161
	.db #0xc8	; 200
_OLED_FONT:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x2f	; 47
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x14	; 20
	.db #0x7f	; 127
	.db #0x14	; 20
	.db #0x7f	; 127
	.db #0x14	; 20
	.db #0x24	; 36
	.db #0x2a	; 42
	.db #0x7f	; 127
	.db #0x2a	; 42
	.db #0x12	; 18
	.db #0x62	; 98	'b'
	.db #0x64	; 100	'd'
	.db #0x08	; 8
	.db #0x13	; 19
	.db #0x23	; 35
	.db #0x36	; 54	'6'
	.db #0x49	; 73	'I'
	.db #0x55	; 85	'U'
	.db #0x22	; 34
	.db #0x50	; 80	'P'
	.db #0x00	; 0
	.db #0x05	; 5
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x1c	; 28
	.db #0x22	; 34
	.db #0x41	; 65	'A'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x41	; 65	'A'
	.db #0x22	; 34
	.db #0x1c	; 28
	.db #0x00	; 0
	.db #0x14	; 20
	.db #0x08	; 8
	.db #0x3e	; 62
	.db #0x08	; 8
	.db #0x14	; 20
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x3e	; 62
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xa0	; 160
	.db #0x60	; 96
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x60	; 96
	.db #0x60	; 96
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x10	; 16
	.db #0x08	; 8
	.db #0x04	; 4
	.db #0x02	; 2
	.db #0x3e	; 62
	.db #0x51	; 81	'Q'
	.db #0x49	; 73	'I'
	.db #0x45	; 69	'E'
	.db #0x3e	; 62
	.db #0x00	; 0
	.db #0x42	; 66	'B'
	.db #0x7f	; 127
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x42	; 66	'B'
	.db #0x61	; 97	'a'
	.db #0x51	; 81	'Q'
	.db #0x49	; 73	'I'
	.db #0x46	; 70	'F'
	.db #0x21	; 33
	.db #0x41	; 65	'A'
	.db #0x45	; 69	'E'
	.db #0x4b	; 75	'K'
	.db #0x31	; 49	'1'
	.db #0x18	; 24
	.db #0x14	; 20
	.db #0x12	; 18
	.db #0x7f	; 127
	.db #0x10	; 16
	.db #0x27	; 39
	.db #0x45	; 69	'E'
	.db #0x45	; 69	'E'
	.db #0x45	; 69	'E'
	.db #0x39	; 57	'9'
	.db #0x3c	; 60
	.db #0x4a	; 74	'J'
	.db #0x49	; 73	'I'
	.db #0x49	; 73	'I'
	.db #0x30	; 48	'0'
	.db #0x01	; 1
	.db #0x71	; 113	'q'
	.db #0x09	; 9
	.db #0x05	; 5
	.db #0x03	; 3
	.db #0x36	; 54	'6'
	.db #0x49	; 73	'I'
	.db #0x49	; 73	'I'
	.db #0x49	; 73	'I'
	.db #0x36	; 54	'6'
	.db #0x06	; 6
	.db #0x49	; 73	'I'
	.db #0x49	; 73	'I'
	.db #0x29	; 41
	.db #0x1e	; 30
	.db #0x00	; 0
	.db #0x36	; 54	'6'
	.db #0x36	; 54	'6'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x56	; 86	'V'
	.db #0x36	; 54	'6'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x14	; 20
	.db #0x22	; 34
	.db #0x41	; 65	'A'
	.db #0x00	; 0
	.db #0x14	; 20
	.db #0x14	; 20
	.db #0x14	; 20
	.db #0x14	; 20
	.db #0x14	; 20
	.db #0x00	; 0
	.db #0x41	; 65	'A'
	.db #0x22	; 34
	.db #0x14	; 20
	.db #0x08	; 8
	.db #0x02	; 2
	.db #0x01	; 1
	.db #0x51	; 81	'Q'
	.db #0x09	; 9
	.db #0x06	; 6
	.db #0x32	; 50	'2'
	.db #0x49	; 73	'I'
	.db #0x59	; 89	'Y'
	.db #0x51	; 81	'Q'
	.db #0x3e	; 62
	.db #0x7c	; 124
	.db #0x12	; 18
	.db #0x11	; 17
	.db #0x12	; 18
	.db #0x7c	; 124
	.db #0x7f	; 127
	.db #0x49	; 73	'I'
	.db #0x49	; 73	'I'
	.db #0x49	; 73	'I'
	.db #0x36	; 54	'6'
	.db #0x3e	; 62
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x22	; 34
	.db #0x7f	; 127
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x22	; 34
	.db #0x1c	; 28
	.db #0x7f	; 127
	.db #0x49	; 73	'I'
	.db #0x49	; 73	'I'
	.db #0x49	; 73	'I'
	.db #0x41	; 65	'A'
	.db #0x7f	; 127
	.db #0x09	; 9
	.db #0x09	; 9
	.db #0x09	; 9
	.db #0x01	; 1
	.db #0x3e	; 62
	.db #0x41	; 65	'A'
	.db #0x49	; 73	'I'
	.db #0x49	; 73	'I'
	.db #0x7a	; 122	'z'
	.db #0x7f	; 127
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x7f	; 127
	.db #0x00	; 0
	.db #0x41	; 65	'A'
	.db #0x7f	; 127
	.db #0x41	; 65	'A'
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x40	; 64
	.db #0x41	; 65	'A'
	.db #0x3f	; 63
	.db #0x01	; 1
	.db #0x7f	; 127
	.db #0x08	; 8
	.db #0x14	; 20
	.db #0x22	; 34
	.db #0x41	; 65	'A'
	.db #0x7f	; 127
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x7f	; 127
	.db #0x02	; 2
	.db #0x0c	; 12
	.db #0x02	; 2
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x04	; 4
	.db #0x08	; 8
	.db #0x10	; 16
	.db #0x7f	; 127
	.db #0x3e	; 62
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x3e	; 62
	.db #0x7f	; 127
	.db #0x09	; 9
	.db #0x09	; 9
	.db #0x09	; 9
	.db #0x06	; 6
	.db #0x3e	; 62
	.db #0x41	; 65	'A'
	.db #0x51	; 81	'Q'
	.db #0x21	; 33
	.db #0x5e	; 94
	.db #0x7f	; 127
	.db #0x09	; 9
	.db #0x19	; 25
	.db #0x29	; 41
	.db #0x46	; 70	'F'
	.db #0x46	; 70	'F'
	.db #0x49	; 73	'I'
	.db #0x49	; 73	'I'
	.db #0x49	; 73	'I'
	.db #0x31	; 49	'1'
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x7f	; 127
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x3f	; 63
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x3f	; 63
	.db #0x1f	; 31
	.db #0x20	; 32
	.db #0x40	; 64
	.db #0x20	; 32
	.db #0x1f	; 31
	.db #0x3f	; 63
	.db #0x40	; 64
	.db #0x38	; 56	'8'
	.db #0x40	; 64
	.db #0x3f	; 63
	.db #0x63	; 99	'c'
	.db #0x14	; 20
	.db #0x08	; 8
	.db #0x14	; 20
	.db #0x63	; 99	'c'
	.db #0x07	; 7
	.db #0x08	; 8
	.db #0x70	; 112	'p'
	.db #0x08	; 8
	.db #0x07	; 7
	.db #0x61	; 97	'a'
	.db #0x51	; 81	'Q'
	.db #0x49	; 73	'I'
	.db #0x45	; 69	'E'
	.db #0x43	; 67	'C'
	.db #0x00	; 0
	.db #0x7f	; 127
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x00	; 0
	.db #0x02	; 2
	.db #0x04	; 4
	.db #0x08	; 8
	.db #0x10	; 16
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x7f	; 127
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x02	; 2
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x04	; 4
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x40	; 64
_hexTable:
	.db #0x30	; 48	'0'
	.db #0x31	; 49	'1'
	.db #0x32	; 50	'2'
	.db #0x33	; 51	'3'
	.db #0x34	; 52	'4'
	.db #0x35	; 53	'5'
	.db #0x36	; 54	'6'
	.db #0x37	; 55	'7'
	.db #0x38	; 56	'8'
	.db #0x39	; 57	'9'
	.db #0x41	; 65	'A'
	.db #0x42	; 66	'B'
	.db #0x43	; 67	'C'
	.db #0x44	; 68	'D'
	.db #0x45	; 69	'E'
	.db #0x46	; 70	'F'
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
