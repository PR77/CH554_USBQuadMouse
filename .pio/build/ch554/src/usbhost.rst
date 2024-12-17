                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ISO C Compiler 
                                      3 ; Version 4.4.0 #14620 (MINGW32)
                                      4 ;--------------------------------------------------------
                                      5 	.module usbhost
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _mDelaymS
                                     12 	.globl _mDelayuS
                                     13 	.globl _memset
                                     14 	.globl _UIF_BUS_RST
                                     15 	.globl _UIF_DETECT
                                     16 	.globl _UIF_TRANSFER
                                     17 	.globl _UIF_SUSPEND
                                     18 	.globl _UIF_HST_SOF
                                     19 	.globl _UIF_FIFO_OV
                                     20 	.globl _U_SIE_FREE
                                     21 	.globl _U_TOG_OK
                                     22 	.globl _U_IS_NAK
                                     23 	.globl _ADC_CHAN0
                                     24 	.globl _ADC_CHAN1
                                     25 	.globl _CMP_CHAN
                                     26 	.globl _ADC_START
                                     27 	.globl _ADC_IF
                                     28 	.globl _CMP_IF
                                     29 	.globl _CMPO
                                     30 	.globl _U1RI
                                     31 	.globl _U1TI
                                     32 	.globl _U1RB8
                                     33 	.globl _U1TB8
                                     34 	.globl _U1REN
                                     35 	.globl _U1SMOD
                                     36 	.globl _U1SM0
                                     37 	.globl _S0_R_FIFO
                                     38 	.globl _S0_T_FIFO
                                     39 	.globl _S0_FREE
                                     40 	.globl _S0_IF_BYTE
                                     41 	.globl _S0_IF_FIRST
                                     42 	.globl _S0_IF_OV
                                     43 	.globl _S0_FST_ACT
                                     44 	.globl _CP_RL2
                                     45 	.globl _C_T2
                                     46 	.globl _TR2
                                     47 	.globl _EXEN2
                                     48 	.globl _TCLK
                                     49 	.globl _RCLK
                                     50 	.globl _EXF2
                                     51 	.globl _CAP1F
                                     52 	.globl _TF2
                                     53 	.globl _RI
                                     54 	.globl _TI
                                     55 	.globl _RB8
                                     56 	.globl _TB8
                                     57 	.globl _REN
                                     58 	.globl _SM2
                                     59 	.globl _SM1
                                     60 	.globl _SM0
                                     61 	.globl _IT0
                                     62 	.globl _IE0
                                     63 	.globl _IT1
                                     64 	.globl _IE1
                                     65 	.globl _TR0
                                     66 	.globl _TF0
                                     67 	.globl _TR1
                                     68 	.globl _TF1
                                     69 	.globl _RXD
                                     70 	.globl _PWM1_
                                     71 	.globl _TXD
                                     72 	.globl _PWM2_
                                     73 	.globl _AIN3
                                     74 	.globl _VBUS1
                                     75 	.globl _INT0
                                     76 	.globl _TXD1_
                                     77 	.globl _INT1
                                     78 	.globl _T0
                                     79 	.globl _RXD1_
                                     80 	.globl _PWM2
                                     81 	.globl _T1
                                     82 	.globl _UDP
                                     83 	.globl _UDM
                                     84 	.globl _TIN0
                                     85 	.globl _CAP1
                                     86 	.globl _T2
                                     87 	.globl _AIN0
                                     88 	.globl _VBUS2
                                     89 	.globl _TIN1
                                     90 	.globl _CAP2
                                     91 	.globl _T2EX
                                     92 	.globl _RXD_
                                     93 	.globl _TXD_
                                     94 	.globl _AIN1
                                     95 	.globl _UCC1
                                     96 	.globl _TIN2
                                     97 	.globl _SCS
                                     98 	.globl _CAP1_
                                     99 	.globl _T2_
                                    100 	.globl _AIN2
                                    101 	.globl _UCC2
                                    102 	.globl _TIN3
                                    103 	.globl _PWM1
                                    104 	.globl _MOSI
                                    105 	.globl _TIN4
                                    106 	.globl _RXD1
                                    107 	.globl _MISO
                                    108 	.globl _TIN5
                                    109 	.globl _TXD1
                                    110 	.globl _SCK
                                    111 	.globl _IE_SPI0
                                    112 	.globl _IE_TKEY
                                    113 	.globl _IE_USB
                                    114 	.globl _IE_ADC
                                    115 	.globl _IE_UART1
                                    116 	.globl _IE_PWMX
                                    117 	.globl _IE_GPIO
                                    118 	.globl _IE_WDOG
                                    119 	.globl _PX0
                                    120 	.globl _PT0
                                    121 	.globl _PX1
                                    122 	.globl _PT1
                                    123 	.globl _PS
                                    124 	.globl _PT2
                                    125 	.globl _PL_FLAG
                                    126 	.globl _PH_FLAG
                                    127 	.globl _EX0
                                    128 	.globl _ET0
                                    129 	.globl _EX1
                                    130 	.globl _ET1
                                    131 	.globl _ES
                                    132 	.globl _ET2
                                    133 	.globl _E_DIS
                                    134 	.globl _EA
                                    135 	.globl _P
                                    136 	.globl _F1
                                    137 	.globl _OV
                                    138 	.globl _RS0
                                    139 	.globl _RS1
                                    140 	.globl _F0
                                    141 	.globl _AC
                                    142 	.globl _CY
                                    143 	.globl _UEP1_DMA_H
                                    144 	.globl _UEP1_DMA_L
                                    145 	.globl _UEP1_DMA
                                    146 	.globl _UEP0_DMA_H
                                    147 	.globl _UEP0_DMA_L
                                    148 	.globl _UEP0_DMA
                                    149 	.globl _UEP2_3_MOD
                                    150 	.globl _UEP4_1_MOD
                                    151 	.globl _UEP3_DMA_H
                                    152 	.globl _UEP3_DMA_L
                                    153 	.globl _UEP3_DMA
                                    154 	.globl _UEP2_DMA_H
                                    155 	.globl _UEP2_DMA_L
                                    156 	.globl _UEP2_DMA
                                    157 	.globl _USB_DEV_AD
                                    158 	.globl _USB_CTRL
                                    159 	.globl _USB_INT_EN
                                    160 	.globl _UEP4_T_LEN
                                    161 	.globl _UEP4_CTRL
                                    162 	.globl _UEP0_T_LEN
                                    163 	.globl _UEP0_CTRL
                                    164 	.globl _USB_RX_LEN
                                    165 	.globl _USB_MIS_ST
                                    166 	.globl _USB_INT_ST
                                    167 	.globl _USB_INT_FG
                                    168 	.globl _UEP3_T_LEN
                                    169 	.globl _UEP3_CTRL
                                    170 	.globl _UEP2_T_LEN
                                    171 	.globl _UEP2_CTRL
                                    172 	.globl _UEP1_T_LEN
                                    173 	.globl _UEP1_CTRL
                                    174 	.globl _UDEV_CTRL
                                    175 	.globl _USB_C_CTRL
                                    176 	.globl _TKEY_DATH
                                    177 	.globl _TKEY_DATL
                                    178 	.globl _TKEY_DAT
                                    179 	.globl _TKEY_CTRL
                                    180 	.globl _ADC_DATA
                                    181 	.globl _ADC_CFG
                                    182 	.globl _ADC_CTRL
                                    183 	.globl _SBAUD1
                                    184 	.globl _SBUF1
                                    185 	.globl _SCON1
                                    186 	.globl _SPI0_SETUP
                                    187 	.globl _SPI0_CK_SE
                                    188 	.globl _SPI0_CTRL
                                    189 	.globl _SPI0_DATA
                                    190 	.globl _SPI0_STAT
                                    191 	.globl _PWM_CK_SE
                                    192 	.globl _PWM_CTRL
                                    193 	.globl _PWM_DATA1
                                    194 	.globl _PWM_DATA2
                                    195 	.globl _T2CAP1H
                                    196 	.globl _T2CAP1L
                                    197 	.globl _T2CAP1
                                    198 	.globl _TH2
                                    199 	.globl _TL2
                                    200 	.globl _T2COUNT
                                    201 	.globl _RCAP2H
                                    202 	.globl _RCAP2L
                                    203 	.globl _RCAP2
                                    204 	.globl _T2MOD
                                    205 	.globl _T2CON
                                    206 	.globl _SBUF
                                    207 	.globl _SCON
                                    208 	.globl _TH1
                                    209 	.globl _TH0
                                    210 	.globl _TL1
                                    211 	.globl _TL0
                                    212 	.globl _TMOD
                                    213 	.globl _TCON
                                    214 	.globl _XBUS_AUX
                                    215 	.globl _PIN_FUNC
                                    216 	.globl _P3_DIR_PU
                                    217 	.globl _P3_MOD_OC
                                    218 	.globl _P3
                                    219 	.globl _P2
                                    220 	.globl _P1_DIR_PU
                                    221 	.globl _P1_MOD_OC
                                    222 	.globl _P1
                                    223 	.globl _ROM_CTRL
                                    224 	.globl _ROM_DATA_H
                                    225 	.globl _ROM_DATA_L
                                    226 	.globl _ROM_DATA
                                    227 	.globl _ROM_ADDR_H
                                    228 	.globl _ROM_ADDR_L
                                    229 	.globl _ROM_ADDR
                                    230 	.globl _GPIO_IE
                                    231 	.globl _IP_EX
                                    232 	.globl _IE_EX
                                    233 	.globl _IP
                                    234 	.globl _IE
                                    235 	.globl _WDOG_COUNT
                                    236 	.globl _RESET_KEEP
                                    237 	.globl _WAKE_CTRL
                                    238 	.globl _CLOCK_CFG
                                    239 	.globl _PCON
                                    240 	.globl _GLOBAL_CFG
                                    241 	.globl _SAFE_MOD
                                    242 	.globl _DPH
                                    243 	.globl _DPL
                                    244 	.globl _SP
                                    245 	.globl _B
                                    246 	.globl _ACC
                                    247 	.globl _PSW
                                    248 	.globl _HostCtrlTransfer_PARM_2
                                    249 	.globl _USBHostTransact_PARM_3
                                    250 	.globl _USBHostTransact_PARM_2
                                    251 	.globl _DisableRootHubPort
                                    252 	.globl _AnalyzeRootHub
                                    253 	.globl _SetHostUsbAddr
                                    254 	.globl _SetUsbSpeed
                                    255 	.globl _ResetRootHubPort
                                    256 	.globl _EnableRootHubPort
                                    257 	.globl _SelectHubPort
                                    258 	.globl _WaitUSB_Interrupt
                                    259 	.globl _USBHostTransact
                                    260 	.globl _HostCtrlTransfer
                                    261 	.globl _CopySetupReqPkg
                                    262 	.globl _CtrlGetDeviceDescr
                                    263 	.globl _CtrlGetConfigDescr
                                    264 	.globl _CtrlSetUsbAddress
                                    265 	.globl _CtrlSetUsbConfig
                                    266 	.globl _CtrlClearEndpStall
                                    267 	.globl _CtrlSetUsbInterface
                                    268 	.globl _CtrlGetHIDDeviceReport
                                    269 	.globl _AnalyzeHidIntEndp
                                    270 	.globl _AnalyzeBulkEndp
                                    271 	.globl _InitRootDevice
                                    272 	.globl _EnumAllRootDevice
                                    273 	.globl _SearchTypeDevice
                                    274 	.globl _SetBootProto
                                    275 	.globl _InitUSB_Host
                                    276 ;--------------------------------------------------------
                                    277 ; special function registers
                                    278 ;--------------------------------------------------------
                                    279 	.area RSEG    (ABS,DATA)
      000000                        280 	.org 0x0000
                           0000D0   281 _PSW	=	0x00d0
                           0000E0   282 _ACC	=	0x00e0
                           0000F0   283 _B	=	0x00f0
                           000081   284 _SP	=	0x0081
                           000082   285 _DPL	=	0x0082
                           000083   286 _DPH	=	0x0083
                           0000A1   287 _SAFE_MOD	=	0x00a1
                           0000B1   288 _GLOBAL_CFG	=	0x00b1
                           000087   289 _PCON	=	0x0087
                           0000B9   290 _CLOCK_CFG	=	0x00b9
                           0000A9   291 _WAKE_CTRL	=	0x00a9
                           0000FE   292 _RESET_KEEP	=	0x00fe
                           0000FF   293 _WDOG_COUNT	=	0x00ff
                           0000A8   294 _IE	=	0x00a8
                           0000B8   295 _IP	=	0x00b8
                           0000E8   296 _IE_EX	=	0x00e8
                           0000E9   297 _IP_EX	=	0x00e9
                           0000C7   298 _GPIO_IE	=	0x00c7
                           008584   299 _ROM_ADDR	=	0x8584
                           000084   300 _ROM_ADDR_L	=	0x0084
                           000085   301 _ROM_ADDR_H	=	0x0085
                           008F8E   302 _ROM_DATA	=	0x8f8e
                           00008E   303 _ROM_DATA_L	=	0x008e
                           00008F   304 _ROM_DATA_H	=	0x008f
                           000086   305 _ROM_CTRL	=	0x0086
                           000090   306 _P1	=	0x0090
                           000092   307 _P1_MOD_OC	=	0x0092
                           000093   308 _P1_DIR_PU	=	0x0093
                           0000A0   309 _P2	=	0x00a0
                           0000B0   310 _P3	=	0x00b0
                           000096   311 _P3_MOD_OC	=	0x0096
                           000097   312 _P3_DIR_PU	=	0x0097
                           0000C6   313 _PIN_FUNC	=	0x00c6
                           0000A2   314 _XBUS_AUX	=	0x00a2
                           000088   315 _TCON	=	0x0088
                           000089   316 _TMOD	=	0x0089
                           00008A   317 _TL0	=	0x008a
                           00008B   318 _TL1	=	0x008b
                           00008C   319 _TH0	=	0x008c
                           00008D   320 _TH1	=	0x008d
                           000098   321 _SCON	=	0x0098
                           000099   322 _SBUF	=	0x0099
                           0000C8   323 _T2CON	=	0x00c8
                           0000C9   324 _T2MOD	=	0x00c9
                           00CBCA   325 _RCAP2	=	0xcbca
                           0000CA   326 _RCAP2L	=	0x00ca
                           0000CB   327 _RCAP2H	=	0x00cb
                           00CDCC   328 _T2COUNT	=	0xcdcc
                           0000CC   329 _TL2	=	0x00cc
                           0000CD   330 _TH2	=	0x00cd
                           00CFCE   331 _T2CAP1	=	0xcfce
                           0000CE   332 _T2CAP1L	=	0x00ce
                           0000CF   333 _T2CAP1H	=	0x00cf
                           00009B   334 _PWM_DATA2	=	0x009b
                           00009C   335 _PWM_DATA1	=	0x009c
                           00009D   336 _PWM_CTRL	=	0x009d
                           00009E   337 _PWM_CK_SE	=	0x009e
                           0000F8   338 _SPI0_STAT	=	0x00f8
                           0000F9   339 _SPI0_DATA	=	0x00f9
                           0000FA   340 _SPI0_CTRL	=	0x00fa
                           0000FB   341 _SPI0_CK_SE	=	0x00fb
                           0000FC   342 _SPI0_SETUP	=	0x00fc
                           0000C0   343 _SCON1	=	0x00c0
                           0000C1   344 _SBUF1	=	0x00c1
                           0000C2   345 _SBAUD1	=	0x00c2
                           000080   346 _ADC_CTRL	=	0x0080
                           00009A   347 _ADC_CFG	=	0x009a
                           00009F   348 _ADC_DATA	=	0x009f
                           0000C3   349 _TKEY_CTRL	=	0x00c3
                           00C5C4   350 _TKEY_DAT	=	0xc5c4
                           0000C4   351 _TKEY_DATL	=	0x00c4
                           0000C5   352 _TKEY_DATH	=	0x00c5
                           000091   353 _USB_C_CTRL	=	0x0091
                           0000D1   354 _UDEV_CTRL	=	0x00d1
                           0000D2   355 _UEP1_CTRL	=	0x00d2
                           0000D3   356 _UEP1_T_LEN	=	0x00d3
                           0000D4   357 _UEP2_CTRL	=	0x00d4
                           0000D5   358 _UEP2_T_LEN	=	0x00d5
                           0000D6   359 _UEP3_CTRL	=	0x00d6
                           0000D7   360 _UEP3_T_LEN	=	0x00d7
                           0000D8   361 _USB_INT_FG	=	0x00d8
                           0000D9   362 _USB_INT_ST	=	0x00d9
                           0000DA   363 _USB_MIS_ST	=	0x00da
                           0000DB   364 _USB_RX_LEN	=	0x00db
                           0000DC   365 _UEP0_CTRL	=	0x00dc
                           0000DD   366 _UEP0_T_LEN	=	0x00dd
                           0000DE   367 _UEP4_CTRL	=	0x00de
                           0000DF   368 _UEP4_T_LEN	=	0x00df
                           0000E1   369 _USB_INT_EN	=	0x00e1
                           0000E2   370 _USB_CTRL	=	0x00e2
                           0000E3   371 _USB_DEV_AD	=	0x00e3
                           00E5E4   372 _UEP2_DMA	=	0xe5e4
                           0000E4   373 _UEP2_DMA_L	=	0x00e4
                           0000E5   374 _UEP2_DMA_H	=	0x00e5
                           00E7E6   375 _UEP3_DMA	=	0xe7e6
                           0000E6   376 _UEP3_DMA_L	=	0x00e6
                           0000E7   377 _UEP3_DMA_H	=	0x00e7
                           0000EA   378 _UEP4_1_MOD	=	0x00ea
                           0000EB   379 _UEP2_3_MOD	=	0x00eb
                           00EDEC   380 _UEP0_DMA	=	0xedec
                           0000EC   381 _UEP0_DMA_L	=	0x00ec
                           0000ED   382 _UEP0_DMA_H	=	0x00ed
                           00EFEE   383 _UEP1_DMA	=	0xefee
                           0000EE   384 _UEP1_DMA_L	=	0x00ee
                           0000EF   385 _UEP1_DMA_H	=	0x00ef
                                    386 ;--------------------------------------------------------
                                    387 ; special function bits
                                    388 ;--------------------------------------------------------
                                    389 	.area RSEG    (ABS,DATA)
      000000                        390 	.org 0x0000
                           0000D7   391 _CY	=	0x00d7
                           0000D6   392 _AC	=	0x00d6
                           0000D5   393 _F0	=	0x00d5
                           0000D4   394 _RS1	=	0x00d4
                           0000D3   395 _RS0	=	0x00d3
                           0000D2   396 _OV	=	0x00d2
                           0000D1   397 _F1	=	0x00d1
                           0000D0   398 _P	=	0x00d0
                           0000AF   399 _EA	=	0x00af
                           0000AE   400 _E_DIS	=	0x00ae
                           0000AD   401 _ET2	=	0x00ad
                           0000AC   402 _ES	=	0x00ac
                           0000AB   403 _ET1	=	0x00ab
                           0000AA   404 _EX1	=	0x00aa
                           0000A9   405 _ET0	=	0x00a9
                           0000A8   406 _EX0	=	0x00a8
                           0000BF   407 _PH_FLAG	=	0x00bf
                           0000BE   408 _PL_FLAG	=	0x00be
                           0000BD   409 _PT2	=	0x00bd
                           0000BC   410 _PS	=	0x00bc
                           0000BB   411 _PT1	=	0x00bb
                           0000BA   412 _PX1	=	0x00ba
                           0000B9   413 _PT0	=	0x00b9
                           0000B8   414 _PX0	=	0x00b8
                           0000EF   415 _IE_WDOG	=	0x00ef
                           0000EE   416 _IE_GPIO	=	0x00ee
                           0000ED   417 _IE_PWMX	=	0x00ed
                           0000EC   418 _IE_UART1	=	0x00ec
                           0000EB   419 _IE_ADC	=	0x00eb
                           0000EA   420 _IE_USB	=	0x00ea
                           0000E9   421 _IE_TKEY	=	0x00e9
                           0000E8   422 _IE_SPI0	=	0x00e8
                           000097   423 _SCK	=	0x0097
                           000097   424 _TXD1	=	0x0097
                           000097   425 _TIN5	=	0x0097
                           000096   426 _MISO	=	0x0096
                           000096   427 _RXD1	=	0x0096
                           000096   428 _TIN4	=	0x0096
                           000095   429 _MOSI	=	0x0095
                           000095   430 _PWM1	=	0x0095
                           000095   431 _TIN3	=	0x0095
                           000095   432 _UCC2	=	0x0095
                           000095   433 _AIN2	=	0x0095
                           000094   434 _T2_	=	0x0094
                           000094   435 _CAP1_	=	0x0094
                           000094   436 _SCS	=	0x0094
                           000094   437 _TIN2	=	0x0094
                           000094   438 _UCC1	=	0x0094
                           000094   439 _AIN1	=	0x0094
                           000093   440 _TXD_	=	0x0093
                           000092   441 _RXD_	=	0x0092
                           000091   442 _T2EX	=	0x0091
                           000091   443 _CAP2	=	0x0091
                           000091   444 _TIN1	=	0x0091
                           000091   445 _VBUS2	=	0x0091
                           000091   446 _AIN0	=	0x0091
                           000090   447 _T2	=	0x0090
                           000090   448 _CAP1	=	0x0090
                           000090   449 _TIN0	=	0x0090
                           0000B7   450 _UDM	=	0x00b7
                           0000B6   451 _UDP	=	0x00b6
                           0000B5   452 _T1	=	0x00b5
                           0000B4   453 _PWM2	=	0x00b4
                           0000B4   454 _RXD1_	=	0x00b4
                           0000B4   455 _T0	=	0x00b4
                           0000B3   456 _INT1	=	0x00b3
                           0000B2   457 _TXD1_	=	0x00b2
                           0000B2   458 _INT0	=	0x00b2
                           0000B2   459 _VBUS1	=	0x00b2
                           0000B2   460 _AIN3	=	0x00b2
                           0000B1   461 _PWM2_	=	0x00b1
                           0000B1   462 _TXD	=	0x00b1
                           0000B0   463 _PWM1_	=	0x00b0
                           0000B0   464 _RXD	=	0x00b0
                           00008F   465 _TF1	=	0x008f
                           00008E   466 _TR1	=	0x008e
                           00008D   467 _TF0	=	0x008d
                           00008C   468 _TR0	=	0x008c
                           00008B   469 _IE1	=	0x008b
                           00008A   470 _IT1	=	0x008a
                           000089   471 _IE0	=	0x0089
                           000088   472 _IT0	=	0x0088
                           00009F   473 _SM0	=	0x009f
                           00009E   474 _SM1	=	0x009e
                           00009D   475 _SM2	=	0x009d
                           00009C   476 _REN	=	0x009c
                           00009B   477 _TB8	=	0x009b
                           00009A   478 _RB8	=	0x009a
                           000099   479 _TI	=	0x0099
                           000098   480 _RI	=	0x0098
                           0000CF   481 _TF2	=	0x00cf
                           0000CF   482 _CAP1F	=	0x00cf
                           0000CE   483 _EXF2	=	0x00ce
                           0000CD   484 _RCLK	=	0x00cd
                           0000CC   485 _TCLK	=	0x00cc
                           0000CB   486 _EXEN2	=	0x00cb
                           0000CA   487 _TR2	=	0x00ca
                           0000C9   488 _C_T2	=	0x00c9
                           0000C8   489 _CP_RL2	=	0x00c8
                           0000FF   490 _S0_FST_ACT	=	0x00ff
                           0000FE   491 _S0_IF_OV	=	0x00fe
                           0000FD   492 _S0_IF_FIRST	=	0x00fd
                           0000FC   493 _S0_IF_BYTE	=	0x00fc
                           0000FB   494 _S0_FREE	=	0x00fb
                           0000FA   495 _S0_T_FIFO	=	0x00fa
                           0000F8   496 _S0_R_FIFO	=	0x00f8
                           0000C7   497 _U1SM0	=	0x00c7
                           0000C5   498 _U1SMOD	=	0x00c5
                           0000C4   499 _U1REN	=	0x00c4
                           0000C3   500 _U1TB8	=	0x00c3
                           0000C2   501 _U1RB8	=	0x00c2
                           0000C1   502 _U1TI	=	0x00c1
                           0000C0   503 _U1RI	=	0x00c0
                           000087   504 _CMPO	=	0x0087
                           000086   505 _CMP_IF	=	0x0086
                           000085   506 _ADC_IF	=	0x0085
                           000084   507 _ADC_START	=	0x0084
                           000083   508 _CMP_CHAN	=	0x0083
                           000081   509 _ADC_CHAN1	=	0x0081
                           000080   510 _ADC_CHAN0	=	0x0080
                           0000DF   511 _U_IS_NAK	=	0x00df
                           0000DE   512 _U_TOG_OK	=	0x00de
                           0000DD   513 _U_SIE_FREE	=	0x00dd
                           0000DC   514 _UIF_FIFO_OV	=	0x00dc
                           0000DB   515 _UIF_HST_SOF	=	0x00db
                           0000DA   516 _UIF_SUSPEND	=	0x00da
                           0000D9   517 _UIF_TRANSFER	=	0x00d9
                           0000D8   518 _UIF_DETECT	=	0x00d8
                           0000D8   519 _UIF_BUS_RST	=	0x00d8
                                    520 ;--------------------------------------------------------
                                    521 ; overlayable register banks
                                    522 ;--------------------------------------------------------
                                    523 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        524 	.ds 8
                                    525 ;--------------------------------------------------------
                                    526 ; internal ram data
                                    527 ;--------------------------------------------------------
                                    528 	.area DSEG    (DATA)
      000021                        529 _USBHostTransact_PARM_2:
      000021                        530 	.ds 1
      000022                        531 _USBHostTransact_PARM_3:
      000022                        532 	.ds 2
      000024                        533 _USBHostTransact_endp_pid_10000_117:
      000024                        534 	.ds 1
      000025                        535 _USBHostTransact_TransRetry_10000_118:
      000025                        536 	.ds 1
      000026                        537 _HostCtrlTransfer_PARM_2:
      000026                        538 	.ds 3
      000029                        539 _HostCtrlTransfer_RxLen_10000_128:
      000029                        540 	.ds 1
      00002A                        541 _HostCtrlTransfer_pBuf_10000_128:
      00002A                        542 	.ds 2
      00002C                        543 _HostCtrlTransfer_pLen_10000_128:
      00002C                        544 	.ds 3
      00002F                        545 _CtrlGetDeviceDescr_len_10000_144:
      00002F                        546 	.ds 1
      000030                        547 _CtrlGetConfigDescr_len_10000_148:
      000030                        548 	.ds 1
      000031                        549 _CtrlGetHIDDeviceReport_len_10000_161:
      000031                        550 	.ds 1
      000032                        551 _AnalyzeBulkEndp_buf_10000_170:
      000032                        552 	.ds 2
      000034                        553 _AnalyzeBulkEndp_s1_10000_171:
      000034                        554 	.ds 1
      000035                        555 _AnalyzeBulkEndp_s2_10000_171:
      000035                        556 	.ds 1
      000036                        557 _SetBootProto_get_10000_210:
      000036                        558 	.ds 8
      00003E                        559 _SetBootProto_set_10000_210:
      00003E                        560 	.ds 8
      000046                        561 _SetBootProto_report_10000_210:
      000046                        562 	.ds 8
      00004E                        563 _SetBootProto_len_10000_210:
      00004E                        564 	.ds 1
                                    565 ;--------------------------------------------------------
                                    566 ; overlayable items in internal ram
                                    567 ;--------------------------------------------------------
                                    568 	.area	OSEG    (OVR,DATA)
                                    569 	.area	OSEG    (OVR,DATA)
                                    570 	.area	OSEG    (OVR,DATA)
                                    571 	.area	OSEG    (OVR,DATA)
                                    572 	.area	OSEG    (OVR,DATA)
                                    573 ;--------------------------------------------------------
                                    574 ; indirectly addressable internal ram data
                                    575 ;--------------------------------------------------------
                                    576 	.area ISEG    (DATA)
                                    577 ;--------------------------------------------------------
                                    578 ; absolute internal ram data
                                    579 ;--------------------------------------------------------
                                    580 	.area IABS    (ABS,DATA)
                                    581 	.area IABS    (ABS,DATA)
                                    582 ;--------------------------------------------------------
                                    583 ; bit data
                                    584 ;--------------------------------------------------------
                                    585 	.area BSEG    (BIT)
      000001                        586 _HostCtrlTransfer_sloc0_1_0:
      000001                        587 	.ds 1
                                    588 ;--------------------------------------------------------
                                    589 ; paged external ram data
                                    590 ;--------------------------------------------------------
                                    591 	.area PSEG    (PAG,XDATA)
                                    592 ;--------------------------------------------------------
                                    593 ; uninitialized external ram data
                                    594 ;--------------------------------------------------------
                                    595 	.area XSEG    (XDATA)
                                    596 ;--------------------------------------------------------
                                    597 ; absolute external ram data
                                    598 ;--------------------------------------------------------
                                    599 	.area XABS    (ABS,XDATA)
                                    600 ;--------------------------------------------------------
                                    601 ; initialized external ram data
                                    602 ;--------------------------------------------------------
                                    603 	.area XISEG   (XDATA)
                                    604 	.area HOME    (CODE)
                                    605 	.area GSINIT0 (CODE)
                                    606 	.area GSINIT1 (CODE)
                                    607 	.area GSINIT2 (CODE)
                                    608 	.area GSINIT3 (CODE)
                                    609 	.area GSINIT4 (CODE)
                                    610 	.area GSINIT5 (CODE)
                                    611 	.area GSINIT  (CODE)
                                    612 	.area GSFINAL (CODE)
                                    613 	.area CSEG    (CODE)
                                    614 ;--------------------------------------------------------
                                    615 ; global & static initialisations
                                    616 ;--------------------------------------------------------
                                    617 	.area HOME    (CODE)
                                    618 	.area GSINIT  (CODE)
                                    619 	.area GSFINAL (CODE)
                                    620 	.area GSINIT  (CODE)
                                    621 ;--------------------------------------------------------
                                    622 ; Home
                                    623 ;--------------------------------------------------------
                                    624 	.area HOME    (CODE)
                                    625 	.area HOME    (CODE)
                                    626 ;--------------------------------------------------------
                                    627 ; code
                                    628 ;--------------------------------------------------------
                                    629 	.area CSEG    (CODE)
                                    630 ;------------------------------------------------------------
                                    631 ;Allocation info for local variables in function 'DisableRootHubPort'
                                    632 ;------------------------------------------------------------
                                    633 ;	src\usbhost.c:28: void DisableRootHubPort(void)
                                    634 ;	-----------------------------------------
                                    635 ;	 function DisableRootHubPort
                                    636 ;	-----------------------------------------
      000713                        637 _DisableRootHubPort:
                           000007   638 	ar7 = 0x07
                           000006   639 	ar6 = 0x06
                           000005   640 	ar5 = 0x05
                           000004   641 	ar4 = 0x04
                           000003   642 	ar3 = 0x03
                           000002   643 	ar2 = 0x02
                           000001   644 	ar1 = 0x01
                           000000   645 	ar0 = 0x00
                                    646 ;	src\usbhost.c:30: ThisUsbDev.DeviceStatus = ROOT_DEV_DISCONNECT;
      000713 90 00 7A         [24]  647 	mov	dptr,#_ThisUsbDev
      000716 E4               [12]  648 	clr	a
      000717 F0               [24]  649 	movx	@dptr,a
                                    650 ;	src\usbhost.c:31: ThisUsbDev.DeviceAddress = 0x00;
      000718 90 00 7B         [24]  651 	mov	dptr,#(_ThisUsbDev + 0x0001)
      00071B F0               [24]  652 	movx	@dptr,a
                                    653 ;	src\usbhost.c:32: }
      00071C 22               [24]  654 	ret
                                    655 ;------------------------------------------------------------
                                    656 ;Allocation info for local variables in function 'AnalyzeRootHub'
                                    657 ;------------------------------------------------------------
                                    658 ;s                         Allocated to registers r7 
                                    659 ;------------------------------------------------------------
                                    660 ;	src\usbhost.c:41: uint8_t AnalyzeRootHub(void)
                                    661 ;	-----------------------------------------
                                    662 ;	 function AnalyzeRootHub
                                    663 ;	-----------------------------------------
      00071D                        664 _AnalyzeRootHub:
                                    665 ;	src\usbhost.c:44: s = ERR_SUCCESS;
      00071D 7F 00            [12]  666 	mov	r7,#0x00
                                    667 ;	src\usbhost.c:45: if (USB_MIS_ST & bUMS_DEV_ATTACH)
      00071F E5 DA            [12]  668 	mov	a,_USB_MIS_ST
      000721 30 E0 18         [24]  669 	jnb	acc.0,00107$
                                    670 ;	src\usbhost.c:47: if (ThisUsbDev.DeviceStatus == ROOT_DEV_DISCONNECT // Device plugged in
      000724 90 00 7A         [24]  671 	mov	dptr,#_ThisUsbDev
      000727 E0               [24]  672 	movx	a,@dptr
      000728 60 05            [24]  673 	jz	00101$
                                    674 ;	src\usbhost.c:48: || (UHOST_CTRL & bUH_PORT_EN) == 0x00)
      00072A E5 D1            [12]  675 	mov	a,_UDEV_CTRL
      00072C 20 E0 1C         [24]  676 	jb	acc.0,00108$
      00072F                        677 00101$:
                                    678 ;	src\usbhost.c:50: DisableRootHubPort();                         // Close the port
      00072F 12 07 13         [24]  679 	lcall	_DisableRootHubPort
                                    680 ;	src\usbhost.c:52: ThisUsbDev.DeviceStatus = ROOT_DEV_CONNECTED; // Set the connection flag
      000732 90 00 7A         [24]  681 	mov	dptr,#_ThisUsbDev
      000735 74 01            [12]  682 	mov	a,#0x01
      000737 F0               [24]  683 	movx	@dptr,a
                                    684 ;	src\usbhost.c:56: s = ERR_USB_CONNECT;
      000738 7F 15            [12]  685 	mov	r7,#0x15
      00073A 80 0F            [24]  686 	sjmp	00108$
      00073C                        687 00107$:
                                    688 ;	src\usbhost.c:59: else if (ThisUsbDev.DeviceStatus >= ROOT_DEV_CONNECTED)
      00073C 90 00 7A         [24]  689 	mov	dptr,#_ThisUsbDev
      00073F E0               [24]  690 	movx	a,@dptr
      000740 FE               [12]  691 	mov	r6,a
      000741 BE 01 00         [24]  692 	cjne	r6,#0x01,00132$
      000744                        693 00132$:
      000744 40 05            [24]  694 	jc	00108$
                                    695 ;	src\usbhost.c:61: DisableRootHubPort(); // Close the port
      000746 12 07 13         [24]  696 	lcall	_DisableRootHubPort
                                    697 ;	src\usbhost.c:66: s = ERR_USB_DISCON;
      000749 7F 16            [12]  698 	mov	r7,#0x16
      00074B                        699 00108$:
                                    700 ;	src\usbhost.c:69: return (s);
      00074B 8F 82            [24]  701 	mov	dpl, r7
                                    702 ;	src\usbhost.c:70: }
      00074D 22               [24]  703 	ret
                                    704 ;------------------------------------------------------------
                                    705 ;Allocation info for local variables in function 'SetHostUsbAddr'
                                    706 ;------------------------------------------------------------
                                    707 ;addr                      Allocated to registers r7 
                                    708 ;------------------------------------------------------------
                                    709 ;	src\usbhost.c:78: void SetHostUsbAddr(uint8_t addr)
                                    710 ;	-----------------------------------------
                                    711 ;	 function SetHostUsbAddr
                                    712 ;	-----------------------------------------
      00074E                        713 _SetHostUsbAddr:
      00074E AF 82            [24]  714 	mov	r7, dpl
                                    715 ;	src\usbhost.c:80: USB_DEV_AD = USB_DEV_AD & bUDA_GP_BIT | addr & 0x7F;
      000750 E5 E3            [12]  716 	mov	a,_USB_DEV_AD
      000752 54 80            [12]  717 	anl	a,#0x80
      000754 FE               [12]  718 	mov	r6,a
      000755 74 7F            [12]  719 	mov	a,#0x7f
      000757 5F               [12]  720 	anl	a,r7
      000758 4E               [12]  721 	orl	a,r6
      000759 F5 E3            [12]  722 	mov	_USB_DEV_AD,a
                                    723 ;	src\usbhost.c:81: }
      00075B 22               [24]  724 	ret
                                    725 ;------------------------------------------------------------
                                    726 ;Allocation info for local variables in function 'SetUsbSpeed'
                                    727 ;------------------------------------------------------------
                                    728 ;FullSpeed                 Allocated to registers r7 
                                    729 ;------------------------------------------------------------
                                    730 ;	src\usbhost.c:90: void SetUsbSpeed(uint8_t FullSpeed)
                                    731 ;	-----------------------------------------
                                    732 ;	 function SetUsbSpeed
                                    733 ;	-----------------------------------------
      00075C                        734 _SetUsbSpeed:
                                    735 ;	src\usbhost.c:92: if (FullSpeed) // full speed
      00075C E5 82            [12]  736 	mov	a,dpl
      00075E 60 07            [24]  737 	jz	00102$
                                    738 ;	src\usbhost.c:94: USB_CTRL &= ~bUC_LOW_SPEED;  // full speed
      000760 53 E2 BF         [24]  739 	anl	_USB_CTRL,#0xbf
                                    740 ;	src\usbhost.c:95: UH_SETUP &= ~bUH_PRE_PID_EN; // Prohibit PRE PID
      000763 53 D2 7F         [24]  741 	anl	_UEP1_CTRL,#0x7f
      000766 22               [24]  742 	ret
      000767                        743 00102$:
                                    744 ;	src\usbhost.c:99: USB_CTRL |= bUC_LOW_SPEED; // Low speed
      000767 43 E2 40         [24]  745 	orl	_USB_CTRL,#0x40
                                    746 ;	src\usbhost.c:101: }
      00076A 22               [24]  747 	ret
                                    748 ;------------------------------------------------------------
                                    749 ;Allocation info for local variables in function 'ResetRootHubPort'
                                    750 ;------------------------------------------------------------
                                    751 ;	src\usbhost.c:110: void ResetRootHubPort(void)
                                    752 ;	-----------------------------------------
                                    753 ;	 function ResetRootHubPort
                                    754 ;	-----------------------------------------
      00076B                        755 _ResetRootHubPort:
                                    756 ;	src\usbhost.c:112: UsbDevEndp0Size = DEFAULT_ENDP0_SIZE;       // Maximum packet size of endpoint 0 of the USB device
      00076B 90 00 01         [24]  757 	mov	dptr,#_UsbDevEndp0Size
      00076E 74 08            [12]  758 	mov	a,#0x08
      000770 F0               [24]  759 	movx	@dptr,a
                                    760 ;	src\usbhost.c:113: memset(&ThisUsbDev, 0, sizeof(ThisUsbDev)); // Empty structure
      000771 75 18 00         [24]  761 	mov	_memset_PARM_2,#0x00
      000774 75 19 0D         [24]  762 	mov	_memset_PARM_3,#0x0d
      000777 75 1A 00         [24]  763 	mov	(_memset_PARM_3 + 1),#0x00
      00077A 90 00 7A         [24]  764 	mov	dptr,#_ThisUsbDev
      00077D 75 F0 00         [24]  765 	mov	b, #0x00
      000780 12 11 E6         [24]  766 	lcall	_memset
                                    767 ;	src\usbhost.c:114: SetHostUsbAddr(0x00);
      000783 75 82 00         [24]  768 	mov	dpl, #0x00
      000786 12 07 4E         [24]  769 	lcall	_SetHostUsbAddr
                                    770 ;	src\usbhost.c:115: UHOST_CTRL &= ~bUH_PORT_EN;                               // Turn off the port
      000789 53 D1 FE         [24]  771 	anl	_UDEV_CTRL,#0xfe
                                    772 ;	src\usbhost.c:116: SetUsbSpeed(1);                                           // The default is full speed
      00078C 75 82 01         [24]  773 	mov	dpl, #0x01
      00078F 12 07 5C         [24]  774 	lcall	_SetUsbSpeed
                                    775 ;	src\usbhost.c:117: UHOST_CTRL = UHOST_CTRL & ~bUH_LOW_SPEED | bUH_BUS_RESET; // The default is full speed, start to reset
      000792 74 FB            [12]  776 	mov	a,#0xfb
      000794 55 D1            [12]  777 	anl	a,_UDEV_CTRL
      000796 44 02            [12]  778 	orl	a,#0x02
      000798 F5 D1            [12]  779 	mov	_UDEV_CTRL,a
                                    780 ;	src\usbhost.c:118: mDelaymS(20);                                             // Reset time 10mS to 20mS
      00079A 90 00 14         [24]  781 	mov	dptr,#0x0014
      00079D 12 06 7C         [24]  782 	lcall	_mDelaymS
                                    783 ;	src\usbhost.c:119: UHOST_CTRL = UHOST_CTRL & ~bUH_BUS_RESET;                 // End reset
      0007A0 53 D1 FD         [24]  784 	anl	_UDEV_CTRL,#0xfd
                                    785 ;	src\usbhost.c:120: mDelayuS(250);
      0007A3 90 00 FA         [24]  786 	mov	dptr,#0x00fa
      0007A6 12 06 66         [24]  787 	lcall	_mDelayuS
                                    788 ;	src\usbhost.c:121: UIF_DETECT = 0; // Clear interrupt flag
                                    789 ;	assignBit
      0007A9 C2 D8            [12]  790 	clr	_UIF_DETECT
                                    791 ;	src\usbhost.c:122: }
      0007AB 22               [24]  792 	ret
                                    793 ;------------------------------------------------------------
                                    794 ;Allocation info for local variables in function 'EnableRootHubPort'
                                    795 ;------------------------------------------------------------
                                    796 ;	src\usbhost.c:130: uint8_t EnableRootHubPort(void)
                                    797 ;	-----------------------------------------
                                    798 ;	 function EnableRootHubPort
                                    799 ;	-----------------------------------------
      0007AC                        800 _EnableRootHubPort:
                                    801 ;	src\usbhost.c:132: if (ThisUsbDev.DeviceStatus < ROOT_DEV_CONNECTED)
      0007AC 90 00 7A         [24]  802 	mov	dptr,#_ThisUsbDev
      0007AF E0               [24]  803 	movx	a,@dptr
      0007B0 FF               [12]  804 	mov	r7,a
      0007B1 BF 01 00         [24]  805 	cjne	r7,#0x01,00143$
      0007B4                        806 00143$:
      0007B4 50 06            [24]  807 	jnc	00102$
                                    808 ;	src\usbhost.c:133: ThisUsbDev.DeviceStatus = ROOT_DEV_CONNECTED;
      0007B6 90 00 7A         [24]  809 	mov	dptr,#_ThisUsbDev
      0007B9 74 01            [12]  810 	mov	a,#0x01
      0007BB F0               [24]  811 	movx	@dptr,a
      0007BC                        812 00102$:
                                    813 ;	src\usbhost.c:134: if (USB_MIS_ST & bUMS_DEV_ATTACH)
      0007BC E5 DA            [12]  814 	mov	a,_USB_MIS_ST
      0007BE 30 E0 28         [24]  815 	jnb	acc.0,00108$
                                    816 ;	src\usbhost.c:136: if ((UHOST_CTRL & bUH_PORT_EN) == 0x00)
      0007C1 E5 D1            [12]  817 	mov	a,_UDEV_CTRL
      0007C3 20 E0 16         [24]  818 	jb	acc.0,00106$
                                    819 ;	src\usbhost.c:138: ThisUsbDev.DeviceSpeed = USB_MIS_ST & bUMS_DM_LEVEL ? 0 : 1;
      0007C6 E5 DA            [12]  820 	mov	a,_USB_MIS_ST
      0007C8 30 E1 04         [24]  821 	jnb	acc.1,00111$
      0007CB 7F 00            [12]  822 	mov	r7,#0x00
      0007CD 80 02            [24]  823 	sjmp	00112$
      0007CF                        824 00111$:
      0007CF 7F 01            [12]  825 	mov	r7,#0x01
      0007D1                        826 00112$:
      0007D1 90 00 7C         [24]  827 	mov	dptr,#(_ThisUsbDev + 0x0002)
      0007D4 EF               [12]  828 	mov	a,r7
      0007D5 F0               [24]  829 	movx	@dptr,a
                                    830 ;	src\usbhost.c:139: if (ThisUsbDev.DeviceSpeed == 0)
      0007D6 EF               [12]  831 	mov	a,r7
      0007D7 70 03            [24]  832 	jnz	00106$
                                    833 ;	src\usbhost.c:140: UHOST_CTRL |= bUH_LOW_SPEED; // Low speed
      0007D9 43 D1 04         [24]  834 	orl	_UDEV_CTRL,#0x04
      0007DC                        835 00106$:
                                    836 ;	src\usbhost.c:142: USB_CTRL |= bUC_DMA_EN; // Start the USB host and DMA, and automatically pause before the interrupt flag is cleared
      0007DC 43 E2 01         [24]  837 	orl	_USB_CTRL,#0x01
                                    838 ;	src\usbhost.c:143: UH_SETUP = bUH_SOF_EN;
      0007DF 75 D2 40         [24]  839 	mov	_UEP1_CTRL,#0x40
                                    840 ;	src\usbhost.c:144: UHOST_CTRL |= bUH_PORT_EN; // Enable HUB port
      0007E2 43 D1 01         [24]  841 	orl	_UDEV_CTRL,#0x01
                                    842 ;	src\usbhost.c:145: return (ERR_SUCCESS);
      0007E5 75 82 00         [24]  843 	mov	dpl, #0x00
      0007E8 22               [24]  844 	ret
      0007E9                        845 00108$:
                                    846 ;	src\usbhost.c:147: return (ERR_USB_DISCON);
      0007E9 75 82 16         [24]  847 	mov	dpl, #0x16
                                    848 ;	src\usbhost.c:148: }
      0007EC 22               [24]  849 	ret
                                    850 ;------------------------------------------------------------
                                    851 ;Allocation info for local variables in function 'SelectHubPort'
                                    852 ;------------------------------------------------------------
                                    853 ;	src\usbhost.c:157: void SelectHubPort(void)
                                    854 ;	-----------------------------------------
                                    855 ;	 function SelectHubPort
                                    856 ;	-----------------------------------------
      0007ED                        857 _SelectHubPort:
                                    858 ;	src\usbhost.c:161: SetHostUsbAddr(ThisUsbDev.DeviceAddress); // 设置USB主机当前操作的USB设备地址
      0007ED 90 00 7B         [24]  859 	mov	dptr,#(_ThisUsbDev + 0x0001)
      0007F0 E0               [24]  860 	movx	a,@dptr
      0007F1 F5 82            [12]  861 	mov	dpl,a
      0007F3 12 07 4E         [24]  862 	lcall	_SetHostUsbAddr
                                    863 ;	src\usbhost.c:162: SetUsbSpeed(ThisUsbDev.DeviceSpeed);      // 设置USB设备的速度
      0007F6 90 00 7C         [24]  864 	mov	dptr,#(_ThisUsbDev + 0x0002)
      0007F9 E0               [24]  865 	movx	a,@dptr
      0007FA F5 82            [12]  866 	mov	dpl,a
                                    867 ;	src\usbhost.c:163: }
      0007FC 02 07 5C         [24]  868 	ljmp	_SetUsbSpeed
                                    869 ;------------------------------------------------------------
                                    870 ;Allocation info for local variables in function 'WaitUSB_Interrupt'
                                    871 ;------------------------------------------------------------
                                    872 ;i                         Allocated to registers r6 r7 
                                    873 ;------------------------------------------------------------
                                    874 ;	src\usbhost.c:173: uint8_t WaitUSB_Interrupt(void)
                                    875 ;	-----------------------------------------
                                    876 ;	 function WaitUSB_Interrupt
                                    877 ;	-----------------------------------------
      0007FF                        878 _WaitUSB_Interrupt:
                                    879 ;	src\usbhost.c:176: for (i = WAIT_USB_TOUT_200US; i != 0 && UIF_TRANSFER == 0; i--)
      0007FF 7E 15            [12]  880 	mov	r6,#0x15
      000801 7F 02            [12]  881 	mov	r7,#0x02
      000803                        882 00104$:
      000803 EE               [12]  883 	mov	a,r6
      000804 4F               [12]  884 	orl	a,r7
      000805 60 0A            [24]  885 	jz	00101$
      000807 20 D9 07         [24]  886 	jb	_UIF_TRANSFER,00101$
      00080A 1E               [12]  887 	dec	r6
      00080B BE FF 01         [24]  888 	cjne	r6,#0xff,00137$
      00080E 1F               [12]  889 	dec	r7
      00080F                        890 00137$:
      00080F 80 F2            [24]  891 	sjmp	00104$
      000811                        892 00101$:
                                    893 ;	src\usbhost.c:180: return (UIF_TRANSFER ? ERR_SUCCESS : ERR_USB_UNKNOWN);
      000811 30 D9 04         [24]  894 	jnb	_UIF_TRANSFER,00108$
      000814 7F 00            [12]  895 	mov	r7,#0x00
      000816 80 02            [24]  896 	sjmp	00109$
      000818                        897 00108$:
      000818 7F FE            [12]  898 	mov	r7,#0xfe
      00081A                        899 00109$:
      00081A 8F 82            [24]  900 	mov	dpl,r7
                                    901 ;	src\usbhost.c:181: }
      00081C 22               [24]  902 	ret
                                    903 ;------------------------------------------------------------
                                    904 ;Allocation info for local variables in function 'USBHostTransact'
                                    905 ;------------------------------------------------------------
                                    906 ;tog                       Allocated with name '_USBHostTransact_PARM_2'
                                    907 ;timeout                   Allocated with name '_USBHostTransact_PARM_3'
                                    908 ;endp_pid                  Allocated with name '_USBHostTransact_endp_pid_10000_117'
                                    909 ;TransRetry                Allocated with name '_USBHostTransact_TransRetry_10000_118'
                                    910 ;s                         Allocated to registers r7 
                                    911 ;r                         Allocated to registers r7 
                                    912 ;i                         Allocated to registers r0 r7 
                                    913 ;------------------------------------------------------------
                                    914 ;	src\usbhost.c:195: uint8_t USBHostTransact(uint8_t endp_pid, uint8_t tog, uint16_t timeout)
                                    915 ;	-----------------------------------------
                                    916 ;	 function USBHostTransact
                                    917 ;	-----------------------------------------
      00081D                        918 _USBHostTransact:
      00081D 85 82 24         [24]  919 	mov	_USBHostTransact_endp_pid_10000_117,dpl
                                    920 ;	src\usbhost.c:201: UH_RX_CTRL = UH_TX_CTRL = tog;
      000820 85 21 D6         [24]  921 	mov	_UEP3_CTRL,_USBHostTransact_PARM_2
      000823 85 21 D4         [24]  922 	mov	_UEP2_CTRL,_USBHostTransact_PARM_2
                                    923 ;	src\usbhost.c:202: TransRetry = 0;
      000826 75 25 00         [24]  924 	mov	_USBHostTransact_TransRetry_10000_118,#0x00
                                    925 ;	src\usbhost.c:204: do
      000829 E5 24            [12]  926 	mov	a,_USBHostTransact_endp_pid_10000_117
      00082B C4               [12]  927 	swap	a
      00082C 54 0F            [12]  928 	anl	a,#0x0f
      00082E FD               [12]  929 	mov	r5,a
      00082F BD 01 03         [24]  930 	cjne	r5,#0x01,00281$
      000832 ED               [12]  931 	mov	a,r5
      000833 80 01            [24]  932 	sjmp	00282$
      000835                        933 00281$:
      000835 E4               [12]  934 	clr	a
      000836                        935 00282$:
      000836 FC               [12]  936 	mov	r4,a
      000837 E4               [12]  937 	clr	a
      000838 BD 09 01         [24]  938 	cjne	r5,#0x09,00283$
      00083B 04               [12]  939 	inc	a
      00083C                        940 00283$:
      00083C FB               [12]  941 	mov	r3,a
      00083D A9 22            [24]  942 	mov	r1,_USBHostTransact_PARM_3
      00083F AA 23            [24]  943 	mov	r2,(_USBHostTransact_PARM_3 + 1)
      000841                        944 00139$:
                                    945 ;	src\usbhost.c:206: UH_EP_PID = endp_pid; // Specify the token PID and destination endpoint number
      000841 85 24 D5         [24]  946 	mov	_UEP2_T_LEN,_USBHostTransact_endp_pid_10000_117
                                    947 ;	src\usbhost.c:207: UIF_TRANSFER = 0;     // Allow transfer
                                    948 ;	assignBit
      000844 C2 D9            [12]  949 	clr	_UIF_TRANSFER
                                    950 ;	src\usbhost.c:209: for (i = WAIT_USB_TOUT_200US; i != 0 && UIF_TRANSFER == 0; i--)
      000846 78 15            [12]  951 	mov	r0,#0x15
      000848 7F 02            [12]  952 	mov	r7,#0x02
      00084A                        953 00144$:
      00084A E8               [12]  954 	mov	a,r0
      00084B 4F               [12]  955 	orl	a,r7
      00084C 60 0A            [24]  956 	jz	00101$
      00084E 20 D9 07         [24]  957 	jb	_UIF_TRANSFER,00101$
      000851 18               [12]  958 	dec	r0
      000852 B8 FF 01         [24]  959 	cjne	r0,#0xff,00287$
      000855 1F               [12]  960 	dec	r7
      000856                        961 00287$:
      000856 80 F2            [24]  962 	sjmp	00144$
      000858                        963 00101$:
                                    964 ;	src\usbhost.c:211: UH_EP_PID = 0x00; // Stop USB transfer
      000858 75 D5 00         [24]  965 	mov	_UEP2_T_LEN,#0x00
                                    966 ;	src\usbhost.c:213: if (UIF_TRANSFER == 0)
      00085B 20 D9 04         [24]  967 	jb	_UIF_TRANSFER,00103$
                                    968 ;	src\usbhost.c:214: return (ERR_USB_UNKNOWN);
      00085E 75 82 FE         [24]  969 	mov	dpl, #0xfe
      000861 22               [24]  970 	ret
      000862                        971 00103$:
                                    972 ;	src\usbhost.c:215: if (UIF_DETECT)
                                    973 ;	src\usbhost.c:218: UIF_DETECT = 0;       // 清中断标志
                                    974 ;	assignBit
      000862 10 D8 02         [24]  975 	jbc	_UIF_DETECT,00289$
      000865 80 4A            [24]  976 	sjmp	00111$
      000867                        977 00289$:
                                    978 ;	src\usbhost.c:219: s = AnalyzeRootHub(); // 分析ROOT-HUB状态
      000867 C0 05            [24]  979 	push	ar5
      000869 C0 04            [24]  980 	push	ar4
      00086B C0 03            [24]  981 	push	ar3
      00086D C0 02            [24]  982 	push	ar2
      00086F C0 01            [24]  983 	push	ar1
      000871 12 07 1D         [24]  984 	lcall	_AnalyzeRootHub
      000874 AF 82            [24]  985 	mov	r7, dpl
      000876 D0 01            [24]  986 	pop	ar1
      000878 D0 02            [24]  987 	pop	ar2
      00087A D0 03            [24]  988 	pop	ar3
      00087C D0 04            [24]  989 	pop	ar4
      00087E D0 05            [24]  990 	pop	ar5
                                    991 ;	src\usbhost.c:220: if (s == ERR_USB_CONNECT) 
      000880 BF 15 02         [24]  992 	cjne	r7,#0x15,00105$
                                    993 ;	src\usbhost.c:221: FoundNewDev = 1;
                                    994 ;	assignBit
      000883 D2 02            [12]  995 	setb	_FoundNewDev
      000885                        996 00105$:
                                    997 ;	src\usbhost.c:222: if (ThisUsbDev.DeviceStatus == ROOT_DEV_DISCONNECT)
      000885 90 00 7A         [24]  998 	mov	dptr,#_ThisUsbDev
      000888 E0               [24]  999 	movx	a,@dptr
      000889 FF               [12] 1000 	mov	r7,a
      00088A 70 04            [24] 1001 	jnz	00107$
                                   1002 ;	src\usbhost.c:223: return (ERR_USB_DISCON); // USB设备断开事件
      00088C 75 82 16         [24] 1003 	mov	dpl, #0x16
      00088F 22               [24] 1004 	ret
      000890                       1005 00107$:
                                   1006 ;	src\usbhost.c:224: if (ThisUsbDev.DeviceStatus == ROOT_DEV_CONNECTED)
      000890 BF 01 04         [24] 1007 	cjne	r7,#0x01,00109$
                                   1008 ;	src\usbhost.c:225: return (ERR_USB_CONNECT); // USB设备连接事件
      000893 75 82 15         [24] 1009 	mov	dpl, #0x15
      000896 22               [24] 1010 	ret
      000897                       1011 00109$:
                                   1012 ;	src\usbhost.c:226: mDelayuS(200);                // 等待传输完成
      000897 90 00 C8         [24] 1013 	mov	dptr,#0x00c8
      00089A C0 05            [24] 1014 	push	ar5
      00089C C0 04            [24] 1015 	push	ar4
      00089E C0 03            [24] 1016 	push	ar3
      0008A0 C0 02            [24] 1017 	push	ar2
      0008A2 C0 01            [24] 1018 	push	ar1
      0008A4 12 06 66         [24] 1019 	lcall	_mDelayuS
      0008A7 D0 01            [24] 1020 	pop	ar1
      0008A9 D0 02            [24] 1021 	pop	ar2
      0008AB D0 03            [24] 1022 	pop	ar3
      0008AD D0 04            [24] 1023 	pop	ar4
      0008AF D0 05            [24] 1024 	pop	ar5
      0008B1                       1025 00111$:
                                   1026 ;	src\usbhost.c:228: if (UIF_TRANSFER)
      0008B1 20 D9 03         [24] 1027 	jb	_UIF_TRANSFER,00295$
      0008B4 02 09 18         [24] 1028 	ljmp	00137$
      0008B7                       1029 00295$:
                                   1030 ;	src\usbhost.c:230: if (U_TOG_OK)
      0008B7 30 DE 04         [24] 1031 	jnb	_U_TOG_OK,00113$
                                   1032 ;	src\usbhost.c:231: return (ERR_SUCCESS);
      0008BA 75 82 00         [24] 1033 	mov	dpl, #0x00
      0008BD 22               [24] 1034 	ret
      0008BE                       1035 00113$:
                                   1036 ;	src\usbhost.c:232: r = USB_INT_ST & MASK_UIS_H_RES; // USB设备应答状态
      0008BE E5 D9            [12] 1037 	mov	a,_USB_INT_ST
      0008C0 54 0F            [12] 1038 	anl	a,#0x0f
      0008C2 FF               [12] 1039 	mov	r7,a
                                   1040 ;	src\usbhost.c:233: if (r == USB_PID_STALL)
      0008C3 BF 0E 06         [24] 1041 	cjne	r7,#0x0e,00115$
                                   1042 ;	src\usbhost.c:234: return (r | ERR_USB_TRANSFER);
      0008C6 74 20            [12] 1043 	mov	a,#0x20
      0008C8 4F               [12] 1044 	orl	a,r7
      0008C9 F5 82            [12] 1045 	mov	dpl,a
      0008CB 22               [24] 1046 	ret
      0008CC                       1047 00115$:
                                   1048 ;	src\usbhost.c:235: if (r == USB_PID_NAK)
      0008CC BF 0A 20         [24] 1049 	cjne	r7,#0x0a,00134$
                                   1050 ;	src\usbhost.c:237: if (timeout == 0)
      0008CF E9               [12] 1051 	mov	a,r1
      0008D0 4A               [12] 1052 	orl	a,r2
      0008D1 70 06            [24] 1053 	jnz	00117$
                                   1054 ;	src\usbhost.c:238: return (r | ERR_USB_TRANSFER);
      0008D3 74 20            [12] 1055 	mov	a,#0x20
      0008D5 4F               [12] 1056 	orl	a,r7
      0008D6 F5 82            [12] 1057 	mov	dpl,a
      0008D8 22               [24] 1058 	ret
      0008D9                       1059 00117$:
                                   1060 ;	src\usbhost.c:239: if (timeout < 0xFFFF)
      0008D9 89 00            [24] 1061 	mov	ar0,r1
      0008DB 8A 06            [24] 1062 	mov	ar6,r2
      0008DD C3               [12] 1063 	clr	c
      0008DE E8               [12] 1064 	mov	a,r0
      0008DF 94 FF            [12] 1065 	subb	a,#0xff
      0008E1 EE               [12] 1066 	mov	a,r6
      0008E2 94 FF            [12] 1067 	subb	a,#0xff
      0008E4 50 05            [24] 1068 	jnc	00119$
                                   1069 ;	src\usbhost.c:240: timeout--;
      0008E6 19               [12] 1070 	dec	r1
      0008E7 B9 FF 01         [24] 1071 	cjne	r1,#0xff,00303$
      0008EA 1A               [12] 1072 	dec	r2
      0008EB                       1073 00303$:
      0008EB                       1074 00119$:
                                   1075 ;	src\usbhost.c:241: --TransRetry;
      0008EB 15 25            [12] 1076 	dec	_USBHostTransact_TransRetry_10000_118
      0008ED 80 2C            [24] 1077 	sjmp	00138$
      0008EF                       1078 00134$:
                                   1079 ;	src\usbhost.c:244: switch (endp_pid >> 4)
      0008EF EC               [12] 1080 	mov	a,r4
      0008F0 70 06            [24] 1081 	jnz	00121$
      0008F2 EB               [12] 1082 	mov	a,r3
      0008F3 70 0C            [24] 1083 	jnz	00124$
      0008F5 BD 0D 1C         [24] 1084 	cjne	r5,#0x0d,00131$
                                   1085 ;	src\usbhost.c:247: case USB_PID_OUT:
      0008F8                       1086 00121$:
                                   1087 ;	src\usbhost.c:251: if (r)
      0008F8 EF               [12] 1088 	mov	a,r7
      0008F9 60 20            [24] 1089 	jz	00138$
                                   1090 ;	src\usbhost.c:252: return (r | ERR_USB_TRANSFER); // 不是超时/出错,意外应答
      0008FB 74 20            [12] 1091 	mov	a,#0x20
      0008FD 4F               [12] 1092 	orl	a,r7
      0008FE F5 82            [12] 1093 	mov	dpl,a
                                   1094 ;	src\usbhost.c:254: case USB_PID_IN:
      000900 22               [24] 1095 	ret
      000901                       1096 00124$:
                                   1097 ;	src\usbhost.c:258: if (r == USB_PID_DATA0 || r == USB_PID_DATA1)
      000901 BF 03 02         [24] 1098 	cjne	r7,#0x03,00309$
      000904 80 15            [24] 1099 	sjmp	00138$
      000906                       1100 00309$:
      000906 BF 0B 02         [24] 1101 	cjne	r7,#0x0b,00310$
      000909 80 10            [24] 1102 	sjmp	00138$
      00090B                       1103 00310$:
                                   1104 ;	src\usbhost.c:261: else if (r)
      00090B EF               [12] 1105 	mov	a,r7
      00090C 60 0D            [24] 1106 	jz	00138$
                                   1107 ;	src\usbhost.c:262: return (r | ERR_USB_TRANSFER); // 不是超时/出错,意外应答
      00090E 74 20            [12] 1108 	mov	a,#0x20
      000910 4F               [12] 1109 	orl	a,r7
      000911 F5 82            [12] 1110 	mov	dpl,a
                                   1111 ;	src\usbhost.c:264: default:
      000913 22               [24] 1112 	ret
      000914                       1113 00131$:
                                   1114 ;	src\usbhost.c:265: return (ERR_USB_UNKNOWN); // 不可能的情况
      000914 75 82 FE         [24] 1115 	mov	dpl, #0xfe
                                   1116 ;	src\usbhost.c:267: }
      000917 22               [24] 1117 	ret
      000918                       1118 00137$:
                                   1119 ;	src\usbhost.c:271: USB_INT_FG = 0xFF; /* 清中断标志 */
      000918 75 D8 FF         [24] 1120 	mov	_USB_INT_FG,#0xff
      00091B                       1121 00138$:
                                   1122 ;	src\usbhost.c:273: mDelayuS(15);
      00091B 90 00 0F         [24] 1123 	mov	dptr,#0x000f
      00091E C0 05            [24] 1124 	push	ar5
      000920 C0 04            [24] 1125 	push	ar4
      000922 C0 03            [24] 1126 	push	ar3
      000924 C0 02            [24] 1127 	push	ar2
      000926 C0 01            [24] 1128 	push	ar1
      000928 12 06 66         [24] 1129 	lcall	_mDelayuS
      00092B D0 01            [24] 1130 	pop	ar1
      00092D D0 02            [24] 1131 	pop	ar2
      00092F D0 03            [24] 1132 	pop	ar3
      000931 D0 04            [24] 1133 	pop	ar4
      000933 D0 05            [24] 1134 	pop	ar5
                                   1135 ;	src\usbhost.c:274: } while (++TransRetry < 3);
      000935 05 25            [12] 1136 	inc	_USBHostTransact_TransRetry_10000_118
      000937 74 FD            [12] 1137 	mov	a,#0x100 - 0x03
      000939 25 25            [12] 1138 	add	a,_USBHostTransact_TransRetry_10000_118
      00093B 40 03            [24] 1139 	jc	00312$
      00093D 02 08 41         [24] 1140 	ljmp	00139$
      000940                       1141 00312$:
                                   1142 ;	src\usbhost.c:275: return (ERR_USB_TRANSFER); // 应答超时
      000940 75 82 20         [24] 1143 	mov	dpl, #0x20
                                   1144 ;	src\usbhost.c:276: }
      000943 22               [24] 1145 	ret
                                   1146 ;------------------------------------------------------------
                                   1147 ;Allocation info for local variables in function 'HostCtrlTransfer'
                                   1148 ;------------------------------------------------------------
                                   1149 ;RetLen                    Allocated with name '_HostCtrlTransfer_PARM_2'
                                   1150 ;DataBuf                   Allocated to registers 
                                   1151 ;RemLen                    Allocated to registers r1 r2 
                                   1152 ;s                         Allocated to registers r7 
                                   1153 ;RxLen                     Allocated with name '_HostCtrlTransfer_RxLen_10000_128'
                                   1154 ;RxCnt                     Allocated to registers r5 
                                   1155 ;TxCnt                     Allocated to registers r5 
                                   1156 ;pBuf                      Allocated with name '_HostCtrlTransfer_pBuf_10000_128'
                                   1157 ;pLen                      Allocated with name '_HostCtrlTransfer_pLen_10000_128'
                                   1158 ;------------------------------------------------------------
                                   1159 ;	src\usbhost.c:287: uint8_t HostCtrlTransfer(__xdata uint8_t *DataBuf, uint8_t *RetLen) {
                                   1160 ;	-----------------------------------------
                                   1161 ;	 function HostCtrlTransfer
                                   1162 ;	-----------------------------------------
      000944                       1163 _HostCtrlTransfer:
      000944 85 82 2A         [24] 1164 	mov	_HostCtrlTransfer_pBuf_10000_128,dpl
      000947 85 83 2B         [24] 1165 	mov	(_HostCtrlTransfer_pBuf_10000_128 + 1),dph
                                   1166 ;	src\usbhost.c:293: pLen = RetLen;
      00094A 85 26 2C         [24] 1167 	mov	_HostCtrlTransfer_pLen_10000_128,_HostCtrlTransfer_PARM_2
      00094D 85 27 2D         [24] 1168 	mov	(_HostCtrlTransfer_pLen_10000_128 + 1),(_HostCtrlTransfer_PARM_2 + 1)
      000950 85 28 2E         [24] 1169 	mov	(_HostCtrlTransfer_pLen_10000_128 + 2),(_HostCtrlTransfer_PARM_2 + 2)
                                   1170 ;	src\usbhost.c:294: mDelayuS(200);
      000953 90 00 C8         [24] 1171 	mov	dptr,#0x00c8
      000956 12 06 66         [24] 1172 	lcall	_mDelayuS
                                   1173 ;	src\usbhost.c:295: if(pLen) *pLen = 0;       // total length of actual successful sending and receiving
      000959 E5 2C            [12] 1174 	mov	a,_HostCtrlTransfer_pLen_10000_128
      00095B 45 2D            [12] 1175 	orl	a,(_HostCtrlTransfer_pLen_10000_128 + 1)
      00095D 60 0D            [24] 1176 	jz	00102$
      00095F 85 2C 82         [24] 1177 	mov	dpl,_HostCtrlTransfer_pLen_10000_128
      000962 85 2D 83         [24] 1178 	mov	dph,(_HostCtrlTransfer_pLen_10000_128 + 1)
      000965 85 2E F0         [24] 1179 	mov	b,(_HostCtrlTransfer_pLen_10000_128 + 2)
      000968 E4               [12] 1180 	clr	a
      000969 12 12 05         [24] 1181 	lcall	__gptrput
      00096C                       1182 00102$:
                                   1183 ;	src\usbhost.c:296: UH_TX_LEN = sizeof(USB_SETUP_REQ);
      00096C 75 D7 08         [24] 1184 	mov	_UEP3_T_LEN,#0x08
                                   1185 ;	src\usbhost.c:297: s = USBHostTransact((uint8_t)(USB_PID_SETUP << 4 | 0x00), 0x00, 10000); // SETUP stage, 200mS timeout
      00096F 75 21 00         [24] 1186 	mov	_USBHostTransact_PARM_2,#0x00
      000972 75 22 10         [24] 1187 	mov	_USBHostTransact_PARM_3,#0x10
      000975 75 23 27         [24] 1188 	mov	(_USBHostTransact_PARM_3 + 1),#0x27
      000978 75 82 D0         [24] 1189 	mov	dpl, #0xd0
      00097B 12 08 1D         [24] 1190 	lcall	_USBHostTransact
                                   1191 ;	src\usbhost.c:298: if(s != ERR_SUCCESS) return(s);
      00097E E5 82            [12] 1192 	mov	a,dpl
      000980 FA               [12] 1193 	mov	r2,a
      000981 60 03            [24] 1194 	jz	00104$
      000983 8A 82            [24] 1195 	mov	dpl, r2
      000985 22               [24] 1196 	ret
      000986                       1197 00104$:
                                   1198 ;	src\usbhost.c:299: UH_RX_CTRL = UH_TX_CTRL = bUH_R_TOG | bUH_R_AUTO_TOG | bUH_T_TOG | bUH_T_AUTO_TOG;  // default DATA1
      000986 75 D6 D0         [24] 1199 	mov	_UEP3_CTRL,#0xd0
      000989 75 D4 D0         [24] 1200 	mov	_UEP2_CTRL,#0xd0
                                   1201 ;	src\usbhost.c:300: UH_TX_LEN = 0x01;     // default state of no data is IN
      00098C 75 D7 01         [24] 1202 	mov	_UEP3_T_LEN,#0x01
                                   1203 ;	src\usbhost.c:301: RemLen = (pSetupReq -> wLengthH << 8)|( pSetupReq -> wLengthL);
      00098F 90 00 47         [24] 1204 	mov	dptr,#(_TxBuffer + 0x0007)
      000992 E0               [24] 1205 	movx	a,@dptr
      000993 FA               [12] 1206 	mov	r2,a
      000994 79 00            [12] 1207 	mov	r1,#0x00
      000996 90 00 46         [24] 1208 	mov	dptr,#(_TxBuffer + 0x0006)
      000999 E0               [24] 1209 	movx	a,@dptr
      00099A 7F 00            [12] 1210 	mov	r7,#0x00
      00099C 42 01            [12] 1211 	orl	ar1,a
      00099E EF               [12] 1212 	mov	a,r7
      00099F 42 02            [12] 1213 	orl	ar2,a
                                   1214 ;	src\usbhost.c:302: if(RemLen && pBuf) {  // need to send and receive data
      0009A1 E9               [12] 1215 	mov	a,r1
      0009A2 4A               [12] 1216 	orl	a,r2
      0009A3 70 03            [24] 1217 	jnz	00324$
      0009A5 02 0B 42         [24] 1218 	ljmp	00130$
      0009A8                       1219 00324$:
      0009A8 E5 2A            [12] 1220 	mov	a,_HostCtrlTransfer_pBuf_10000_128
      0009AA 45 2B            [12] 1221 	orl	a,(_HostCtrlTransfer_pBuf_10000_128 + 1)
      0009AC 70 03            [24] 1222 	jnz	00325$
      0009AE 02 0B 42         [24] 1223 	ljmp	00130$
      0009B1                       1224 00325$:
                                   1225 ;	src\usbhost.c:303: if(pSetupReq -> bRequestType & USB_REQ_TYP_IN) {    // receive
      0009B1 90 00 40         [24] 1226 	mov	dptr,#_TxBuffer
      0009B4 E0               [24] 1227 	movx	a,@dptr
      0009B5 20 E7 03         [24] 1228 	jb	acc.7,00326$
      0009B8 02 0A 7B         [24] 1229 	ljmp	00123$
      0009BB                       1230 00326$:
                                   1231 ;	src\usbhost.c:304: while(RemLen) {
      0009BB                       1232 00113$:
      0009BB E9               [12] 1233 	mov	a,r1
      0009BC 4A               [12] 1234 	orl	a,r2
      0009BD 70 03            [24] 1235 	jnz	00327$
      0009BF 02 0A 75         [24] 1236 	ljmp	00115$
      0009C2                       1237 00327$:
                                   1238 ;	src\usbhost.c:305: mDelayuS(200);
      0009C2 90 00 C8         [24] 1239 	mov	dptr,#0x00c8
      0009C5 C0 02            [24] 1240 	push	ar2
      0009C7 C0 01            [24] 1241 	push	ar1
      0009C9 12 06 66         [24] 1242 	lcall	_mDelayuS
                                   1243 ;	src\usbhost.c:306: s = USBHostTransact((uint8_t)(USB_PID_IN << 4 | 0x00), UH_RX_CTRL, 200000/20);  // IN data
      0009CC 85 D4 21         [24] 1244 	mov	_USBHostTransact_PARM_2,_UEP2_CTRL
      0009CF 75 22 10         [24] 1245 	mov	_USBHostTransact_PARM_3,#0x10
      0009D2 75 23 27         [24] 1246 	mov	(_USBHostTransact_PARM_3 + 1),#0x27
      0009D5 75 82 90         [24] 1247 	mov	dpl, #0x90
      0009D8 12 08 1D         [24] 1248 	lcall	_USBHostTransact
      0009DB AF 82            [24] 1249 	mov	r7, dpl
      0009DD D0 01            [24] 1250 	pop	ar1
      0009DF D0 02            [24] 1251 	pop	ar2
                                   1252 ;	src\usbhost.c:307: if(s != ERR_SUCCESS) return(s);
      0009E1 EF               [12] 1253 	mov	a,r7
      0009E2 60 03            [24] 1254 	jz	00106$
      0009E4 8F 82            [24] 1255 	mov	dpl, r7
      0009E6 22               [24] 1256 	ret
      0009E7                       1257 00106$:
                                   1258 ;	src\usbhost.c:308: RxLen = USB_RX_LEN < RemLen ? USB_RX_LEN : RemLen;
      0009E7 AE DB            [24] 1259 	mov	r6,_USB_RX_LEN
      0009E9 7F 00            [12] 1260 	mov	r7,#0x00
      0009EB C3               [12] 1261 	clr	c
      0009EC EE               [12] 1262 	mov	a,r6
      0009ED 99               [12] 1263 	subb	a,r1
      0009EE EF               [12] 1264 	mov	a,r7
      0009EF 9A               [12] 1265 	subb	a,r2
      0009F0 50 04            [24] 1266 	jnc	00146$
      0009F2 AE DB            [24] 1267 	mov	r6,_USB_RX_LEN
      0009F4 80 04            [24] 1268 	sjmp	00147$
      0009F6                       1269 00146$:
      0009F6 89 06            [24] 1270 	mov	ar6,r1
      0009F8 8A 07            [24] 1271 	mov	ar7,r2
      0009FA                       1272 00147$:
      0009FA 8E 29            [24] 1273 	mov	_HostCtrlTransfer_RxLen_10000_128,r6
                                   1274 ;	src\usbhost.c:309: RemLen -= RxLen;
      0009FC AF 29            [24] 1275 	mov	r7,_HostCtrlTransfer_RxLen_10000_128
      0009FE 89 00            [24] 1276 	mov	ar0,r1
      000A00 8A 06            [24] 1277 	mov	ar6,r2
      000A02 8F 05            [24] 1278 	mov	ar5,r7
      000A04 7F 00            [12] 1279 	mov	r7,#0x00
      000A06 E8               [12] 1280 	mov	a,r0
      000A07 C3               [12] 1281 	clr	c
      000A08 9D               [12] 1282 	subb	a,r5
      000A09 F8               [12] 1283 	mov	r0,a
      000A0A EE               [12] 1284 	mov	a,r6
      000A0B 9F               [12] 1285 	subb	a,r7
      000A0C FE               [12] 1286 	mov	r6,a
      000A0D 88 01            [24] 1287 	mov	ar1,r0
      000A0F 8E 02            [24] 1288 	mov	ar2,r6
                                   1289 ;	src\usbhost.c:310: if(pLen) *pLen += RxLen;  // total length of actual successful sending and receiving
      000A11 E5 2C            [12] 1290 	mov	a,_HostCtrlTransfer_pLen_10000_128
      000A13 45 2D            [12] 1291 	orl	a,(_HostCtrlTransfer_pLen_10000_128 + 1)
      000A15 60 1A            [24] 1292 	jz	00161$
      000A17 85 2C 82         [24] 1293 	mov	dpl,_HostCtrlTransfer_pLen_10000_128
      000A1A 85 2D 83         [24] 1294 	mov	dph,(_HostCtrlTransfer_pLen_10000_128 + 1)
      000A1D 85 2E F0         [24] 1295 	mov	b,(_HostCtrlTransfer_pLen_10000_128 + 2)
      000A20 12 12 20         [24] 1296 	lcall	__gptrget
      000A23 25 29            [12] 1297 	add	a,_HostCtrlTransfer_RxLen_10000_128
      000A25 85 2C 82         [24] 1298 	mov	dpl,_HostCtrlTransfer_pLen_10000_128
      000A28 85 2D 83         [24] 1299 	mov	dph,(_HostCtrlTransfer_pLen_10000_128 + 1)
      000A2B 85 2E F0         [24] 1300 	mov	b,(_HostCtrlTransfer_pLen_10000_128 + 2)
      000A2E 12 12 05         [24] 1301 	lcall	__gptrput
                                   1302 ;	src\usbhost.c:313: for(RxCnt = 0; RxCnt != RxLen; RxCnt ++) {
      000A31                       1303 00161$:
      000A31 AE 2A            [24] 1304 	mov	r6,_HostCtrlTransfer_pBuf_10000_128
      000A33 AF 2B            [24] 1305 	mov	r7,(_HostCtrlTransfer_pBuf_10000_128 + 1)
      000A35 7D 00            [12] 1306 	mov	r5,#0x00
      000A37                       1307 00139$:
      000A37 ED               [12] 1308 	mov	a,r5
      000A38 B5 29 02         [24] 1309 	cjne	a,_HostCtrlTransfer_RxLen_10000_128,00331$
      000A3B 80 13            [24] 1310 	sjmp	00176$
      000A3D                       1311 00331$:
                                   1312 ;	src\usbhost.c:314: *pBuf = RxBuffer[RxCnt];
      000A3D 8D 82            [24] 1313 	mov	dpl,r5
      000A3F 75 83 00         [24] 1314 	mov	dph,#(_RxBuffer >> 8)
      000A42 E0               [24] 1315 	movx	a,@dptr
      000A43 8E 82            [24] 1316 	mov	dpl,r6
      000A45 8F 83            [24] 1317 	mov	dph,r7
      000A47 F0               [24] 1318 	movx	@dptr,a
      000A48 A3               [24] 1319 	inc	dptr
      000A49 AE 82            [24] 1320 	mov	r6,dpl
      000A4B AF 83            [24] 1321 	mov	r7,dph
                                   1322 ;	src\usbhost.c:315: pBuf++;
                                   1323 ;	src\usbhost.c:313: for(RxCnt = 0; RxCnt != RxLen; RxCnt ++) {
      000A4D 0D               [12] 1324 	inc	r5
      000A4E 80 E7            [24] 1325 	sjmp	00139$
      000A50                       1326 00176$:
      000A50 8E 2A            [24] 1327 	mov	_HostCtrlTransfer_pBuf_10000_128,r6
      000A52 8F 2B            [24] 1328 	mov	(_HostCtrlTransfer_pBuf_10000_128 + 1),r7
                                   1329 ;	src\usbhost.c:317: if(USB_RX_LEN == 0 || (USB_RX_LEN & (UsbDevEndp0Size - 1))) break;  // short bag
      000A54 E5 DB            [12] 1330 	mov	a,_USB_RX_LEN
      000A56 60 1D            [24] 1331 	jz	00115$
      000A58 90 00 01         [24] 1332 	mov	dptr,#_UsbDevEndp0Size
      000A5B E0               [24] 1333 	movx	a,@dptr
      000A5C FF               [12] 1334 	mov	r7,a
      000A5D 7E 00            [12] 1335 	mov	r6,#0x00
      000A5F 1F               [12] 1336 	dec	r7
      000A60 BF FF 01         [24] 1337 	cjne	r7,#0xff,00333$
      000A63 1E               [12] 1338 	dec	r6
      000A64                       1339 00333$:
      000A64 AC DB            [24] 1340 	mov	r4,_USB_RX_LEN
      000A66 7D 00            [12] 1341 	mov	r5,#0x00
      000A68 EC               [12] 1342 	mov	a,r4
      000A69 52 07            [12] 1343 	anl	ar7,a
      000A6B ED               [12] 1344 	mov	a,r5
      000A6C 52 06            [12] 1345 	anl	ar6,a
      000A6E EF               [12] 1346 	mov	a,r7
      000A6F 4E               [12] 1347 	orl	a,r6
      000A70 70 03            [24] 1348 	jnz	00334$
      000A72 02 09 BB         [24] 1349 	ljmp	00113$
      000A75                       1350 00334$:
      000A75                       1351 00115$:
                                   1352 ;	src\usbhost.c:319: UH_TX_LEN = 0x00;                     // status phase is OUT
      000A75 75 D7 00         [24] 1353 	mov	_UEP3_T_LEN,#0x00
      000A78 02 0B 42         [24] 1354 	ljmp	00130$
                                   1355 ;	src\usbhost.c:322: while(RemLen) {
      000A7B                       1356 00123$:
      000A7B E9               [12] 1357 	mov	a,r1
      000A7C 4A               [12] 1358 	orl	a,r2
      000A7D 70 03            [24] 1359 	jnz	00335$
      000A7F 02 0B 42         [24] 1360 	ljmp	00130$
      000A82                       1361 00335$:
                                   1362 ;	src\usbhost.c:323: mDelayuS(200);
      000A82 90 00 C8         [24] 1363 	mov	dptr,#0x00c8
      000A85 C0 02            [24] 1364 	push	ar2
      000A87 C0 01            [24] 1365 	push	ar1
      000A89 12 06 66         [24] 1366 	lcall	_mDelayuS
      000A8C D0 01            [24] 1367 	pop	ar1
      000A8E D0 02            [24] 1368 	pop	ar2
                                   1369 ;	src\usbhost.c:324: UH_TX_LEN = RemLen >= UsbDevEndp0Size ? UsbDevEndp0Size : RemLen;
      000A90 90 00 01         [24] 1370 	mov	dptr,#_UsbDevEndp0Size
      000A93 E0               [24] 1371 	movx	a,@dptr
      000A94 FE               [12] 1372 	mov	r6,a
      000A95 7F 00            [12] 1373 	mov	r7,#0x00
      000A97 C3               [12] 1374 	clr	c
      000A98 E9               [12] 1375 	mov	a,r1
      000A99 9E               [12] 1376 	subb	a,r6
      000A9A EA               [12] 1377 	mov	a,r2
      000A9B 9F               [12] 1378 	subb	a,r7
      000A9C 92 01            [24] 1379 	mov	_HostCtrlTransfer_sloc0_1_0,c
      000A9E 50 04            [24] 1380 	jnc	00149$
      000AA0 89 06            [24] 1381 	mov	ar6,r1
      000AA2 8A 07            [24] 1382 	mov	ar7,r2
      000AA4                       1383 00149$:
      000AA4 8E D7            [24] 1384 	mov	_UEP3_T_LEN,r6
                                   1385 ;	src\usbhost.c:328: if(pBuf[1] == 0x09) {               // HID class command processing
      000AA6 85 2A 82         [24] 1386 	mov	dpl,_HostCtrlTransfer_pBuf_10000_128
      000AA9 85 2B 83         [24] 1387 	mov	dph,(_HostCtrlTransfer_pBuf_10000_128 + 1)
      000AAC A3               [24] 1388 	inc	dptr
      000AAD E0               [24] 1389 	movx	a,@dptr
      000AAE FF               [12] 1390 	mov	r7,a
      000AAF BF 09 0C         [24] 1391 	cjne	r7,#0x09,00168$
                                   1392 ;	src\usbhost.c:329: Set_Port = Set_Port^1;
      000AB2 63 17 01         [24] 1393 	xrl	_Set_Port,#0x01
                                   1394 ;	src\usbhost.c:330: *pBuf = Set_Port;
      000AB5 85 2A 82         [24] 1395 	mov	dpl,_HostCtrlTransfer_pBuf_10000_128
      000AB8 85 2B 83         [24] 1396 	mov	dph,(_HostCtrlTransfer_pBuf_10000_128 + 1)
      000ABB E5 17            [12] 1397 	mov	a,_Set_Port
      000ABD F0               [24] 1398 	movx	@dptr,a
                                   1399 ;	src\usbhost.c:336: for(TxCnt = 0; TxCnt != UH_TX_LEN; TxCnt ++) {
      000ABE                       1400 00168$:
      000ABE AE 2A            [24] 1401 	mov	r6,_HostCtrlTransfer_pBuf_10000_128
      000AC0 AF 2B            [24] 1402 	mov	r7,(_HostCtrlTransfer_pBuf_10000_128 + 1)
      000AC2 7D 00            [12] 1403 	mov	r5,#0x00
      000AC4                       1404 00142$:
      000AC4 ED               [12] 1405 	mov	a,r5
      000AC5 B5 D7 02         [24] 1406 	cjne	a,_UEP3_T_LEN,00339$
      000AC8 80 1C            [24] 1407 	sjmp	00177$
      000ACA                       1408 00339$:
                                   1409 ;	src\usbhost.c:337: TxBuffer[TxCnt] = *pBuf;
      000ACA ED               [12] 1410 	mov	a,r5
      000ACB 24 40            [12] 1411 	add	a, #_TxBuffer
      000ACD FB               [12] 1412 	mov	r3,a
      000ACE E4               [12] 1413 	clr	a
      000ACF 34 00            [12] 1414 	addc	a, #(_TxBuffer >> 8)
      000AD1 FC               [12] 1415 	mov	r4,a
      000AD2 8E 82            [24] 1416 	mov	dpl,r6
      000AD4 8F 83            [24] 1417 	mov	dph,r7
      000AD6 E0               [24] 1418 	movx	a,@dptr
      000AD7 F8               [12] 1419 	mov	r0,a
      000AD8 A3               [24] 1420 	inc	dptr
      000AD9 AE 82            [24] 1421 	mov	r6,dpl
      000ADB AF 83            [24] 1422 	mov	r7,dph
      000ADD 8B 82            [24] 1423 	mov	dpl,r3
      000ADF 8C 83            [24] 1424 	mov	dph,r4
      000AE1 E8               [12] 1425 	mov	a,r0
      000AE2 F0               [24] 1426 	movx	@dptr,a
                                   1427 ;	src\usbhost.c:338: pBuf ++;
                                   1428 ;	src\usbhost.c:336: for(TxCnt = 0; TxCnt != UH_TX_LEN; TxCnt ++) {
      000AE3 0D               [12] 1429 	inc	r5
      000AE4 80 DE            [24] 1430 	sjmp	00142$
      000AE6                       1431 00177$:
      000AE6 8E 2A            [24] 1432 	mov	_HostCtrlTransfer_pBuf_10000_128,r6
      000AE8 8F 2B            [24] 1433 	mov	(_HostCtrlTransfer_pBuf_10000_128 + 1),r7
                                   1434 ;	src\usbhost.c:340: s = USBHostTransact(USB_PID_OUT << 4 | 0x00, UH_TX_CTRL, 200000/20);  // OUT data
      000AEA 85 D6 21         [24] 1435 	mov	_USBHostTransact_PARM_2,_UEP3_CTRL
      000AED 75 22 10         [24] 1436 	mov	_USBHostTransact_PARM_3,#0x10
      000AF0 75 23 27         [24] 1437 	mov	(_USBHostTransact_PARM_3 + 1),#0x27
      000AF3 75 82 10         [24] 1438 	mov	dpl, #0x10
      000AF6 C0 02            [24] 1439 	push	ar2
      000AF8 C0 01            [24] 1440 	push	ar1
      000AFA 12 08 1D         [24] 1441 	lcall	_USBHostTransact
      000AFD AF 82            [24] 1442 	mov	r7, dpl
      000AFF D0 01            [24] 1443 	pop	ar1
      000B01 D0 02            [24] 1444 	pop	ar2
                                   1445 ;	src\usbhost.c:341: if(s != ERR_SUCCESS) return(s);
      000B03 EF               [12] 1446 	mov	a,r7
      000B04 60 03            [24] 1447 	jz	00120$
      000B06 8F 82            [24] 1448 	mov	dpl, r7
      000B08 22               [24] 1449 	ret
      000B09                       1450 00120$:
                                   1451 ;	src\usbhost.c:342: RemLen -= UH_TX_LEN;
      000B09 AF D7            [24] 1452 	mov	r7,_UEP3_T_LEN
      000B0B 89 05            [24] 1453 	mov	ar5,r1
      000B0D 8A 06            [24] 1454 	mov	ar6,r2
      000B0F 7C 00            [12] 1455 	mov	r4,#0x00
      000B11 ED               [12] 1456 	mov	a,r5
      000B12 C3               [12] 1457 	clr	c
      000B13 9F               [12] 1458 	subb	a,r7
      000B14 FD               [12] 1459 	mov	r5,a
      000B15 EE               [12] 1460 	mov	a,r6
      000B16 9C               [12] 1461 	subb	a,r4
      000B17 FE               [12] 1462 	mov	r6,a
      000B18 8D 01            [24] 1463 	mov	ar1,r5
      000B1A 8E 02            [24] 1464 	mov	ar2,r6
                                   1465 ;	src\usbhost.c:343: if(pLen) *pLen += UH_TX_LEN;        // total length of actual successful sending and receiving
      000B1C E5 2C            [12] 1466 	mov	a,_HostCtrlTransfer_pLen_10000_128
      000B1E 45 2D            [12] 1467 	orl	a,(_HostCtrlTransfer_pLen_10000_128 + 1)
      000B20 70 03            [24] 1468 	jnz	00341$
      000B22 02 0A 7B         [24] 1469 	ljmp	00123$
      000B25                       1470 00341$:
      000B25 85 2C 82         [24] 1471 	mov	dpl,_HostCtrlTransfer_pLen_10000_128
      000B28 85 2D 83         [24] 1472 	mov	dph,(_HostCtrlTransfer_pLen_10000_128 + 1)
      000B2B 85 2E F0         [24] 1473 	mov	b,(_HostCtrlTransfer_pLen_10000_128 + 2)
      000B2E 12 12 20         [24] 1474 	lcall	__gptrget
      000B31 25 D7            [12] 1475 	add	a,_UEP3_T_LEN
      000B33 85 2C 82         [24] 1476 	mov	dpl,_HostCtrlTransfer_pLen_10000_128
      000B36 85 2D 83         [24] 1477 	mov	dph,(_HostCtrlTransfer_pLen_10000_128 + 1)
      000B39 85 2E F0         [24] 1478 	mov	b,(_HostCtrlTransfer_pLen_10000_128 + 2)
      000B3C 12 12 05         [24] 1479 	lcall	__gptrput
      000B3F 02 0A 7B         [24] 1480 	ljmp	00123$
      000B42                       1481 00130$:
                                   1482 ;	src\usbhost.c:348: mDelayuS(200);
      000B42 90 00 C8         [24] 1483 	mov	dptr,#0x00c8
      000B45 12 06 66         [24] 1484 	lcall	_mDelayuS
                                   1485 ;	src\usbhost.c:349: s = USBHostTransact((UH_TX_LEN ? USB_PID_IN << 4 | 0x00: USB_PID_OUT << 4 | 0x00), bUH_R_TOG | bUH_T_TOG, 200000/20); // STATUS stage
      000B48 E5 D7            [12] 1486 	mov	a,_UEP3_T_LEN
      000B4A 60 04            [24] 1487 	jz	00150$
      000B4C 7F 90            [12] 1488 	mov	r7,#0x90
      000B4E 80 02            [24] 1489 	sjmp	00151$
      000B50                       1490 00150$:
      000B50 7F 10            [12] 1491 	mov	r7,#0x10
      000B52                       1492 00151$:
      000B52 75 21 C0         [24] 1493 	mov	_USBHostTransact_PARM_2,#0xc0
      000B55 75 22 10         [24] 1494 	mov	_USBHostTransact_PARM_3,#0x10
      000B58 75 23 27         [24] 1495 	mov	(_USBHostTransact_PARM_3 + 1),#0x27
      000B5B 8F 82            [24] 1496 	mov	dpl, r7
      000B5D 12 08 1D         [24] 1497 	lcall	_USBHostTransact
                                   1498 ;	src\usbhost.c:350: if(s != ERR_SUCCESS) return(s);
      000B60 E5 82            [12] 1499 	mov	a,dpl
      000B62 FF               [12] 1500 	mov	r7,a
      000B63 60 03            [24] 1501 	jz	00133$
      000B65 8F 82            [24] 1502 	mov	dpl, r7
      000B67 22               [24] 1503 	ret
      000B68                       1504 00133$:
                                   1505 ;	src\usbhost.c:351: if(UH_TX_LEN == 0) return(ERR_SUCCESS);   // state OUT
      000B68 E5 D7            [12] 1506 	mov	a,_UEP3_T_LEN
      000B6A 70 03            [24] 1507 	jnz	00135$
      000B6C F5 82            [12] 1508 	mov	dpl,a
      000B6E 22               [24] 1509 	ret
      000B6F                       1510 00135$:
                                   1511 ;	src\usbhost.c:352: if(USB_RX_LEN == 0) return(ERR_SUCCESS);  // state IN, check IN state return data length
      000B6F E5 DB            [12] 1512 	mov	a,_USB_RX_LEN
      000B71 70 03            [24] 1513 	jnz	00137$
      000B73 F5 82            [12] 1514 	mov	dpl,a
      000B75 22               [24] 1515 	ret
      000B76                       1516 00137$:
                                   1517 ;	src\usbhost.c:353: return(ERR_USB_BUF_OVER);                 // IN state phase error
      000B76 75 82 17         [24] 1518 	mov	dpl, #0x17
                                   1519 ;	src\usbhost.c:354: }
      000B79 22               [24] 1520 	ret
                                   1521 ;------------------------------------------------------------
                                   1522 ;Allocation info for local variables in function 'CopySetupReqPkg'
                                   1523 ;------------------------------------------------------------
                                   1524 ;pReqPkt                   Allocated to registers 
                                   1525 ;i                         Allocated to registers r5 
                                   1526 ;------------------------------------------------------------
                                   1527 ;	src\usbhost.c:362: void CopySetupReqPkg(__code uint8_t *pReqPkt) // 复制控制传输的请求包
                                   1528 ;	-----------------------------------------
                                   1529 ;	 function CopySetupReqPkg
                                   1530 ;	-----------------------------------------
      000B7A                       1531 _CopySetupReqPkg:
      000B7A AE 82            [24] 1532 	mov	r6, dpl
      000B7C AF 83            [24] 1533 	mov	r7, dph
                                   1534 ;	src\usbhost.c:365: for (i = 0; i != sizeof(USB_SETUP_REQ); i++)
      000B7E 7D 00            [12] 1535 	mov	r5,#0x00
      000B80                       1536 00102$:
                                   1537 ;	src\usbhost.c:367: ((__xdata uint8_t *)pSetupReq)[i] = *pReqPkt;
      000B80 ED               [12] 1538 	mov	a,r5
      000B81 24 40            [12] 1539 	add	a, #_TxBuffer
      000B83 FB               [12] 1540 	mov	r3,a
      000B84 E4               [12] 1541 	clr	a
      000B85 34 00            [12] 1542 	addc	a, #(_TxBuffer >> 8)
      000B87 FC               [12] 1543 	mov	r4,a
      000B88 8E 82            [24] 1544 	mov	dpl,r6
      000B8A 8F 83            [24] 1545 	mov	dph,r7
      000B8C E4               [12] 1546 	clr	a
      000B8D 93               [24] 1547 	movc	a,@a+dptr
      000B8E FA               [12] 1548 	mov	r2,a
      000B8F A3               [24] 1549 	inc	dptr
      000B90 AE 82            [24] 1550 	mov	r6,dpl
      000B92 AF 83            [24] 1551 	mov	r7,dph
      000B94 8B 82            [24] 1552 	mov	dpl,r3
      000B96 8C 83            [24] 1553 	mov	dph,r4
      000B98 EA               [12] 1554 	mov	a,r2
      000B99 F0               [24] 1555 	movx	@dptr,a
                                   1556 ;	src\usbhost.c:368: pReqPkt++;
                                   1557 ;	src\usbhost.c:365: for (i = 0; i != sizeof(USB_SETUP_REQ); i++)
      000B9A 0D               [12] 1558 	inc	r5
      000B9B BD 08 E2         [24] 1559 	cjne	r5,#0x08,00102$
                                   1560 ;	src\usbhost.c:370: }
      000B9E 22               [24] 1561 	ret
                                   1562 ;------------------------------------------------------------
                                   1563 ;Allocation info for local variables in function 'CtrlGetDeviceDescr'
                                   1564 ;------------------------------------------------------------
                                   1565 ;s                         Allocated to registers r6 
                                   1566 ;len                       Allocated with name '_CtrlGetDeviceDescr_len_10000_144'
                                   1567 ;------------------------------------------------------------
                                   1568 ;	src\usbhost.c:380: uint8_t CtrlGetDeviceDescr(void)
                                   1569 ;	-----------------------------------------
                                   1570 ;	 function CtrlGetDeviceDescr
                                   1571 ;	-----------------------------------------
      000B9F                       1572 _CtrlGetDeviceDescr:
                                   1573 ;	src\usbhost.c:384: UsbDevEndp0Size = DEFAULT_ENDP0_SIZE;
      000B9F 90 00 01         [24] 1574 	mov	dptr,#_UsbDevEndp0Size
      000BA2 74 08            [12] 1575 	mov	a,#0x08
      000BA4 F0               [24] 1576 	movx	@dptr,a
                                   1577 ;	src\usbhost.c:385: CopySetupReqPkg(SetupGetDevDescr);
      000BA5 90 14 55         [24] 1578 	mov	dptr,#_SetupGetDevDescr
      000BA8 12 0B 7A         [24] 1579 	lcall	_CopySetupReqPkg
                                   1580 ;	src\usbhost.c:386: s = HostCtrlTransfer(Com_Buffer, (uint8_t *)&len); // 执行控制传输
      000BAB 75 26 2F         [24] 1581 	mov	_HostCtrlTransfer_PARM_2,#_CtrlGetDeviceDescr_len_10000_144
      000BAE 75 27 00         [24] 1582 	mov	(_HostCtrlTransfer_PARM_2 + 1),#0x00
      000BB1 75 28 40         [24] 1583 	mov	(_HostCtrlTransfer_PARM_2 + 2),#0x40
      000BB4 90 00 02         [24] 1584 	mov	dptr,#_Com_Buffer
      000BB7 12 09 44         [24] 1585 	lcall	_HostCtrlTransfer
                                   1586 ;	src\usbhost.c:387: if (s != ERR_SUCCESS)
      000BBA E5 82            [12] 1587 	mov	a,dpl
      000BBC FE               [12] 1588 	mov	r6,a
      000BBD 60 03            [24] 1589 	jz	00102$
                                   1590 ;	src\usbhost.c:389: return (s);
      000BBF 8E 82            [24] 1591 	mov	dpl, r6
      000BC1 22               [24] 1592 	ret
      000BC2                       1593 00102$:
                                   1594 ;	src\usbhost.c:391: UsbDevEndp0Size = ((PXUSB_DEV_DESCR)Com_Buffer)->bMaxPacketSize0; // 端点0最大包长度,这是简化处理,正常应该先获取前8字节后立即更新UsbDevEndp0Size再继续
      000BC2 90 00 09         [24] 1595 	mov	dptr,#(_Com_Buffer + 0x0007)
      000BC5 E0               [24] 1596 	movx	a,@dptr
      000BC6 90 00 01         [24] 1597 	mov	dptr,#_UsbDevEndp0Size
      000BC9 F0               [24] 1598 	movx	@dptr,a
                                   1599 ;	src\usbhost.c:392: if (len < ((PUSB_SETUP_REQ)SetupGetDevDescr)->wLengthL)
      000BCA 90 14 5B         [24] 1600 	mov	dptr,#(_SetupGetDevDescr + 0x0006)
      000BCD E4               [12] 1601 	clr	a
      000BCE 93               [24] 1602 	movc	a,@a+dptr
      000BCF FF               [12] 1603 	mov	r7,a
      000BD0 C3               [12] 1604 	clr	c
      000BD1 E5 2F            [12] 1605 	mov	a,_CtrlGetDeviceDescr_len_10000_144
      000BD3 9F               [12] 1606 	subb	a,r7
      000BD4 50 04            [24] 1607 	jnc	00104$
                                   1608 ;	src\usbhost.c:394: return (ERR_USB_BUF_OVER); // 描述符长度错误
      000BD6 75 82 17         [24] 1609 	mov	dpl, #0x17
      000BD9 22               [24] 1610 	ret
      000BDA                       1611 00104$:
                                   1612 ;	src\usbhost.c:396: return (ERR_SUCCESS);
      000BDA 75 82 00         [24] 1613 	mov	dpl, #0x00
                                   1614 ;	src\usbhost.c:397: }
      000BDD 22               [24] 1615 	ret
                                   1616 ;------------------------------------------------------------
                                   1617 ;Allocation info for local variables in function 'CtrlGetConfigDescr'
                                   1618 ;------------------------------------------------------------
                                   1619 ;s                         Allocated to registers r7 
                                   1620 ;len                       Allocated with name '_CtrlGetConfigDescr_len_10000_148'
                                   1621 ;------------------------------------------------------------
                                   1622 ;	src\usbhost.c:407: uint8_t CtrlGetConfigDescr(void)
                                   1623 ;	-----------------------------------------
                                   1624 ;	 function CtrlGetConfigDescr
                                   1625 ;	-----------------------------------------
      000BDE                       1626 _CtrlGetConfigDescr:
                                   1627 ;	src\usbhost.c:410: CopySetupReqPkg(SetupGetCfgDescr);
      000BDE 90 14 5D         [24] 1628 	mov	dptr,#_SetupGetCfgDescr
      000BE1 12 0B 7A         [24] 1629 	lcall	_CopySetupReqPkg
                                   1630 ;	src\usbhost.c:411: s = HostCtrlTransfer(Com_Buffer, (uint8_t *)&len); // 执行控制传输
      000BE4 75 26 30         [24] 1631 	mov	_HostCtrlTransfer_PARM_2,#_CtrlGetConfigDescr_len_10000_148
      000BE7 75 27 00         [24] 1632 	mov	(_HostCtrlTransfer_PARM_2 + 1),#0x00
      000BEA 75 28 40         [24] 1633 	mov	(_HostCtrlTransfer_PARM_2 + 2),#0x40
      000BED 90 00 02         [24] 1634 	mov	dptr,#_Com_Buffer
      000BF0 12 09 44         [24] 1635 	lcall	_HostCtrlTransfer
                                   1636 ;	src\usbhost.c:412: if (s != ERR_SUCCESS)
      000BF3 E5 82            [12] 1637 	mov	a,dpl
      000BF5 FF               [12] 1638 	mov	r7,a
      000BF6 60 03            [24] 1639 	jz	00102$
                                   1640 ;	src\usbhost.c:414: return (s);
      000BF8 8F 82            [24] 1641 	mov	dpl, r7
      000BFA 22               [24] 1642 	ret
      000BFB                       1643 00102$:
                                   1644 ;	src\usbhost.c:417: len = ((PXUSB_CFG_DESCR)Com_Buffer)->wTotalLengthL;
      000BFB 90 00 04         [24] 1645 	mov	dptr,#(_Com_Buffer + 0x0002)
      000BFE E0               [24] 1646 	movx	a,@dptr
      000BFF F5 30            [12] 1647 	mov	_CtrlGetConfigDescr_len_10000_148,a
                                   1648 ;	src\usbhost.c:418: CopySetupReqPkg(SetupGetCfgDescr);
      000C01 90 14 5D         [24] 1649 	mov	dptr,#_SetupGetCfgDescr
      000C04 12 0B 7A         [24] 1650 	lcall	_CopySetupReqPkg
                                   1651 ;	src\usbhost.c:419: pSetupReq->wLengthL = len;                         // 完整配置描述符的总长度
      000C07 90 00 46         [24] 1652 	mov	dptr,#(_TxBuffer + 0x0006)
      000C0A E5 30            [12] 1653 	mov	a,_CtrlGetConfigDescr_len_10000_148
      000C0C F0               [24] 1654 	movx	@dptr,a
                                   1655 ;	src\usbhost.c:420: s = HostCtrlTransfer(Com_Buffer, (uint8_t *)&len); // 执行控制传输
      000C0D 75 26 30         [24] 1656 	mov	_HostCtrlTransfer_PARM_2,#_CtrlGetConfigDescr_len_10000_148
      000C10 75 27 00         [24] 1657 	mov	(_HostCtrlTransfer_PARM_2 + 1),#0x00
      000C13 75 28 40         [24] 1658 	mov	(_HostCtrlTransfer_PARM_2 + 2),#0x40
      000C16 90 00 02         [24] 1659 	mov	dptr,#_Com_Buffer
      000C19 12 09 44         [24] 1660 	lcall	_HostCtrlTransfer
                                   1661 ;	src\usbhost.c:421: if (s != ERR_SUCCESS)
      000C1C E5 82            [12] 1662 	mov	a,dpl
      000C1E FF               [12] 1663 	mov	r7,a
      000C1F 60 03            [24] 1664 	jz	00104$
                                   1665 ;	src\usbhost.c:423: return (s);
      000C21 8F 82            [24] 1666 	mov	dpl, r7
      000C23 22               [24] 1667 	ret
      000C24                       1668 00104$:
                                   1669 ;	src\usbhost.c:425: return (ERR_SUCCESS);
      000C24 75 82 00         [24] 1670 	mov	dpl, #0x00
                                   1671 ;	src\usbhost.c:426: }
      000C27 22               [24] 1672 	ret
                                   1673 ;------------------------------------------------------------
                                   1674 ;Allocation info for local variables in function 'CtrlSetUsbAddress'
                                   1675 ;------------------------------------------------------------
                                   1676 ;addr                      Allocated to registers r7 
                                   1677 ;s                         Allocated to registers r5 
                                   1678 ;------------------------------------------------------------
                                   1679 ;	src\usbhost.c:435: uint8_t CtrlSetUsbAddress(uint8_t addr)
                                   1680 ;	-----------------------------------------
                                   1681 ;	 function CtrlSetUsbAddress
                                   1682 ;	-----------------------------------------
      000C28                       1683 _CtrlSetUsbAddress:
      000C28 AF 82            [24] 1684 	mov	r7, dpl
                                   1685 ;	src\usbhost.c:438: CopySetupReqPkg(SetupSetUsbAddr);
      000C2A 90 14 65         [24] 1686 	mov	dptr,#_SetupSetUsbAddr
      000C2D C0 07            [24] 1687 	push	ar7
      000C2F 12 0B 7A         [24] 1688 	lcall	_CopySetupReqPkg
      000C32 D0 07            [24] 1689 	pop	ar7
                                   1690 ;	src\usbhost.c:439: pSetupReq->wValueL = addr;        // USB设备地址
      000C34 90 00 42         [24] 1691 	mov	dptr,#(_TxBuffer + 0x0002)
      000C37 EF               [12] 1692 	mov	a,r7
      000C38 F0               [24] 1693 	movx	@dptr,a
                                   1694 ;	src\usbhost.c:440: s = HostCtrlTransfer(NULL, NULL); // 执行控制传输
      000C39 E4               [12] 1695 	clr	a
      000C3A F5 26            [12] 1696 	mov	_HostCtrlTransfer_PARM_2,a
      000C3C F5 27            [12] 1697 	mov	(_HostCtrlTransfer_PARM_2 + 1),a
      000C3E F5 28            [12] 1698 	mov	(_HostCtrlTransfer_PARM_2 + 2),a
      000C40 90 00 00         [24] 1699 	mov	dptr,#0x0000
      000C43 C0 07            [24] 1700 	push	ar7
      000C45 12 09 44         [24] 1701 	lcall	_HostCtrlTransfer
      000C48 AE 82            [24] 1702 	mov	r6, dpl
      000C4A D0 07            [24] 1703 	pop	ar7
                                   1704 ;	src\usbhost.c:441: if (s != ERR_SUCCESS)
      000C4C EE               [12] 1705 	mov	a,r6
      000C4D FD               [12] 1706 	mov	r5,a
      000C4E 60 03            [24] 1707 	jz	00102$
                                   1708 ;	src\usbhost.c:443: return (s);
      000C50 8D 82            [24] 1709 	mov	dpl, r5
      000C52 22               [24] 1710 	ret
      000C53                       1711 00102$:
                                   1712 ;	src\usbhost.c:445: SetHostUsbAddr(addr); // 设置USB主机当前操作的USB设备地址
      000C53 8F 82            [24] 1713 	mov	dpl, r7
      000C55 12 07 4E         [24] 1714 	lcall	_SetHostUsbAddr
                                   1715 ;	src\usbhost.c:446: mDelaymS(10);         // 等待USB设备完成操作
      000C58 90 00 0A         [24] 1716 	mov	dptr,#0x000a
      000C5B 12 06 7C         [24] 1717 	lcall	_mDelaymS
                                   1718 ;	src\usbhost.c:447: return (ERR_SUCCESS);
      000C5E 75 82 00         [24] 1719 	mov	dpl, #0x00
                                   1720 ;	src\usbhost.c:448: }
      000C61 22               [24] 1721 	ret
                                   1722 ;------------------------------------------------------------
                                   1723 ;Allocation info for local variables in function 'CtrlSetUsbConfig'
                                   1724 ;------------------------------------------------------------
                                   1725 ;cfg                       Allocated to registers r7 
                                   1726 ;------------------------------------------------------------
                                   1727 ;	src\usbhost.c:457: uint8_t CtrlSetUsbConfig(uint8_t cfg)
                                   1728 ;	-----------------------------------------
                                   1729 ;	 function CtrlSetUsbConfig
                                   1730 ;	-----------------------------------------
      000C62                       1731 _CtrlSetUsbConfig:
      000C62 AF 82            [24] 1732 	mov	r7, dpl
                                   1733 ;	src\usbhost.c:459: CopySetupReqPkg(SetupSetUsbConfig);
      000C64 90 14 6D         [24] 1734 	mov	dptr,#_SetupSetUsbConfig
      000C67 C0 07            [24] 1735 	push	ar7
      000C69 12 0B 7A         [24] 1736 	lcall	_CopySetupReqPkg
      000C6C D0 07            [24] 1737 	pop	ar7
                                   1738 ;	src\usbhost.c:460: pSetupReq->wValueL = cfg;              // USB设备配置
      000C6E 90 00 42         [24] 1739 	mov	dptr,#(_TxBuffer + 0x0002)
      000C71 EF               [12] 1740 	mov	a,r7
      000C72 F0               [24] 1741 	movx	@dptr,a
                                   1742 ;	src\usbhost.c:461: return (HostCtrlTransfer(NULL, NULL)); // 执行控制传输
      000C73 E4               [12] 1743 	clr	a
      000C74 F5 26            [12] 1744 	mov	_HostCtrlTransfer_PARM_2,a
      000C76 F5 27            [12] 1745 	mov	(_HostCtrlTransfer_PARM_2 + 1),a
      000C78 F5 28            [12] 1746 	mov	(_HostCtrlTransfer_PARM_2 + 2),a
      000C7A 90 00 00         [24] 1747 	mov	dptr,#0x0000
                                   1748 ;	src\usbhost.c:462: }
      000C7D 02 09 44         [24] 1749 	ljmp	_HostCtrlTransfer
                                   1750 ;------------------------------------------------------------
                                   1751 ;Allocation info for local variables in function 'CtrlClearEndpStall'
                                   1752 ;------------------------------------------------------------
                                   1753 ;endp                      Allocated to registers r7 
                                   1754 ;------------------------------------------------------------
                                   1755 ;	src\usbhost.c:471: uint8_t CtrlClearEndpStall(uint8_t endp)
                                   1756 ;	-----------------------------------------
                                   1757 ;	 function CtrlClearEndpStall
                                   1758 ;	-----------------------------------------
      000C80                       1759 _CtrlClearEndpStall:
      000C80 AF 82            [24] 1760 	mov	r7, dpl
                                   1761 ;	src\usbhost.c:473: CopySetupReqPkg(SetupClrEndpStall);    // 清除端点的错误
      000C82 90 14 7D         [24] 1762 	mov	dptr,#_SetupClrEndpStall
      000C85 C0 07            [24] 1763 	push	ar7
      000C87 12 0B 7A         [24] 1764 	lcall	_CopySetupReqPkg
      000C8A D0 07            [24] 1765 	pop	ar7
                                   1766 ;	src\usbhost.c:474: pSetupReq->wIndexL = endp;             // 端点地址
      000C8C 90 00 44         [24] 1767 	mov	dptr,#(_TxBuffer + 0x0004)
      000C8F EF               [12] 1768 	mov	a,r7
      000C90 F0               [24] 1769 	movx	@dptr,a
                                   1770 ;	src\usbhost.c:475: return (HostCtrlTransfer(NULL, NULL)); // 执行控制传输
      000C91 E4               [12] 1771 	clr	a
      000C92 F5 26            [12] 1772 	mov	_HostCtrlTransfer_PARM_2,a
      000C94 F5 27            [12] 1773 	mov	(_HostCtrlTransfer_PARM_2 + 1),a
      000C96 F5 28            [12] 1774 	mov	(_HostCtrlTransfer_PARM_2 + 2),a
      000C98 90 00 00         [24] 1775 	mov	dptr,#0x0000
                                   1776 ;	src\usbhost.c:476: }
      000C9B 02 09 44         [24] 1777 	ljmp	_HostCtrlTransfer
                                   1778 ;------------------------------------------------------------
                                   1779 ;Allocation info for local variables in function 'CtrlSetUsbInterface'
                                   1780 ;------------------------------------------------------------
                                   1781 ;cfg                       Allocated to registers r7 
                                   1782 ;------------------------------------------------------------
                                   1783 ;	src\usbhost.c:486: uint8_t CtrlSetUsbInterface(uint8_t cfg)
                                   1784 ;	-----------------------------------------
                                   1785 ;	 function CtrlSetUsbInterface
                                   1786 ;	-----------------------------------------
      000C9E                       1787 _CtrlSetUsbInterface:
      000C9E AF 82            [24] 1788 	mov	r7, dpl
                                   1789 ;	src\usbhost.c:488: CopySetupReqPkg(SetupSetUsbInterface);
      000CA0 90 14 75         [24] 1790 	mov	dptr,#_SetupSetUsbInterface
      000CA3 C0 07            [24] 1791 	push	ar7
      000CA5 12 0B 7A         [24] 1792 	lcall	_CopySetupReqPkg
      000CA8 D0 07            [24] 1793 	pop	ar7
                                   1794 ;	src\usbhost.c:489: pSetupReq->wValueL = cfg;              // USB设备配置
      000CAA 90 00 42         [24] 1795 	mov	dptr,#(_TxBuffer + 0x0002)
      000CAD EF               [12] 1796 	mov	a,r7
      000CAE F0               [24] 1797 	movx	@dptr,a
                                   1798 ;	src\usbhost.c:490: return (HostCtrlTransfer(NULL, NULL)); // 执行控制传输
      000CAF E4               [12] 1799 	clr	a
      000CB0 F5 26            [12] 1800 	mov	_HostCtrlTransfer_PARM_2,a
      000CB2 F5 27            [12] 1801 	mov	(_HostCtrlTransfer_PARM_2 + 1),a
      000CB4 F5 28            [12] 1802 	mov	(_HostCtrlTransfer_PARM_2 + 2),a
      000CB6 90 00 00         [24] 1803 	mov	dptr,#0x0000
                                   1804 ;	src\usbhost.c:491: }
      000CB9 02 09 44         [24] 1805 	ljmp	_HostCtrlTransfer
                                   1806 ;------------------------------------------------------------
                                   1807 ;Allocation info for local variables in function 'CtrlGetHIDDeviceReport'
                                   1808 ;------------------------------------------------------------
                                   1809 ;infc                      Allocated to registers r7 
                                   1810 ;s                         Allocated to registers r7 
                                   1811 ;len                       Allocated with name '_CtrlGetHIDDeviceReport_len_10000_161'
                                   1812 ;------------------------------------------------------------
                                   1813 ;	src\usbhost.c:501: uint8_t CtrlGetHIDDeviceReport(uint8_t infc)
                                   1814 ;	-----------------------------------------
                                   1815 ;	 function CtrlGetHIDDeviceReport
                                   1816 ;	-----------------------------------------
      000CBC                       1817 _CtrlGetHIDDeviceReport:
      000CBC AF 82            [24] 1818 	mov	r7, dpl
                                   1819 ;	src\usbhost.c:506: CopySetupReqPkg(SetupSetHIDIdle);
      000CBE 90 14 85         [24] 1820 	mov	dptr,#_SetupSetHIDIdle
      000CC1 C0 07            [24] 1821 	push	ar7
      000CC3 12 0B 7A         [24] 1822 	lcall	_CopySetupReqPkg
      000CC6 D0 07            [24] 1823 	pop	ar7
                                   1824 ;	src\usbhost.c:507: TxBuffer[4] = infc;
      000CC8 90 00 44         [24] 1825 	mov	dptr,#(_TxBuffer + 0x0004)
      000CCB EF               [12] 1826 	mov	a,r7
      000CCC F0               [24] 1827 	movx	@dptr,a
                                   1828 ;	src\usbhost.c:508: s = HostCtrlTransfer(Com_Buffer, (uint8_t *)&len); // 执行控制传输
      000CCD 75 26 31         [24] 1829 	mov	_HostCtrlTransfer_PARM_2,#_CtrlGetHIDDeviceReport_len_10000_161
      000CD0 75 27 00         [24] 1830 	mov	(_HostCtrlTransfer_PARM_2 + 1),#0x00
      000CD3 75 28 40         [24] 1831 	mov	(_HostCtrlTransfer_PARM_2 + 2),#0x40
      000CD6 90 00 02         [24] 1832 	mov	dptr,#_Com_Buffer
      000CD9 C0 07            [24] 1833 	push	ar7
      000CDB 12 09 44         [24] 1834 	lcall	_HostCtrlTransfer
      000CDE AE 82            [24] 1835 	mov	r6, dpl
      000CE0 D0 07            [24] 1836 	pop	ar7
                                   1837 ;	src\usbhost.c:509: if (s != ERR_SUCCESS)
      000CE2 EE               [12] 1838 	mov	a,r6
      000CE3 60 03            [24] 1839 	jz	00102$
                                   1840 ;	src\usbhost.c:511: return (s);
      000CE5 8E 82            [24] 1841 	mov	dpl, r6
      000CE7 22               [24] 1842 	ret
      000CE8                       1843 00102$:
                                   1844 ;	src\usbhost.c:514: CopySetupReqPkg(SetupGetHIDDevReport);
      000CE8 90 14 8D         [24] 1845 	mov	dptr,#_SetupGetHIDDevReport
      000CEB C0 07            [24] 1846 	push	ar7
      000CED 12 0B 7A         [24] 1847 	lcall	_CopySetupReqPkg
      000CF0 D0 07            [24] 1848 	pop	ar7
                                   1849 ;	src\usbhost.c:515: TxBuffer[4] = infc;
      000CF2 90 00 44         [24] 1850 	mov	dptr,#(_TxBuffer + 0x0004)
      000CF5 EF               [12] 1851 	mov	a,r7
      000CF6 F0               [24] 1852 	movx	@dptr,a
                                   1853 ;	src\usbhost.c:516: s = HostCtrlTransfer(Com_Buffer, (uint8_t *)&len); // 执行控制传输
      000CF7 75 26 31         [24] 1854 	mov	_HostCtrlTransfer_PARM_2,#_CtrlGetHIDDeviceReport_len_10000_161
      000CFA 75 27 00         [24] 1855 	mov	(_HostCtrlTransfer_PARM_2 + 1),#0x00
      000CFD 75 28 40         [24] 1856 	mov	(_HostCtrlTransfer_PARM_2 + 2),#0x40
      000D00 90 00 02         [24] 1857 	mov	dptr,#_Com_Buffer
      000D03 12 09 44         [24] 1858 	lcall	_HostCtrlTransfer
                                   1859 ;	src\usbhost.c:517: if (s != ERR_SUCCESS)
      000D06 E5 82            [12] 1860 	mov	a,dpl
      000D08 FF               [12] 1861 	mov	r7,a
      000D09 60 03            [24] 1862 	jz	00104$
                                   1863 ;	src\usbhost.c:519: return (s);
      000D0B 8F 82            [24] 1864 	mov	dpl, r7
      000D0D 22               [24] 1865 	ret
      000D0E                       1866 00104$:
                                   1867 ;	src\usbhost.c:522: return (ERR_SUCCESS);
      000D0E 75 82 00         [24] 1868 	mov	dpl, #0x00
                                   1869 ;	src\usbhost.c:523: }
      000D11 22               [24] 1870 	ret
                                   1871 ;------------------------------------------------------------
                                   1872 ;Allocation info for local variables in function 'AnalyzeHidIntEndp'
                                   1873 ;------------------------------------------------------------
                                   1874 ;buf                       Allocated to registers r6 r7 
                                   1875 ;i                         Allocated to registers r5 
                                   1876 ;s                         Allocated to registers r4 
                                   1877 ;l                         Allocated to registers r3 
                                   1878 ;------------------------------------------------------------
                                   1879 ;	src\usbhost.c:532: uint8_t AnalyzeHidIntEndp(__xdata uint8_t *buf)
                                   1880 ;	-----------------------------------------
                                   1881 ;	 function AnalyzeHidIntEndp
                                   1882 ;	-----------------------------------------
      000D12                       1883 _AnalyzeHidIntEndp:
      000D12 AE 82            [24] 1884 	mov	r6, dpl
      000D14 AF 83            [24] 1885 	mov	r7, dph
                                   1886 ;	src\usbhost.c:537: memset(ThisUsbDev.GpVar, 0, sizeof(ThisUsbDev.GpVar)); // 清空数组
      000D16 75 18 00         [24] 1887 	mov	_memset_PARM_2,#0x00
      000D19 75 19 04         [24] 1888 	mov	_memset_PARM_3,#0x04
      000D1C 75 1A 00         [24] 1889 	mov	(_memset_PARM_3 + 1),#0x00
      000D1F 90 00 82         [24] 1890 	mov	dptr,#(_ThisUsbDev + 0x0008)
      000D22 75 F0 00         [24] 1891 	mov	b, #0x00
      000D25 C0 07            [24] 1892 	push	ar7
      000D27 C0 06            [24] 1893 	push	ar6
      000D29 12 11 E6         [24] 1894 	lcall	_memset
      000D2C D0 06            [24] 1895 	pop	ar6
      000D2E D0 07            [24] 1896 	pop	ar7
                                   1897 ;	src\usbhost.c:539: for (i = 0; i < ((PXUSB_CFG_DESCR)buf)->wTotalLengthL; i += l) // 搜索中断端点描述符,跳过配置描述符和接口描述符
      000D30 7D 00            [12] 1898 	mov	r5,#0x00
      000D32 7C 00            [12] 1899 	mov	r4,#0x00
      000D34                       1900 00111$:
      000D34 8E 02            [24] 1901 	mov	ar2,r6
      000D36 8F 03            [24] 1902 	mov	ar3,r7
      000D38 8A 82            [24] 1903 	mov	dpl,r2
      000D3A 8B 83            [24] 1904 	mov	dph,r3
      000D3C A3               [24] 1905 	inc	dptr
      000D3D A3               [24] 1906 	inc	dptr
      000D3E E0               [24] 1907 	movx	a,@dptr
      000D3F FB               [12] 1908 	mov	r3,a
      000D40 C3               [12] 1909 	clr	c
      000D41 ED               [12] 1910 	mov	a,r5
      000D42 9B               [12] 1911 	subb	a,r3
      000D43 50 68            [24] 1912 	jnc	00109$
                                   1913 ;	src\usbhost.c:541: if (((PXUSB_ENDP_DESCR)(buf + i))->bDescriptorType == USB_DESCR_TYP_ENDP                         // 是端点描述符
      000D45 ED               [12] 1914 	mov	a,r5
      000D46 2E               [12] 1915 	add	a, r6
      000D47 FA               [12] 1916 	mov	r2,a
      000D48 E4               [12] 1917 	clr	a
      000D49 3F               [12] 1918 	addc	a, r7
      000D4A FB               [12] 1919 	mov	r3,a
      000D4B 8A 00            [24] 1920 	mov	ar0,r2
      000D4D 8B 01            [24] 1921 	mov	ar1,r3
      000D4F 88 82            [24] 1922 	mov	dpl,r0
      000D51 89 83            [24] 1923 	mov	dph,r1
      000D53 A3               [24] 1924 	inc	dptr
      000D54 E0               [24] 1925 	movx	a,@dptr
      000D55 F9               [12] 1926 	mov	r1,a
      000D56 B9 05 40         [24] 1927 	cjne	r1,#0x05,00104$
                                   1928 ;	src\usbhost.c:542: && (((PXUSB_ENDP_DESCR)(buf + i))->bmAttributes & USB_ENDP_TYPE_MASK) == USB_ENDP_TYPE_INTER // 是中断端点
      000D59 8A 00            [24] 1929 	mov	ar0,r2
      000D5B 8B 01            [24] 1930 	mov	ar1,r3
      000D5D 88 82            [24] 1931 	mov	dpl,r0
      000D5F 89 83            [24] 1932 	mov	dph,r1
      000D61 A3               [24] 1933 	inc	dptr
      000D62 A3               [24] 1934 	inc	dptr
      000D63 A3               [24] 1935 	inc	dptr
      000D64 E0               [24] 1936 	movx	a,@dptr
      000D65 F9               [12] 1937 	mov	r1,a
      000D66 53 01 03         [24] 1938 	anl	ar1,#0x03
      000D69 B9 03 2D         [24] 1939 	cjne	r1,#0x03,00104$
                                   1940 ;	src\usbhost.c:543: && (((PXUSB_ENDP_DESCR)(buf + i))->bEndpointAddress & USB_ENDP_DIR_MASK))                    // 是IN端点
      000D6C 8A 00            [24] 1941 	mov	ar0,r2
      000D6E 8B 01            [24] 1942 	mov	ar1,r3
      000D70 88 82            [24] 1943 	mov	dpl,r0
      000D72 89 83            [24] 1944 	mov	dph,r1
      000D74 A3               [24] 1945 	inc	dptr
      000D75 A3               [24] 1946 	inc	dptr
      000D76 E0               [24] 1947 	movx	a,@dptr
      000D77 30 E7 1F         [24] 1948 	jnb	acc.7,00104$
                                   1949 ;	src\usbhost.c:545: ThisUsbDev.GpVar[s] = ((PXUSB_ENDP_DESCR)(buf + i))->bEndpointAddress & USB_ENDP_ADDR_MASK;  // 中断端点的地址，可以根据需要保存wMaxPacketSize和bInterval
      000D7A EC               [12] 1950 	mov	a,r4
      000D7B 24 82            [12] 1951 	add	a, #(_ThisUsbDev + 0x0008)
      000D7D F8               [12] 1952 	mov	r0,a
      000D7E E4               [12] 1953 	clr	a
      000D7F 34 00            [12] 1954 	addc	a, #((_ThisUsbDev + 0x0008) >> 8)
      000D81 F9               [12] 1955 	mov	r1,a
      000D82 8A 82            [24] 1956 	mov	dpl,r2
      000D84 8B 83            [24] 1957 	mov	dph,r3
      000D86 A3               [24] 1958 	inc	dptr
      000D87 A3               [24] 1959 	inc	dptr
      000D88 E0               [24] 1960 	movx	a,@dptr
      000D89 FB               [12] 1961 	mov	r3,a
      000D8A 53 03 0F         [24] 1962 	anl	ar3,#0x0f
      000D8D 88 82            [24] 1963 	mov	dpl,r0
      000D8F 89 83            [24] 1964 	mov	dph,r1
      000D91 EB               [12] 1965 	mov	a,r3
      000D92 F0               [24] 1966 	movx	@dptr,a
                                   1967 ;	src\usbhost.c:549: s++;
      000D93 0C               [12] 1968 	inc	r4
                                   1969 ;	src\usbhost.c:550: if (s >= 4)
      000D94 BC 04 00         [24] 1970 	cjne	r4,#0x04,00158$
      000D97                       1971 00158$:
      000D97 50 14            [24] 1972 	jnc	00109$
                                   1973 ;	src\usbhost.c:551: break; // Only analyze 4 endpoints
      000D99                       1974 00104$:
                                   1975 ;	src\usbhost.c:553: l = ((PXUSB_ENDP_DESCR)(buf + i))->bLength; // 当前描述符长度,跳过
      000D99 ED               [12] 1976 	mov	a,r5
      000D9A 2E               [12] 1977 	add	a, r6
      000D9B F5 82            [12] 1978 	mov	dpl,a
      000D9D E4               [12] 1979 	clr	a
      000D9E 3F               [12] 1980 	addc	a, r7
      000D9F F5 83            [12] 1981 	mov	dph,a
      000DA1 E0               [24] 1982 	movx	a,@dptr
                                   1983 ;	src\usbhost.c:554: if (l > 16)
      000DA2 FB               [12] 1984 	mov  r3,a
      000DA3 24 EF            [12] 1985 	add	a,#0xff - 0x10
      000DA5 40 06            [24] 1986 	jc	00109$
                                   1987 ;	src\usbhost.c:539: for (i = 0; i < ((PXUSB_CFG_DESCR)buf)->wTotalLengthL; i += l) // 搜索中断端点描述符,跳过配置描述符和接口描述符
      000DA7 EB               [12] 1988 	mov	a,r3
      000DA8 2D               [12] 1989 	add	a, r5
      000DA9 FD               [12] 1990 	mov	r5,a
      000DAA 02 0D 34         [24] 1991 	ljmp	00111$
      000DAD                       1992 00109$:
                                   1993 ;	src\usbhost.c:562: return (s);
      000DAD 8C 82            [24] 1994 	mov	dpl, r4
                                   1995 ;	src\usbhost.c:563: }
      000DAF 22               [24] 1996 	ret
                                   1997 ;------------------------------------------------------------
                                   1998 ;Allocation info for local variables in function 'AnalyzeBulkEndp'
                                   1999 ;------------------------------------------------------------
                                   2000 ;buf                       Allocated with name '_AnalyzeBulkEndp_buf_10000_170'
                                   2001 ;i                         Allocated to registers r3 
                                   2002 ;s1                        Allocated with name '_AnalyzeBulkEndp_s1_10000_171'
                                   2003 ;s2                        Allocated with name '_AnalyzeBulkEndp_s2_10000_171'
                                   2004 ;l                         Allocated to registers r7 
                                   2005 ;------------------------------------------------------------
                                   2006 ;	src\usbhost.c:572: uint8_t AnalyzeBulkEndp(__xdata uint8_t *buf)
                                   2007 ;	-----------------------------------------
                                   2008 ;	 function AnalyzeBulkEndp
                                   2009 ;	-----------------------------------------
      000DB0                       2010 _AnalyzeBulkEndp:
      000DB0 85 82 32         [24] 2011 	mov	_AnalyzeBulkEndp_buf_10000_170,dpl
      000DB3 85 83 33         [24] 2012 	mov	(_AnalyzeBulkEndp_buf_10000_170 + 1),dph
                                   2013 ;	src\usbhost.c:575: s1 = 0;
      000DB6 75 34 00         [24] 2014 	mov	_AnalyzeBulkEndp_s1_10000_171,#0x00
                                   2015 ;	src\usbhost.c:576: s2 = 2;
      000DB9 75 35 02         [24] 2016 	mov	_AnalyzeBulkEndp_s2_10000_171,#0x02
                                   2017 ;	src\usbhost.c:578: memset(ThisUsbDev.GpVar, 0, sizeof(ThisUsbDev.GpVar)); // 清空数组
      000DBC 75 18 00         [24] 2018 	mov	_memset_PARM_2,#0x00
      000DBF 75 19 04         [24] 2019 	mov	_memset_PARM_3,#0x04
      000DC2 75 1A 00         [24] 2020 	mov	(_memset_PARM_3 + 1),#0x00
      000DC5 90 00 82         [24] 2021 	mov	dptr,#(_ThisUsbDev + 0x0008)
      000DC8 75 F0 00         [24] 2022 	mov	b, #0x00
      000DCB 12 11 E6         [24] 2023 	lcall	_memset
                                   2024 ;	src\usbhost.c:580: for (i = 0; i < ((PXUSB_CFG_DESCR)buf)->wTotalLengthL; i += l) // 搜索中断端点描述符,跳过配置描述符和接口描述符
      000DCE 7B 00            [12] 2025 	mov	r3,#0x00
      000DD0                       2026 00115$:
      000DD0 A9 32            [24] 2027 	mov	r1,_AnalyzeBulkEndp_buf_10000_170
      000DD2 AA 33            [24] 2028 	mov	r2,(_AnalyzeBulkEndp_buf_10000_170 + 1)
      000DD4 89 82            [24] 2029 	mov	dpl,r1
      000DD6 8A 83            [24] 2030 	mov	dph,r2
      000DD8 A3               [24] 2031 	inc	dptr
      000DD9 A3               [24] 2032 	inc	dptr
      000DDA E0               [24] 2033 	movx	a,@dptr
      000DDB FA               [12] 2034 	mov	r2,a
      000DDC C3               [12] 2035 	clr	c
      000DDD EB               [12] 2036 	mov	a,r3
      000DDE 9A               [12] 2037 	subb	a,r2
      000DDF 40 03            [24] 2038 	jc	00167$
      000DE1 02 0E 86         [24] 2039 	ljmp	00113$
      000DE4                       2040 00167$:
                                   2041 ;	src\usbhost.c:582: if ((((PXUSB_ENDP_DESCR)(buf + i))->bDescriptorType == USB_DESCR_TYP_ENDP)                         // 是端点描述符
      000DE4 EB               [12] 2042 	mov	a,r3
      000DE5 25 32            [12] 2043 	add	a, _AnalyzeBulkEndp_buf_10000_170
      000DE7 F9               [12] 2044 	mov	r1,a
      000DE8 E4               [12] 2045 	clr	a
      000DE9 35 33            [12] 2046 	addc	a, (_AnalyzeBulkEndp_buf_10000_170 + 1)
      000DEB FA               [12] 2047 	mov	r2,a
      000DEC 89 00            [24] 2048 	mov	ar0,r1
      000DEE 8A 04            [24] 2049 	mov	ar4,r2
      000DF0 88 82            [24] 2050 	mov	dpl,r0
      000DF2 8C 83            [24] 2051 	mov	dph,r4
      000DF4 A3               [24] 2052 	inc	dptr
      000DF5 E0               [24] 2053 	movx	a,@dptr
      000DF6 FC               [12] 2054 	mov	r4,a
      000DF7 BC 05 02         [24] 2055 	cjne	r4,#0x05,00168$
      000DFA 80 03            [24] 2056 	sjmp	00169$
      000DFC                       2057 00168$:
      000DFC 02 0E 70         [24] 2058 	ljmp	00109$
      000DFF                       2059 00169$:
                                   2060 ;	src\usbhost.c:583: && ((((PXUSB_ENDP_DESCR)(buf + i))->bmAttributes & USB_ENDP_TYPE_MASK) == USB_ENDP_TYPE_BULK)) // 是中断端点
      000DFF 89 00            [24] 2061 	mov	ar0,r1
      000E01 8A 04            [24] 2062 	mov	ar4,r2
      000E03 88 82            [24] 2063 	mov	dpl,r0
      000E05 8C 83            [24] 2064 	mov	dph,r4
      000E07 A3               [24] 2065 	inc	dptr
      000E08 A3               [24] 2066 	inc	dptr
      000E09 A3               [24] 2067 	inc	dptr
      000E0A E0               [24] 2068 	movx	a,@dptr
      000E0B FC               [12] 2069 	mov	r4,a
      000E0C 53 04 03         [24] 2070 	anl	ar4,#0x03
      000E0F BC 02 5E         [24] 2071 	cjne	r4,#0x02,00109$
                                   2072 ;	src\usbhost.c:586: if (((PXUSB_ENDP_DESCR)(buf + i))->bEndpointAddress & USB_ENDP_DIR_MASK)
      000E12 89 00            [24] 2073 	mov	ar0,r1
      000E14 8A 04            [24] 2074 	mov	ar4,r2
      000E16 88 82            [24] 2075 	mov	dpl,r0
      000E18 8C 83            [24] 2076 	mov	dph,r4
      000E1A A3               [24] 2077 	inc	dptr
      000E1B A3               [24] 2078 	inc	dptr
      000E1C E0               [24] 2079 	movx	a,@dptr
      000E1D 30 E7 23         [24] 2080 	jnb	acc.7,00102$
                                   2081 ;	src\usbhost.c:587: ThisUsbDev.GpVar[s1++] = ((PXUSB_ENDP_DESCR)(buf + i))->bEndpointAddress & USB_ENDP_ADDR_MASK;
      000E20 AC 34            [24] 2082 	mov	r4,_AnalyzeBulkEndp_s1_10000_171
      000E22 05 34            [12] 2083 	inc	_AnalyzeBulkEndp_s1_10000_171
      000E24 EC               [12] 2084 	mov	a,r4
      000E25 24 82            [12] 2085 	add	a, #(_ThisUsbDev + 0x0008)
      000E27 F8               [12] 2086 	mov	r0,a
      000E28 E4               [12] 2087 	clr	a
      000E29 34 00            [12] 2088 	addc	a, #((_ThisUsbDev + 0x0008) >> 8)
      000E2B FC               [12] 2089 	mov	r4,a
      000E2C 89 05            [24] 2090 	mov	ar5,r1
      000E2E 8A 07            [24] 2091 	mov	ar7,r2
      000E30 8D 82            [24] 2092 	mov	dpl,r5
      000E32 8F 83            [24] 2093 	mov	dph,r7
      000E34 A3               [24] 2094 	inc	dptr
      000E35 A3               [24] 2095 	inc	dptr
      000E36 E0               [24] 2096 	movx	a,@dptr
      000E37 FF               [12] 2097 	mov	r7,a
      000E38 53 07 0F         [24] 2098 	anl	ar7,#0x0f
      000E3B 88 82            [24] 2099 	mov	dpl,r0
      000E3D 8C 83            [24] 2100 	mov	dph,r4
      000E3F EF               [12] 2101 	mov	a,r7
      000E40 F0               [24] 2102 	movx	@dptr,a
      000E41 80 1D            [24] 2103 	sjmp	00103$
      000E43                       2104 00102$:
                                   2105 ;	src\usbhost.c:589: ThisUsbDev.GpVar[s2++] = ((PXUSB_ENDP_DESCR)(buf + i))->bEndpointAddress & USB_ENDP_ADDR_MASK;
      000E43 AF 35            [24] 2106 	mov	r7,_AnalyzeBulkEndp_s2_10000_171
      000E45 05 35            [12] 2107 	inc	_AnalyzeBulkEndp_s2_10000_171
      000E47 EF               [12] 2108 	mov	a,r7
      000E48 24 82            [12] 2109 	add	a, #(_ThisUsbDev + 0x0008)
      000E4A FF               [12] 2110 	mov	r7,a
      000E4B E4               [12] 2111 	clr	a
      000E4C 34 00            [12] 2112 	addc	a, #((_ThisUsbDev + 0x0008) >> 8)
      000E4E FE               [12] 2113 	mov	r6,a
      000E4F 89 82            [24] 2114 	mov	dpl,r1
      000E51 8A 83            [24] 2115 	mov	dph,r2
      000E53 A3               [24] 2116 	inc	dptr
      000E54 A3               [24] 2117 	inc	dptr
      000E55 E0               [24] 2118 	movx	a,@dptr
      000E56 FD               [12] 2119 	mov	r5,a
      000E57 53 05 0F         [24] 2120 	anl	ar5,#0x0f
      000E5A 8F 82            [24] 2121 	mov	dpl,r7
      000E5C 8E 83            [24] 2122 	mov	dph,r6
      000E5E ED               [12] 2123 	mov	a,r5
      000E5F F0               [24] 2124 	movx	@dptr,a
      000E60                       2125 00103$:
                                   2126 ;	src\usbhost.c:591: if (s1 == 2)
      000E60 74 02            [12] 2127 	mov	a,#0x02
      000E62 B5 34 03         [24] 2128 	cjne	a,_AnalyzeBulkEndp_s1_10000_171,00105$
                                   2129 ;	src\usbhost.c:592: s1 = 1;
      000E65 75 34 01         [24] 2130 	mov	_AnalyzeBulkEndp_s1_10000_171,#0x01
      000E68                       2131 00105$:
                                   2132 ;	src\usbhost.c:593: if (s2 == 4)
      000E68 74 04            [12] 2133 	mov	a,#0x04
      000E6A B5 35 03         [24] 2134 	cjne	a,_AnalyzeBulkEndp_s2_10000_171,00109$
                                   2135 ;	src\usbhost.c:594: s2 = 3;
      000E6D 75 35 03         [24] 2136 	mov	_AnalyzeBulkEndp_s2_10000_171,#0x03
      000E70                       2137 00109$:
                                   2138 ;	src\usbhost.c:596: l = ((PXUSB_ENDP_DESCR)(buf + i))->bLength; // 当前描述符长度,跳过
      000E70 EB               [12] 2139 	mov	a,r3
      000E71 25 32            [12] 2140 	add	a, _AnalyzeBulkEndp_buf_10000_170
      000E73 F5 82            [12] 2141 	mov	dpl,a
      000E75 E4               [12] 2142 	clr	a
      000E76 35 33            [12] 2143 	addc	a, (_AnalyzeBulkEndp_buf_10000_170 + 1)
      000E78 F5 83            [12] 2144 	mov	dph,a
      000E7A E0               [24] 2145 	movx	a,@dptr
                                   2146 ;	src\usbhost.c:597: if (l > 16)
      000E7B FF               [12] 2147 	mov  r7,a
      000E7C 24 EF            [12] 2148 	add	a,#0xff - 0x10
      000E7E 40 06            [24] 2149 	jc	00113$
                                   2150 ;	src\usbhost.c:580: for (i = 0; i < ((PXUSB_CFG_DESCR)buf)->wTotalLengthL; i += l) // 搜索中断端点描述符,跳过配置描述符和接口描述符
      000E80 EF               [12] 2151 	mov	a,r7
      000E81 2B               [12] 2152 	add	a, r3
      000E82 FB               [12] 2153 	mov	r3,a
      000E83 02 0D D0         [24] 2154 	ljmp	00115$
      000E86                       2155 00113$:
                                   2156 ;	src\usbhost.c:602: return (0);
      000E86 75 82 00         [24] 2157 	mov	dpl, #0x00
                                   2158 ;	src\usbhost.c:603: }
      000E89 22               [24] 2159 	ret
                                   2160 ;------------------------------------------------------------
                                   2161 ;Allocation info for local variables in function 'InitRootDevice'
                                   2162 ;------------------------------------------------------------
                                   2163 ;t                         Allocated to registers r6 
                                   2164 ;i                         Allocated to registers r5 
                                   2165 ;s                         Allocated to registers r7 
                                   2166 ;cfg                       Allocated to registers r4 
                                   2167 ;dv_cls                    Allocated to registers r5 
                                   2168 ;if_cls                    Allocated to registers r5 
                                   2169 ;ifc                       Allocated to registers r3 
                                   2170 ;if_cls2                   Allocated to registers r1 
                                   2171 ;------------------------------------------------------------
                                   2172 ;	src\usbhost.c:612: uint8_t InitRootDevice(void)
                                   2173 ;	-----------------------------------------
                                   2174 ;	 function InitRootDevice
                                   2175 ;	-----------------------------------------
      000E8A                       2176 _InitRootDevice:
                                   2177 ;	src\usbhost.c:616: s = 0;
      000E8A 7F 00            [12] 2178 	mov	r7,#0x00
                                   2179 ;	src\usbhost.c:620: USBDevEnum:
      000E8C 7E 00            [12] 2180 	mov	r6,#0x00
                                   2181 ;	src\usbhost.c:621: for (i = 0; i < t; i++)
      000E8E                       2182 00153$:
      000E8E C3               [12] 2183 	clr	c
      000E8F 74 0A            [12] 2184 	mov	a,#0x0a
      000E91 9E               [12] 2185 	subb	a,r6
      000E92 E4               [12] 2186 	clr	a
      000E93 33               [12] 2187 	rlc	a
      000E94 FD               [12] 2188 	mov	r5,a
      000E95 7C 00            [12] 2189 	mov	r4,#0x00
      000E97                       2190 00141$:
      000E97 C3               [12] 2191 	clr	c
      000E98 EC               [12] 2192 	mov	a,r4
      000E99 9E               [12] 2193 	subb	a,r6
      000E9A 50 1F            [24] 2194 	jnc	00104$
                                   2195 ;	src\usbhost.c:623: mDelaymS(100);
      000E9C 90 00 64         [24] 2196 	mov	dptr,#0x0064
      000E9F C0 07            [24] 2197 	push	ar7
      000EA1 C0 06            [24] 2198 	push	ar6
      000EA3 C0 05            [24] 2199 	push	ar5
      000EA5 C0 04            [24] 2200 	push	ar4
      000EA7 12 06 7C         [24] 2201 	lcall	_mDelaymS
      000EAA D0 04            [24] 2202 	pop	ar4
      000EAC D0 05            [24] 2203 	pop	ar5
      000EAE D0 06            [24] 2204 	pop	ar6
      000EB0 D0 07            [24] 2205 	pop	ar7
                                   2206 ;	src\usbhost.c:624: if (t > 10)
      000EB2 ED               [12] 2207 	mov	a,r5
      000EB3 60 03            [24] 2208 	jz	00142$
                                   2209 ;	src\usbhost.c:625: return (s);
      000EB5 8F 82            [24] 2210 	mov	dpl, r7
      000EB7 22               [24] 2211 	ret
      000EB8                       2212 00142$:
                                   2213 ;	src\usbhost.c:621: for (i = 0; i < t; i++)
      000EB8 0C               [12] 2214 	inc	r4
      000EB9 80 DC            [24] 2215 	sjmp	00141$
      000EBB                       2216 00104$:
                                   2217 ;	src\usbhost.c:627: ResetRootHubPort();              // 检测到设备后,复位相应端口的USB总线
      000EBB C0 06            [24] 2218 	push	ar6
      000EBD 12 07 6B         [24] 2219 	lcall	_ResetRootHubPort
      000EC0 D0 06            [24] 2220 	pop	ar6
                                   2221 ;	src\usbhost.c:628: for (i = 0, s = 0; i < 100; i++) // 等待USB设备复位后重新连接,100mS超时
      000EC2 7D 00            [12] 2222 	mov	r5,#0x00
      000EC4 7C 00            [12] 2223 	mov	r4,#0x00
      000EC6                       2224 00144$:
      000EC6 BD 64 00         [24] 2225 	cjne	r5,#0x64,00316$
      000EC9                       2226 00316$:
      000EC9 50 4E            [24] 2227 	jnc	00111$
                                   2228 ;	src\usbhost.c:630: mDelaymS(1);
      000ECB 90 00 01         [24] 2229 	mov	dptr,#0x0001
      000ECE C0 06            [24] 2230 	push	ar6
      000ED0 C0 05            [24] 2231 	push	ar5
      000ED2 C0 04            [24] 2232 	push	ar4
      000ED4 12 06 7C         [24] 2233 	lcall	_mDelaymS
                                   2234 ;	src\usbhost.c:631: if (EnableRootHubPort() == ERR_SUCCESS) // 使能ROOT-HUB端口
      000ED7 12 07 AC         [24] 2235 	lcall	_EnableRootHubPort
      000EDA E5 82            [12] 2236 	mov	a, dpl
      000EDC D0 04            [24] 2237 	pop	ar4
      000EDE D0 05            [24] 2238 	pop	ar5
      000EE0 D0 06            [24] 2239 	pop	ar6
                                   2240 ;	src\usbhost.c:633: i = 0;
      000EE2 70 20            [24] 2241 	jnz	00108$
      000EE4 FD               [12] 2242 	mov	r5,a
                                   2243 ;	src\usbhost.c:634: s++; // 计时等待USB设备连接后稳定
      000EE5 0C               [12] 2244 	inc	r4
                                   2245 ;	src\usbhost.c:635: if (s > (20 + t))
      000EE6 8E 02            [24] 2246 	mov	ar2,r6
      000EE8 7B 00            [12] 2247 	mov	r3,#0x00
      000EEA 74 14            [12] 2248 	mov	a,#0x14
      000EEC 2A               [12] 2249 	add	a, r2
      000EED FA               [12] 2250 	mov	r2,a
      000EEE E4               [12] 2251 	clr	a
      000EEF 3B               [12] 2252 	addc	a, r3
      000EF0 FB               [12] 2253 	mov	r3,a
      000EF1 8C 00            [24] 2254 	mov	ar0,r4
      000EF3 79 00            [12] 2255 	mov	r1,#0x00
      000EF5 C3               [12] 2256 	clr	c
      000EF6 EA               [12] 2257 	mov	a,r2
      000EF7 98               [12] 2258 	subb	a,r0
      000EF8 EB               [12] 2259 	mov	a,r3
      000EF9 64 80            [12] 2260 	xrl	a,#0x80
      000EFB 89 F0            [24] 2261 	mov	b,r1
      000EFD 63 F0 80         [24] 2262 	xrl	b,#0x80
      000F00 95 F0            [12] 2263 	subb	a,b
      000F02 40 15            [24] 2264 	jc	00111$
                                   2265 ;	src\usbhost.c:637: break; // 已经稳定连接15mS
      000F04                       2266 00108$:
                                   2267 ;	src\usbhost.c:640: if (i) // The device is not connected after reset
      000F04 ED               [12] 2268 	mov	a,r5
      000F05 60 0F            [24] 2269 	jz	00145$
                                   2270 ;	src\usbhost.c:642: DisableRootHubPort();
      000F07 C0 06            [24] 2271 	push	ar6
      000F09 C0 05            [24] 2272 	push	ar5
      000F0B C0 04            [24] 2273 	push	ar4
      000F0D 12 07 13         [24] 2274 	lcall	_DisableRootHubPort
      000F10 D0 04            [24] 2275 	pop	ar4
      000F12 D0 05            [24] 2276 	pop	ar5
      000F14 D0 06            [24] 2277 	pop	ar6
      000F16                       2278 00145$:
                                   2279 ;	src\usbhost.c:628: for (i = 0, s = 0; i < 100; i++) // 等待USB设备复位后重新连接,100mS超时
      000F16 0D               [12] 2280 	inc	r5
      000F17 80 AD            [24] 2281 	sjmp	00144$
      000F19                       2282 00111$:
                                   2283 ;	src\usbhost.c:649: SelectHubPort();
      000F19 C0 06            [24] 2284 	push	ar6
      000F1B 12 07 ED         [24] 2285 	lcall	_SelectHubPort
                                   2286 ;	src\usbhost.c:656: s = CtrlGetDeviceDescr(); // Get device descriptor
      000F1E 12 0B 9F         [24] 2287 	lcall	_CtrlGetDeviceDescr
      000F21 AF 82            [24] 2288 	mov	r7, dpl
      000F23 D0 06            [24] 2289 	pop	ar6
                                   2290 ;	src\usbhost.c:657: if (s == ERR_SUCCESS)
      000F25 EF               [12] 2291 	mov	a,r7
      000F26 60 03            [24] 2292 	jz	00321$
      000F28 02 10 A5         [24] 2293 	ljmp	00139$
      000F2B                       2294 00321$:
                                   2295 ;	src\usbhost.c:666: ThisUsbDev.DeviceVID = (((uint16_t)((PXUSB_DEV_DESCR)Com_Buffer)->idVendorH) << 8) + ((PXUSB_DEV_DESCR)Com_Buffer)->idVendorL; // 保存VID PID信息
      000F2B 90 00 0B         [24] 2296 	mov	dptr,#(_Com_Buffer + 0x0009)
      000F2E E0               [24] 2297 	movx	a,@dptr
      000F2F FC               [12] 2298 	mov	r4,a
      000F30 7D 00            [12] 2299 	mov	r5,#0x00
      000F32 90 00 0A         [24] 2300 	mov	dptr,#(_Com_Buffer + 0x0008)
      000F35 E0               [24] 2301 	movx	a,@dptr
      000F36 7A 00            [12] 2302 	mov	r2,#0x00
      000F38 2D               [12] 2303 	add	a, r5
      000F39 FD               [12] 2304 	mov	r5,a
      000F3A EA               [12] 2305 	mov	a,r2
      000F3B 3C               [12] 2306 	addc	a, r4
      000F3C FC               [12] 2307 	mov	r4,a
      000F3D 90 00 7E         [24] 2308 	mov	dptr,#(_ThisUsbDev + 0x0004)
      000F40 ED               [12] 2309 	mov	a,r5
      000F41 F0               [24] 2310 	movx	@dptr,a
      000F42 EC               [12] 2311 	mov	a,r4
      000F43 A3               [24] 2312 	inc	dptr
      000F44 F0               [24] 2313 	movx	@dptr,a
                                   2314 ;	src\usbhost.c:667: ThisUsbDev.DevicePID = (((uint16_t)((PXUSB_DEV_DESCR)Com_Buffer)->idProductH) << 8) + ((PXUSB_DEV_DESCR)Com_Buffer)->idProductL;
      000F45 90 00 0D         [24] 2315 	mov	dptr,#(_Com_Buffer + 0x000b)
      000F48 E0               [24] 2316 	movx	a,@dptr
      000F49 FC               [12] 2317 	mov	r4,a
      000F4A 7D 00            [12] 2318 	mov	r5,#0x00
      000F4C 90 00 0C         [24] 2319 	mov	dptr,#(_Com_Buffer + 0x000a)
      000F4F E0               [24] 2320 	movx	a,@dptr
      000F50 2D               [12] 2321 	add	a, r5
      000F51 FD               [12] 2322 	mov	r5,a
      000F52 EA               [12] 2323 	mov	a,r2
      000F53 3C               [12] 2324 	addc	a, r4
      000F54 FC               [12] 2325 	mov	r4,a
      000F55 90 00 80         [24] 2326 	mov	dptr,#(_ThisUsbDev + 0x0006)
      000F58 ED               [12] 2327 	mov	a,r5
      000F59 F0               [24] 2328 	movx	@dptr,a
      000F5A EC               [12] 2329 	mov	a,r4
      000F5B A3               [24] 2330 	inc	dptr
      000F5C F0               [24] 2331 	movx	@dptr,a
                                   2332 ;	src\usbhost.c:668: dv_cls = ((PXUSB_DEV_DESCR)Com_Buffer)->bDeviceClass;              // 设备类代码
      000F5D 90 00 06         [24] 2333 	mov	dptr,#(_Com_Buffer + 0x0004)
      000F60 E0               [24] 2334 	movx	a,@dptr
      000F61 FD               [12] 2335 	mov	r5,a
                                   2336 ;	src\usbhost.c:669: s = CtrlSetUsbAddress(((PUSB_SETUP_REQ)SetupSetUsbAddr)->wValueL); // 设置USB设备地址,加上RootHubIndex可以保证2个HUB端口分配不同的地址
      000F62 90 14 67         [24] 2337 	mov	dptr,#(_SetupSetUsbAddr + 0x0002)
      000F65 E4               [12] 2338 	clr	a
      000F66 93               [24] 2339 	movc	a,@a+dptr
      000F67 F5 82            [12] 2340 	mov	dpl,a
      000F69 C0 06            [24] 2341 	push	ar6
      000F6B C0 05            [24] 2342 	push	ar5
      000F6D 12 0C 28         [24] 2343 	lcall	_CtrlSetUsbAddress
      000F70 AF 82            [24] 2344 	mov	r7, dpl
      000F72 D0 05            [24] 2345 	pop	ar5
      000F74 D0 06            [24] 2346 	pop	ar6
                                   2347 ;	src\usbhost.c:670: if (s == ERR_SUCCESS)
      000F76 EF               [12] 2348 	mov	a,r7
      000F77 60 03            [24] 2349 	jz	00322$
      000F79 02 10 A5         [24] 2350 	ljmp	00139$
      000F7C                       2351 00322$:
                                   2352 ;	src\usbhost.c:672: ThisUsbDev.DeviceAddress = ((PUSB_SETUP_REQ)SetupSetUsbAddr)->wValueL; // 保存USB地址
      000F7C 90 14 67         [24] 2353 	mov	dptr,#(_SetupSetUsbAddr + 0x0002)
      000F7F E4               [12] 2354 	clr	a
      000F80 93               [24] 2355 	movc	a,@a+dptr
      000F81 90 00 7B         [24] 2356 	mov	dptr,#(_ThisUsbDev + 0x0001)
      000F84 F0               [24] 2357 	movx	@dptr,a
                                   2358 ;	src\usbhost.c:676: s = CtrlGetConfigDescr(); // 获取配置描述符
      000F85 C0 06            [24] 2359 	push	ar6
      000F87 C0 05            [24] 2360 	push	ar5
      000F89 12 0B DE         [24] 2361 	lcall	_CtrlGetConfigDescr
      000F8C AF 82            [24] 2362 	mov	r7, dpl
      000F8E D0 05            [24] 2363 	pop	ar5
      000F90 D0 06            [24] 2364 	pop	ar6
                                   2365 ;	src\usbhost.c:677: if (s == ERR_SUCCESS)
      000F92 EF               [12] 2366 	mov	a,r7
      000F93 60 03            [24] 2367 	jz	00323$
      000F95 02 10 A5         [24] 2368 	ljmp	00139$
      000F98                       2369 00323$:
                                   2370 ;	src\usbhost.c:679: cfg = ((PXUSB_CFG_DESCR)Com_Buffer)->bConfigurationValue;
      000F98 90 00 07         [24] 2371 	mov	dptr,#(_Com_Buffer + 0x0005)
      000F9B E0               [24] 2372 	movx	a,@dptr
      000F9C FC               [12] 2373 	mov	r4,a
                                   2374 ;	src\usbhost.c:680: ifc = ((PXUSB_CFG_DESCR)Com_Buffer)->bNumInterfaces;
      000F9D 90 00 06         [24] 2375 	mov	dptr,#(_Com_Buffer + 0x0004)
      000FA0 E0               [24] 2376 	movx	a,@dptr
      000FA1 FB               [12] 2377 	mov	r3,a
                                   2378 ;	src\usbhost.c:689: if_cls = ((PXUSB_CFG_DESCR_LONG)Com_Buffer)->itf_descr.bInterfaceClass; // 接口类代码
      000FA2 90 00 10         [24] 2379 	mov	dptr,#(_Com_Buffer + 0x000e)
      000FA5 E0               [24] 2380 	movx	a,@dptr
      000FA6 FA               [12] 2381 	mov	r2,a
                                   2382 ;	src\usbhost.c:690: if_cls2 = Com_Buffer[41];
      000FA7 90 00 2B         [24] 2383 	mov	dptr,#(_Com_Buffer + 0x0029)
      000FAA E0               [24] 2384 	movx	a,@dptr
      000FAB F9               [12] 2385 	mov	r1,a
                                   2386 ;	src\usbhost.c:692: if ((dv_cls == 0x00) && (if_cls == USB_DEV_CLASS_HID) && (((PXUSB_CFG_DESCR_LONG)Com_Buffer)->itf_descr.bInterfaceSubClass <= 0x01)) // 是HID类设备,键盘/鼠标等
      000FAC ED               [12] 2387 	mov	a,r5
      000FAD 60 03            [24] 2388 	jz	00324$
      000FAF 02 10 90         [24] 2389 	ljmp	00130$
      000FB2                       2390 00324$:
      000FB2 BA 03 02         [24] 2391 	cjne	r2,#0x03,00325$
      000FB5 80 03            [24] 2392 	sjmp	00326$
      000FB7                       2393 00325$:
      000FB7 02 10 90         [24] 2394 	ljmp	00130$
      000FBA                       2395 00326$:
      000FBA 90 00 11         [24] 2396 	mov	dptr,#(_Com_Buffer + 0x000f)
      000FBD E0               [24] 2397 	movx	a,@dptr
      000FBE 24 FE            [12] 2398 	add	a,#0xff - 0x01
      000FC0 50 03            [24] 2399 	jnc	00327$
      000FC2 02 10 90         [24] 2400 	ljmp	00130$
      000FC5                       2401 00327$:
                                   2402 ;	src\usbhost.c:694: s = AnalyzeHidIntEndp(Com_Buffer); // 从描述符中分析出HID中断端点的地址
      000FC5 90 00 02         [24] 2403 	mov	dptr,#_Com_Buffer
      000FC8 C0 06            [24] 2404 	push	ar6
      000FCA C0 04            [24] 2405 	push	ar4
      000FCC C0 03            [24] 2406 	push	ar3
      000FCE C0 01            [24] 2407 	push	ar1
      000FD0 12 0D 12         [24] 2408 	lcall	_AnalyzeHidIntEndp
      000FD3 D0 01            [24] 2409 	pop	ar1
      000FD5 D0 03            [24] 2410 	pop	ar3
      000FD7 D0 04            [24] 2411 	pop	ar4
                                   2412 ;	src\usbhost.c:700: if_cls = ((PXUSB_CFG_DESCR_LONG)Com_Buffer)->itf_descr.bInterfaceProtocol;
      000FD9 90 00 12         [24] 2413 	mov	dptr,#(_Com_Buffer + 0x0010)
      000FDC E0               [24] 2414 	movx	a,@dptr
      000FDD FD               [12] 2415 	mov	r5,a
                                   2416 ;	src\usbhost.c:708: s = CtrlSetUsbConfig(cfg); // 设置USB设备配置
      000FDE 8C 82            [24] 2417 	mov	dpl, r4
      000FE0 C0 05            [24] 2418 	push	ar5
      000FE2 C0 03            [24] 2419 	push	ar3
      000FE4 C0 01            [24] 2420 	push	ar1
      000FE6 12 0C 62         [24] 2421 	lcall	_CtrlSetUsbConfig
      000FE9 AF 82            [24] 2422 	mov	r7, dpl
      000FEB D0 01            [24] 2423 	pop	ar1
      000FED D0 03            [24] 2424 	pop	ar3
      000FEF D0 05            [24] 2425 	pop	ar5
      000FF1 D0 06            [24] 2426 	pop	ar6
                                   2427 ;	src\usbhost.c:709: if (s == ERR_SUCCESS)
      000FF3 EF               [12] 2428 	mov	a,r7
      000FF4 60 03            [24] 2429 	jz	00328$
      000FF6 02 10 A5         [24] 2430 	ljmp	00139$
      000FF9                       2431 00328$:
                                   2432 ;	src\usbhost.c:714: for (dv_cls = 0; dv_cls < ifc; dv_cls++) // ifc = nbinterfaces
      000FF9 7A 00            [12] 2433 	mov	r2,#0x00
      000FFB                       2434 00147$:
      000FFB C3               [12] 2435 	clr	c
      000FFC EA               [12] 2436 	mov	a,r2
      000FFD 9B               [12] 2437 	subb	a,r3
      000FFE 50 1C            [24] 2438 	jnc	00112$
                                   2439 ;	src\usbhost.c:716: s = CtrlGetHIDDeviceReport(dv_cls); // 获取报表描述符
      001000 8A 82            [24] 2440 	mov	dpl, r2
      001002 C0 06            [24] 2441 	push	ar6
      001004 C0 05            [24] 2442 	push	ar5
      001006 C0 03            [24] 2443 	push	ar3
      001008 C0 02            [24] 2444 	push	ar2
      00100A C0 01            [24] 2445 	push	ar1
      00100C 12 0C BC         [24] 2446 	lcall	_CtrlGetHIDDeviceReport
      00100F D0 01            [24] 2447 	pop	ar1
      001011 D0 02            [24] 2448 	pop	ar2
      001013 D0 03            [24] 2449 	pop	ar3
      001015 D0 05            [24] 2450 	pop	ar5
      001017 D0 06            [24] 2451 	pop	ar6
                                   2452 ;	src\usbhost.c:714: for (dv_cls = 0; dv_cls < ifc; dv_cls++) // ifc = nbinterfaces
      001019 0A               [12] 2453 	inc	r2
      00101A 80 DF            [24] 2454 	sjmp	00147$
      00101C                       2455 00112$:
                                   2456 ;	src\usbhost.c:730: ThisUsbDev.DeviceStatus = ROOT_DEV_SUCCESS;
      00101C 90 00 7A         [24] 2457 	mov	dptr,#_ThisUsbDev
      00101F 74 03            [12] 2458 	mov	a,#0x03
      001021 F0               [24] 2459 	movx	@dptr,a
                                   2460 ;	src\usbhost.c:731: if (if_cls == 1)
      001022 BD 01 30         [24] 2461 	cjne	r5,#0x01,00125$
                                   2462 ;	src\usbhost.c:733: ThisUsbDev.DeviceType = DEV_TYPE_KEYBOARD;
      001025 90 00 7D         [24] 2463 	mov	dptr,#(_ThisUsbDev + 0x0003)
      001028 74 23            [12] 2464 	mov	a,#0x23
      00102A F0               [24] 2465 	movx	@dptr,a
                                   2466 ;	src\usbhost.c:735: if (ifc > 1)
      00102B EB               [12] 2467 	mov	a,r3
      00102C 24 FE            [12] 2468 	add	a,#0xff - 0x01
      00102E 50 1B            [24] 2469 	jnc	00116$
                                   2470 ;	src\usbhost.c:740: ThisUsbDev.DeviceType = USB_DEV_CLASS_HID; // 复合HID设备
      001030 90 00 7D         [24] 2471 	mov	dptr,#(_ThisUsbDev + 0x0003)
      001033 74 03            [12] 2472 	mov	a,#0x03
      001035 F0               [24] 2473 	movx	@dptr,a
                                   2474 ;	src\usbhost.c:741: if (if_cls2 == 2)
      001036 B9 02 12         [24] 2475 	cjne	r1,#0x02,00116$
                                   2476 ;	src\usbhost.c:743: ThisUsbDev.DeviceType = DEV_TYPE_MOUSE2;
      001039 90 00 7D         [24] 2477 	mov	dptr,#(_ThisUsbDev + 0x0003)
      00103C 74 43            [12] 2478 	mov	a,#0x43
      00103E F0               [24] 2479 	movx	@dptr,a
                                   2480 ;	src\usbhost.c:746: SetBootProto(0); // Keyboard proto
      00103F 75 82 00         [24] 2481 	mov	dpl, #0x00
      001042 12 10 EF         [24] 2482 	lcall	_SetBootProto
                                   2483 ;	src\usbhost.c:747: SetBootProto(1);
      001045 75 82 01         [24] 2484 	mov	dpl, #0x01
      001048 12 10 EF         [24] 2485 	lcall	_SetBootProto
      00104B                       2486 00116$:
                                   2487 ;	src\usbhost.c:756: SetUsbSpeed(1); // 默认为全速
      00104B 75 82 01         [24] 2488 	mov	dpl, #0x01
      00104E 12 07 5C         [24] 2489 	lcall	_SetUsbSpeed
                                   2490 ;	src\usbhost.c:758: return (ERR_SUCCESS);
      001051 75 82 00         [24] 2491 	mov	dpl, #0x00
      001054 22               [24] 2492 	ret
      001055                       2493 00125$:
                                   2494 ;	src\usbhost.c:760: else if (if_cls == 2)
      001055 BD 02 16         [24] 2495 	cjne	r5,#0x02,00122$
                                   2496 ;	src\usbhost.c:762: ThisUsbDev.DeviceType = DEV_TYPE_MOUSE;
      001058 90 00 7D         [24] 2497 	mov	dptr,#(_ThisUsbDev + 0x0003)
      00105B 74 33            [12] 2498 	mov	a,#0x33
      00105D F0               [24] 2499 	movx	@dptr,a
                                   2500 ;	src\usbhost.c:771: SetBootProto(0);
      00105E 75 82 00         [24] 2501 	mov	dpl, #0x00
      001061 12 10 EF         [24] 2502 	lcall	_SetBootProto
                                   2503 ;	src\usbhost.c:775: SetUsbSpeed(1); // The default is full speed
      001064 75 82 01         [24] 2504 	mov	dpl, #0x01
      001067 12 07 5C         [24] 2505 	lcall	_SetUsbSpeed
                                   2506 ;	src\usbhost.c:777: return (ERR_SUCCESS);
      00106A 75 82 00         [24] 2507 	mov	dpl, #0x00
      00106D 22               [24] 2508 	ret
      00106E                       2509 00122$:
                                   2510 ;	src\usbhost.c:779: else if (if_cls == 0)
      00106E ED               [12] 2511 	mov	a,r5
      00106F 70 1B            [24] 2512 	jnz	00126$
                                   2513 ;	src\usbhost.c:781: ThisUsbDev.DeviceType = DEV_TYPE_JOYSTICK;
      001071 90 00 7D         [24] 2514 	mov	dptr,#(_ThisUsbDev + 0x0003)
      001074 74 53            [12] 2515 	mov	a,#0x53
      001076 F0               [24] 2516 	movx	@dptr,a
                                   2517 ;	src\usbhost.c:783: if (ifc > 1)
      001077 EB               [12] 2518 	mov	a,r3
      001078 24 FE            [12] 2519 	add	a,#0xff - 0x01
      00107A 50 06            [24] 2520 	jnc	00118$
                                   2521 ;	src\usbhost.c:788: ThisUsbDev.DeviceType = USB_DEV_CLASS_HID; // Composite HID equipment
      00107C 90 00 7D         [24] 2522 	mov	dptr,#(_ThisUsbDev + 0x0003)
      00107F 74 03            [12] 2523 	mov	a,#0x03
      001081 F0               [24] 2524 	movx	@dptr,a
      001082                       2525 00118$:
                                   2526 ;	src\usbhost.c:793: SetUsbSpeed(1); // The default is full speed
      001082 75 82 01         [24] 2527 	mov	dpl, #0x01
      001085 12 07 5C         [24] 2528 	lcall	_SetUsbSpeed
                                   2529 ;	src\usbhost.c:795: return (ERR_SUCCESS);
      001088 75 82 00         [24] 2530 	mov	dpl, #0x00
      00108B 22               [24] 2531 	ret
      00108C                       2532 00126$:
                                   2533 ;	src\usbhost.c:797: s = ERR_USB_UNSUPPORT;
      00108C 7F FB            [12] 2534 	mov	r7,#0xfb
      00108E 80 15            [24] 2535 	sjmp	00139$
      001090                       2536 00130$:
                                   2537 ;	src\usbhost.c:813: AnalyzeBulkEndp(Com_Buffer); // 分析出批量端点
      001090 90 00 02         [24] 2538 	mov	dptr,#_Com_Buffer
      001093 C0 06            [24] 2539 	push	ar6
      001095 C0 04            [24] 2540 	push	ar4
      001097 12 0D B0         [24] 2541 	lcall	_AnalyzeBulkEndp
      00109A D0 04            [24] 2542 	pop	ar4
                                   2543 ;	src\usbhost.c:821: s = CtrlSetUsbConfig(cfg); // 设置USB设备配置
      00109C 8C 82            [24] 2544 	mov	dpl, r4
      00109E 12 0C 62         [24] 2545 	lcall	_CtrlSetUsbConfig
      0010A1 AF 82            [24] 2546 	mov	r7, dpl
      0010A3 D0 06            [24] 2547 	pop	ar6
                                   2548 ;	src\usbhost.c:822: if (s == ERR_SUCCESS)
      0010A5                       2549 00139$:
                                   2550 ;	src\usbhost.c:839: ThisUsbDev.DeviceStatus = ROOT_DEV_FAILED;
      0010A5 90 00 7A         [24] 2551 	mov	dptr,#_ThisUsbDev
      0010A8 74 02            [12] 2552 	mov	a,#0x02
      0010AA F0               [24] 2553 	movx	@dptr,a
                                   2554 ;	src\usbhost.c:840: SetUsbSpeed(1); // 默认为全速
      0010AB 75 82 01         [24] 2555 	mov	dpl, #0x01
      0010AE C0 07            [24] 2556 	push	ar7
      0010B0 C0 06            [24] 2557 	push	ar6
      0010B2 12 07 5C         [24] 2558 	lcall	_SetUsbSpeed
      0010B5 D0 06            [24] 2559 	pop	ar6
      0010B7 D0 07            [24] 2560 	pop	ar7
                                   2561 ;	src\usbhost.c:841: t++;
      0010B9 0E               [12] 2562 	inc	r6
                                   2563 ;	src\usbhost.c:842: goto USBDevEnum;
                                   2564 ;	src\usbhost.c:843: }
      0010BA 02 0E 8E         [24] 2565 	ljmp	00153$
                                   2566 ;------------------------------------------------------------
                                   2567 ;Allocation info for local variables in function 'EnumAllRootDevice'
                                   2568 ;------------------------------------------------------------
                                   2569 ;s                         Allocated to registers r6 
                                   2570 ;------------------------------------------------------------
                                   2571 ;	src\usbhost.c:851: uint8_t EnumAllRootDevice(void)
                                   2572 ;	-----------------------------------------
                                   2573 ;	 function EnumAllRootDevice
                                   2574 ;	-----------------------------------------
      0010BD                       2575 _EnumAllRootDevice:
                                   2576 ;	src\usbhost.c:857: if (ThisUsbDev.DeviceStatus == ROOT_DEV_CONNECTED) // The device has just been plugged in and has not been initialized
      0010BD 90 00 7A         [24] 2577 	mov	dptr,#_ThisUsbDev
      0010C0 E0               [24] 2578 	movx	a,@dptr
      0010C1 FF               [12] 2579 	mov	r7,a
      0010C2 BF 01 0B         [24] 2580 	cjne	r7,#0x01,00104$
                                   2581 ;	src\usbhost.c:859: s = InitRootDevice(); // Initialize/enumerate the USB devices of the specified HUB port
      0010C5 12 0E 8A         [24] 2582 	lcall	_InitRootDevice
                                   2583 ;	src\usbhost.c:860: if (s != ERR_SUCCESS)
      0010C8 E5 82            [12] 2584 	mov	a,dpl
      0010CA FE               [12] 2585 	mov	r6,a
      0010CB 60 03            [24] 2586 	jz	00104$
                                   2587 ;	src\usbhost.c:862: return (s);
      0010CD 8E 82            [24] 2588 	mov	dpl, r6
      0010CF 22               [24] 2589 	ret
      0010D0                       2590 00104$:
                                   2591 ;	src\usbhost.c:865: return (ERR_SUCCESS);
      0010D0 75 82 00         [24] 2592 	mov	dpl, #0x00
                                   2593 ;	src\usbhost.c:866: }
      0010D3 22               [24] 2594 	ret
                                   2595 ;------------------------------------------------------------
                                   2596 ;Allocation info for local variables in function 'SearchTypeDevice'
                                   2597 ;------------------------------------------------------------
                                   2598 ;type                      Allocated to registers r7 
                                   2599 ;RootHubIndex              Allocated to registers 
                                   2600 ;------------------------------------------------------------
                                   2601 ;	src\usbhost.c:876: uint16_t SearchTypeDevice(uint8_t type)
                                   2602 ;	-----------------------------------------
                                   2603 ;	 function SearchTypeDevice
                                   2604 ;	-----------------------------------------
      0010D4                       2605 _SearchTypeDevice:
      0010D4 AF 82            [24] 2606 	mov	r7, dpl
                                   2607 ;	src\usbhost.c:882: if ((ThisUsbDev.DeviceType == type) && (ThisUsbDev.DeviceStatus >= ROOT_DEV_SUCCESS))
      0010D6 90 00 7D         [24] 2608 	mov	dptr,#(_ThisUsbDev + 0x0003)
      0010D9 E0               [24] 2609 	movx	a,@dptr
      0010DA B5 07 0E         [24] 2610 	cjne	a,ar7,00102$
      0010DD 90 00 7A         [24] 2611 	mov	dptr,#_ThisUsbDev
      0010E0 E0               [24] 2612 	movx	a,@dptr
      0010E1 FF               [12] 2613 	mov	r7,a
      0010E2 BF 03 00         [24] 2614 	cjne	r7,#0x03,00120$
      0010E5                       2615 00120$:
      0010E5 40 04            [24] 2616 	jc	00102$
                                   2617 ;	src\usbhost.c:884: return ((uint16_t)RootHubIndex << 8); // 类型匹配且枚举成功,在ROOT-HUB端口上
      0010E7 90 00 00         [24] 2618 	mov	dptr,#0x0000
      0010EA 22               [24] 2619 	ret
      0010EB                       2620 00102$:
                                   2621 ;	src\usbhost.c:887: return (0xFFFF);
      0010EB 90 FF FF         [24] 2622 	mov	dptr,#0xffff
                                   2623 ;	src\usbhost.c:888: }
      0010EE 22               [24] 2624 	ret
                                   2625 ;------------------------------------------------------------
                                   2626 ;Allocation info for local variables in function 'SetBootProto'
                                   2627 ;------------------------------------------------------------
                                   2628 ;intf                      Allocated to registers r7 
                                   2629 ;get                       Allocated with name '_SetBootProto_get_10000_210'
                                   2630 ;set                       Allocated with name '_SetBootProto_set_10000_210'
                                   2631 ;report                    Allocated with name '_SetBootProto_report_10000_210'
                                   2632 ;len                       Allocated with name '_SetBootProto_len_10000_210'
                                   2633 ;s                         Allocated to registers r6 
                                   2634 ;------------------------------------------------------------
                                   2635 ;	src\usbhost.c:890: uint8_t SetBootProto(uint8_t intf)
                                   2636 ;	-----------------------------------------
                                   2637 ;	 function SetBootProto
                                   2638 ;	-----------------------------------------
      0010EF                       2639 _SetBootProto:
      0010EF AF 82            [24] 2640 	mov	r7, dpl
                                   2641 ;	src\usbhost.c:892: uint8_t get[] = {0xA1, 0x03, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00};
      0010F1 75 36 A1         [24] 2642 	mov	_SetBootProto_get_10000_210,#0xa1
      0010F4 75 37 03         [24] 2643 	mov	(_SetBootProto_get_10000_210 + 0x0001),#0x03
      0010F7 75 38 00         [24] 2644 	mov	(_SetBootProto_get_10000_210 + 0x0002),#0x00
      0010FA 75 39 00         [24] 2645 	mov	(_SetBootProto_get_10000_210 + 0x0003),#0x00
      0010FD 75 3A 00         [24] 2646 	mov	(_SetBootProto_get_10000_210 + 0x0004),#0x00
      001100 75 3B 00         [24] 2647 	mov	(_SetBootProto_get_10000_210 + 0x0005),#0x00
      001103 75 3C 01         [24] 2648 	mov	(_SetBootProto_get_10000_210 + 0x0006),#0x01
      001106 75 3D 00         [24] 2649 	mov	(_SetBootProto_get_10000_210 + 0x0007),#0x00
                                   2650 ;	src\usbhost.c:893: uint8_t set[] = {0x21, 0x0b, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00};
      001109 75 3E 21         [24] 2651 	mov	_SetBootProto_set_10000_210,#0x21
      00110C 75 3F 0B         [24] 2652 	mov	(_SetBootProto_set_10000_210 + 0x0001),#0x0b
      00110F 75 40 00         [24] 2653 	mov	(_SetBootProto_set_10000_210 + 0x0002),#0x00
      001112 75 41 00         [24] 2654 	mov	(_SetBootProto_set_10000_210 + 0x0003),#0x00
      001115 75 42 00         [24] 2655 	mov	(_SetBootProto_set_10000_210 + 0x0004),#0x00
      001118 75 43 00         [24] 2656 	mov	(_SetBootProto_set_10000_210 + 0x0005),#0x00
      00111B 75 44 00         [24] 2657 	mov	(_SetBootProto_set_10000_210 + 0x0006),#0x00
      00111E 75 45 00         [24] 2658 	mov	(_SetBootProto_set_10000_210 + 0x0007),#0x00
                                   2659 ;	src\usbhost.c:894: uint8_t report[] = {0x21, 0x09, 0x00, 0x02, 0x00, 0x00, 0x01, 0x00};
      001121 75 46 21         [24] 2660 	mov	_SetBootProto_report_10000_210,#0x21
      001124 75 47 09         [24] 2661 	mov	(_SetBootProto_report_10000_210 + 0x0001),#0x09
      001127 75 48 00         [24] 2662 	mov	(_SetBootProto_report_10000_210 + 0x0002),#0x00
      00112A 75 49 02         [24] 2663 	mov	(_SetBootProto_report_10000_210 + 0x0003),#0x02
      00112D 75 4A 00         [24] 2664 	mov	(_SetBootProto_report_10000_210 + 0x0004),#0x00
      001130 75 4B 00         [24] 2665 	mov	(_SetBootProto_report_10000_210 + 0x0005),#0x00
      001133 75 4C 01         [24] 2666 	mov	(_SetBootProto_report_10000_210 + 0x0006),#0x01
      001136 75 4D 00         [24] 2667 	mov	(_SetBootProto_report_10000_210 + 0x0007),#0x00
                                   2668 ;	src\usbhost.c:898: for (s = 0; s != sizeof(get); s++)
      001139 7E 00            [12] 2669 	mov	r6,#0x00
      00113B                       2670 00109$:
                                   2671 ;	src\usbhost.c:900: ((__xdata uint8_t *)pSetupReq)[s] = get[s];
      00113B EE               [12] 2672 	mov	a,r6
      00113C 24 40            [12] 2673 	add	a, #_TxBuffer
      00113E F5 82            [12] 2674 	mov	dpl,a
      001140 E4               [12] 2675 	clr	a
      001141 34 00            [12] 2676 	addc	a, #(_TxBuffer >> 8)
      001143 F5 83            [12] 2677 	mov	dph,a
      001145 EE               [12] 2678 	mov	a,r6
      001146 24 36            [12] 2679 	add	a, #_SetBootProto_get_10000_210
      001148 F9               [12] 2680 	mov	r1,a
      001149 E7               [12] 2681 	mov	a,@r1
      00114A F0               [24] 2682 	movx	@dptr,a
                                   2683 ;	src\usbhost.c:898: for (s = 0; s != sizeof(get); s++)
      00114B 0E               [12] 2684 	inc	r6
      00114C BE 08 EC         [24] 2685 	cjne	r6,#0x08,00109$
                                   2686 ;	src\usbhost.c:902: ((__xdata uint8_t *)pSetupReq)[4] = intf;
      00114F 90 00 44         [24] 2687 	mov	dptr,#(_TxBuffer + 0x0004)
      001152 EF               [12] 2688 	mov	a,r7
      001153 F0               [24] 2689 	movx	@dptr,a
                                   2690 ;	src\usbhost.c:903: s = HostCtrlTransfer(Com_Buffer, &len);
      001154 75 26 4E         [24] 2691 	mov	_HostCtrlTransfer_PARM_2,#_SetBootProto_len_10000_210
      001157 75 27 00         [24] 2692 	mov	(_HostCtrlTransfer_PARM_2 + 1),#0x00
      00115A 75 28 40         [24] 2693 	mov	(_HostCtrlTransfer_PARM_2 + 2),#0x40
      00115D 90 00 02         [24] 2694 	mov	dptr,#_Com_Buffer
      001160 C0 07            [24] 2695 	push	ar7
      001162 12 09 44         [24] 2696 	lcall	_HostCtrlTransfer
      001165 AE 82            [24] 2697 	mov	r6, dpl
      001167 D0 07            [24] 2698 	pop	ar7
                                   2699 ;	src\usbhost.c:905: if (s != ERR_SUCCESS)
      001169 EE               [12] 2700 	mov	a,r6
      00116A 60 03            [24] 2701 	jz	00103$
                                   2702 ;	src\usbhost.c:907: return (s);
      00116C 8E 82            [24] 2703 	mov	dpl, r6
      00116E 22               [24] 2704 	ret
      00116F                       2705 00103$:
                                   2706 ;	src\usbhost.c:916: if (Com_Buffer[0] != 0)
      00116F 90 00 02         [24] 2707 	mov	dptr,#_Com_Buffer
      001172 E0               [24] 2708 	movx	a,@dptr
      001173 60 2C            [24] 2709 	jz	00106$
                                   2710 ;	src\usbhost.c:918: for (s = 0; s != sizeof(set); s++)
      001175 7D 00            [12] 2711 	mov	r5,#0x00
      001177                       2712 00111$:
                                   2713 ;	src\usbhost.c:920: ((__xdata uint8_t *)pSetupReq)[s] = set[s];
      001177 ED               [12] 2714 	mov	a,r5
      001178 24 40            [12] 2715 	add	a, #_TxBuffer
      00117A F5 82            [12] 2716 	mov	dpl,a
      00117C E4               [12] 2717 	clr	a
      00117D 34 00            [12] 2718 	addc	a, #(_TxBuffer >> 8)
      00117F F5 83            [12] 2719 	mov	dph,a
      001181 ED               [12] 2720 	mov	a,r5
      001182 24 3E            [12] 2721 	add	a, #_SetBootProto_set_10000_210
      001184 F9               [12] 2722 	mov	r1,a
      001185 E7               [12] 2723 	mov	a,@r1
      001186 F0               [24] 2724 	movx	@dptr,a
                                   2725 ;	src\usbhost.c:918: for (s = 0; s != sizeof(set); s++)
      001187 0D               [12] 2726 	inc	r5
      001188 BD 08 EC         [24] 2727 	cjne	r5,#0x08,00111$
                                   2728 ;	src\usbhost.c:922: ((__xdata uint8_t *)pSetupReq)[4] = intf;
      00118B 90 00 44         [24] 2729 	mov	dptr,#(_TxBuffer + 0x0004)
      00118E EF               [12] 2730 	mov	a,r7
      00118F F0               [24] 2731 	movx	@dptr,a
                                   2732 ;	src\usbhost.c:923: s = HostCtrlTransfer(Com_Buffer, &len);
      001190 75 26 4E         [24] 2733 	mov	_HostCtrlTransfer_PARM_2,#_SetBootProto_len_10000_210
      001193 75 27 00         [24] 2734 	mov	(_HostCtrlTransfer_PARM_2 + 1),#0x00
      001196 75 28 40         [24] 2735 	mov	(_HostCtrlTransfer_PARM_2 + 2),#0x40
      001199 90 00 02         [24] 2736 	mov	dptr,#_Com_Buffer
      00119C 12 09 44         [24] 2737 	lcall	_HostCtrlTransfer
      00119F AE 82            [24] 2738 	mov	r6, dpl
      0011A1                       2739 00106$:
                                   2740 ;	src\usbhost.c:944: if (s != ERR_SUCCESS)
      0011A1 EE               [12] 2741 	mov	a,r6
      0011A2 60 03            [24] 2742 	jz	00108$
                                   2743 ;	src\usbhost.c:946: return (s);
      0011A4 8E 82            [24] 2744 	mov	dpl, r6
      0011A6 22               [24] 2745 	ret
      0011A7                       2746 00108$:
                                   2747 ;	src\usbhost.c:948: return (ERR_SUCCESS);
      0011A7 75 82 00         [24] 2748 	mov	dpl, #0x00
                                   2749 ;	src\usbhost.c:949: }
      0011AA 22               [24] 2750 	ret
                                   2751 ;------------------------------------------------------------
                                   2752 ;Allocation info for local variables in function 'InitUSB_Host'
                                   2753 ;------------------------------------------------------------
                                   2754 ;i                         Allocated to registers r7 
                                   2755 ;------------------------------------------------------------
                                   2756 ;	src\usbhost.c:958: void InitUSB_Host(void)
                                   2757 ;	-----------------------------------------
                                   2758 ;	 function InitUSB_Host
                                   2759 ;	-----------------------------------------
      0011AB                       2760 _InitUSB_Host:
                                   2761 ;	src\usbhost.c:961: IE_USB = 0;
                                   2762 ;	assignBit
      0011AB C2 EA            [12] 2763 	clr	_IE_USB
                                   2764 ;	src\usbhost.c:964: USB_CTRL = bUC_HOST_MODE;  // 先设定模式
      0011AD 75 E2 80         [24] 2765 	mov	_USB_CTRL,#0x80
                                   2766 ;	src\usbhost.c:965: UHOST_CTRL &= ~bUH_PD_DIS; // 启用主机下拉
      0011B0 53 D1 7F         [24] 2767 	anl	_UDEV_CTRL,#0x7f
                                   2768 ;	src\usbhost.c:966: USB_DEV_AD = 0x00;
      0011B3 75 E3 00         [24] 2769 	mov	_USB_DEV_AD,#0x00
                                   2770 ;	src\usbhost.c:967: UH_EP_MOD = bUH_EP_TX_EN | bUH_EP_RX_EN;
      0011B6 75 EB 48         [24] 2771 	mov	_UEP2_3_MOD,#0x48
                                   2772 ;	src\usbhost.c:968: UH_RX_DMA = (uint16_t)RxBuffer;
      0011B9 7E 00            [12] 2773 	mov	r6,#_RxBuffer
      0011BB 7F 00            [12] 2774 	mov	r7,#(_RxBuffer >> 8)
      0011BD 8E E4            [24] 2775 	mov	((_UEP2_DMA >> 0) & 0xFF),r6
      0011BF 8F E5            [24] 2776 	mov	((_UEP2_DMA >> 8) & 0xFF),r7
                                   2777 ;	src\usbhost.c:969: UH_TX_DMA = (uint16_t)TxBuffer;
      0011C1 7E 40            [12] 2778 	mov	r6,#_TxBuffer
      0011C3 7F 00            [12] 2779 	mov	r7,#(_TxBuffer >> 8)
      0011C5 8E E6            [24] 2780 	mov	((_UEP3_DMA >> 0) & 0xFF),r6
      0011C7 8F E7            [24] 2781 	mov	((_UEP3_DMA >> 8) & 0xFF),r7
                                   2782 ;	src\usbhost.c:970: UH_RX_CTRL = 0x00;
      0011C9 75 D4 00         [24] 2783 	mov	_UEP2_CTRL,#0x00
                                   2784 ;	src\usbhost.c:971: UH_TX_CTRL = 0x00;
      0011CC 75 D6 00         [24] 2785 	mov	_UEP3_CTRL,#0x00
                                   2786 ;	src\usbhost.c:972: USB_CTRL = bUC_HOST_MODE | bUC_INT_BUSY; // | bUC_DMA_EN;                     // 启动USB主机及DMA,在中断标志未清除前自动暂停
      0011CF 75 E2 88         [24] 2787 	mov	_USB_CTRL,#0x88
                                   2788 ;	src\usbhost.c:976: USB_INT_FG = 0xFF;                       // 清中断标志
      0011D2 75 D8 FF         [24] 2789 	mov	_USB_INT_FG,#0xff
                                   2790 ;	src\usbhost.c:977: for (i = 0; i != 2; i++)
      0011D5 7F 00            [12] 2791 	mov	r7,#0x00
      0011D7                       2792 00102$:
                                   2793 ;	src\usbhost.c:979: DisableRootHubPort(); // 清空
      0011D7 C0 07            [24] 2794 	push	ar7
      0011D9 12 07 13         [24] 2795 	lcall	_DisableRootHubPort
      0011DC D0 07            [24] 2796 	pop	ar7
                                   2797 ;	src\usbhost.c:977: for (i = 0; i != 2; i++)
      0011DE 0F               [12] 2798 	inc	r7
      0011DF BF 02 F5         [24] 2799 	cjne	r7,#0x02,00102$
                                   2800 ;	src\usbhost.c:981: USB_INT_EN = bUIE_TRANSFER | bUIE_DETECT;
      0011E2 75 E1 03         [24] 2801 	mov	_USB_INT_EN,#0x03
                                   2802 ;	src\usbhost.c:983: }
      0011E5 22               [24] 2803 	ret
                                   2804 	.area CSEG    (CODE)
                                   2805 	.area CONST   (CODE)
                                   2806 	.area XINIT   (CODE)
                                   2807 	.area CABS    (ABS,CODE)
