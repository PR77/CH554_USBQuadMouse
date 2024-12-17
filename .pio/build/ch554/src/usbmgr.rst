                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ISO C Compiler 
                                      3 ; Version 4.4.0 #14620 (MINGW32)
                                      4 ;--------------------------------------------------------
                                      5 	.module usbmgr
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _GetProtocol
                                     12 	.globl _SetupGetHIDDevReport
                                     13 	.globl _SetupSetHIDIdle
                                     14 	.globl _SetupClrEndpStall
                                     15 	.globl _SetupSetUsbInterface
                                     16 	.globl _SetupSetUsbConfig
                                     17 	.globl _SetupSetUsbAddr
                                     18 	.globl _SetupGetCfgDescr
                                     19 	.globl _SetupGetDevDescr
                                     20 	.globl _UIF_BUS_RST
                                     21 	.globl _UIF_DETECT
                                     22 	.globl _UIF_TRANSFER
                                     23 	.globl _UIF_SUSPEND
                                     24 	.globl _UIF_HST_SOF
                                     25 	.globl _UIF_FIFO_OV
                                     26 	.globl _U_SIE_FREE
                                     27 	.globl _U_TOG_OK
                                     28 	.globl _U_IS_NAK
                                     29 	.globl _ADC_CHAN0
                                     30 	.globl _ADC_CHAN1
                                     31 	.globl _CMP_CHAN
                                     32 	.globl _ADC_START
                                     33 	.globl _ADC_IF
                                     34 	.globl _CMP_IF
                                     35 	.globl _CMPO
                                     36 	.globl _U1RI
                                     37 	.globl _U1TI
                                     38 	.globl _U1RB8
                                     39 	.globl _U1TB8
                                     40 	.globl _U1REN
                                     41 	.globl _U1SMOD
                                     42 	.globl _U1SM0
                                     43 	.globl _S0_R_FIFO
                                     44 	.globl _S0_T_FIFO
                                     45 	.globl _S0_FREE
                                     46 	.globl _S0_IF_BYTE
                                     47 	.globl _S0_IF_FIRST
                                     48 	.globl _S0_IF_OV
                                     49 	.globl _S0_FST_ACT
                                     50 	.globl _CP_RL2
                                     51 	.globl _C_T2
                                     52 	.globl _TR2
                                     53 	.globl _EXEN2
                                     54 	.globl _TCLK
                                     55 	.globl _RCLK
                                     56 	.globl _EXF2
                                     57 	.globl _CAP1F
                                     58 	.globl _TF2
                                     59 	.globl _RI
                                     60 	.globl _TI
                                     61 	.globl _RB8
                                     62 	.globl _TB8
                                     63 	.globl _REN
                                     64 	.globl _SM2
                                     65 	.globl _SM1
                                     66 	.globl _SM0
                                     67 	.globl _IT0
                                     68 	.globl _IE0
                                     69 	.globl _IT1
                                     70 	.globl _IE1
                                     71 	.globl _TR0
                                     72 	.globl _TF0
                                     73 	.globl _TR1
                                     74 	.globl _TF1
                                     75 	.globl _RXD
                                     76 	.globl _PWM1_
                                     77 	.globl _TXD
                                     78 	.globl _PWM2_
                                     79 	.globl _AIN3
                                     80 	.globl _VBUS1
                                     81 	.globl _INT0
                                     82 	.globl _TXD1_
                                     83 	.globl _INT1
                                     84 	.globl _T0
                                     85 	.globl _RXD1_
                                     86 	.globl _PWM2
                                     87 	.globl _T1
                                     88 	.globl _UDP
                                     89 	.globl _UDM
                                     90 	.globl _TIN0
                                     91 	.globl _CAP1
                                     92 	.globl _T2
                                     93 	.globl _AIN0
                                     94 	.globl _VBUS2
                                     95 	.globl _TIN1
                                     96 	.globl _CAP2
                                     97 	.globl _T2EX
                                     98 	.globl _RXD_
                                     99 	.globl _TXD_
                                    100 	.globl _AIN1
                                    101 	.globl _UCC1
                                    102 	.globl _TIN2
                                    103 	.globl _SCS
                                    104 	.globl _CAP1_
                                    105 	.globl _T2_
                                    106 	.globl _AIN2
                                    107 	.globl _UCC2
                                    108 	.globl _TIN3
                                    109 	.globl _PWM1
                                    110 	.globl _MOSI
                                    111 	.globl _TIN4
                                    112 	.globl _RXD1
                                    113 	.globl _MISO
                                    114 	.globl _TIN5
                                    115 	.globl _TXD1
                                    116 	.globl _SCK
                                    117 	.globl _IE_SPI0
                                    118 	.globl _IE_TKEY
                                    119 	.globl _IE_USB
                                    120 	.globl _IE_ADC
                                    121 	.globl _IE_UART1
                                    122 	.globl _IE_PWMX
                                    123 	.globl _IE_GPIO
                                    124 	.globl _IE_WDOG
                                    125 	.globl _PX0
                                    126 	.globl _PT0
                                    127 	.globl _PX1
                                    128 	.globl _PT1
                                    129 	.globl _PS
                                    130 	.globl _PT2
                                    131 	.globl _PL_FLAG
                                    132 	.globl _PH_FLAG
                                    133 	.globl _EX0
                                    134 	.globl _ET0
                                    135 	.globl _EX1
                                    136 	.globl _ET1
                                    137 	.globl _ES
                                    138 	.globl _ET2
                                    139 	.globl _E_DIS
                                    140 	.globl _EA
                                    141 	.globl _P
                                    142 	.globl _F1
                                    143 	.globl _OV
                                    144 	.globl _RS0
                                    145 	.globl _RS1
                                    146 	.globl _F0
                                    147 	.globl _AC
                                    148 	.globl _CY
                                    149 	.globl _UEP1_DMA_H
                                    150 	.globl _UEP1_DMA_L
                                    151 	.globl _UEP1_DMA
                                    152 	.globl _UEP0_DMA_H
                                    153 	.globl _UEP0_DMA_L
                                    154 	.globl _UEP0_DMA
                                    155 	.globl _UEP2_3_MOD
                                    156 	.globl _UEP4_1_MOD
                                    157 	.globl _UEP3_DMA_H
                                    158 	.globl _UEP3_DMA_L
                                    159 	.globl _UEP3_DMA
                                    160 	.globl _UEP2_DMA_H
                                    161 	.globl _UEP2_DMA_L
                                    162 	.globl _UEP2_DMA
                                    163 	.globl _USB_DEV_AD
                                    164 	.globl _USB_CTRL
                                    165 	.globl _USB_INT_EN
                                    166 	.globl _UEP4_T_LEN
                                    167 	.globl _UEP4_CTRL
                                    168 	.globl _UEP0_T_LEN
                                    169 	.globl _UEP0_CTRL
                                    170 	.globl _USB_RX_LEN
                                    171 	.globl _USB_MIS_ST
                                    172 	.globl _USB_INT_ST
                                    173 	.globl _USB_INT_FG
                                    174 	.globl _UEP3_T_LEN
                                    175 	.globl _UEP3_CTRL
                                    176 	.globl _UEP2_T_LEN
                                    177 	.globl _UEP2_CTRL
                                    178 	.globl _UEP1_T_LEN
                                    179 	.globl _UEP1_CTRL
                                    180 	.globl _UDEV_CTRL
                                    181 	.globl _USB_C_CTRL
                                    182 	.globl _TKEY_DATH
                                    183 	.globl _TKEY_DATL
                                    184 	.globl _TKEY_DAT
                                    185 	.globl _TKEY_CTRL
                                    186 	.globl _ADC_DATA
                                    187 	.globl _ADC_CFG
                                    188 	.globl _ADC_CTRL
                                    189 	.globl _SBAUD1
                                    190 	.globl _SBUF1
                                    191 	.globl _SCON1
                                    192 	.globl _SPI0_SETUP
                                    193 	.globl _SPI0_CK_SE
                                    194 	.globl _SPI0_CTRL
                                    195 	.globl _SPI0_DATA
                                    196 	.globl _SPI0_STAT
                                    197 	.globl _PWM_CK_SE
                                    198 	.globl _PWM_CTRL
                                    199 	.globl _PWM_DATA1
                                    200 	.globl _PWM_DATA2
                                    201 	.globl _T2CAP1H
                                    202 	.globl _T2CAP1L
                                    203 	.globl _T2CAP1
                                    204 	.globl _TH2
                                    205 	.globl _TL2
                                    206 	.globl _T2COUNT
                                    207 	.globl _RCAP2H
                                    208 	.globl _RCAP2L
                                    209 	.globl _RCAP2
                                    210 	.globl _T2MOD
                                    211 	.globl _T2CON
                                    212 	.globl _SBUF
                                    213 	.globl _SCON
                                    214 	.globl _TH1
                                    215 	.globl _TH0
                                    216 	.globl _TL1
                                    217 	.globl _TL0
                                    218 	.globl _TMOD
                                    219 	.globl _TCON
                                    220 	.globl _XBUS_AUX
                                    221 	.globl _PIN_FUNC
                                    222 	.globl _P3_DIR_PU
                                    223 	.globl _P3_MOD_OC
                                    224 	.globl _P3
                                    225 	.globl _P2
                                    226 	.globl _P1_DIR_PU
                                    227 	.globl _P1_MOD_OC
                                    228 	.globl _P1
                                    229 	.globl _ROM_CTRL
                                    230 	.globl _ROM_DATA_H
                                    231 	.globl _ROM_DATA_L
                                    232 	.globl _ROM_DATA
                                    233 	.globl _ROM_ADDR_H
                                    234 	.globl _ROM_ADDR_L
                                    235 	.globl _ROM_ADDR
                                    236 	.globl _GPIO_IE
                                    237 	.globl _IP_EX
                                    238 	.globl _IE_EX
                                    239 	.globl _IP
                                    240 	.globl _IE
                                    241 	.globl _WDOG_COUNT
                                    242 	.globl _RESET_KEEP
                                    243 	.globl _WAKE_CTRL
                                    244 	.globl _CLOCK_CFG
                                    245 	.globl _PCON
                                    246 	.globl _GLOBAL_CFG
                                    247 	.globl _SAFE_MOD
                                    248 	.globl _DPH
                                    249 	.globl _DPL
                                    250 	.globl _SP
                                    251 	.globl _B
                                    252 	.globl _ACC
                                    253 	.globl _PSW
                                    254 	.globl _DevOnHubPort
                                    255 	.globl _ThisUsbDev
                                    256 	.globl _Com_Buffer
                                    257 	.globl _TxBuffer
                                    258 	.globl _RxBuffer
                                    259 	.globl _UsbDevEndp0Size
                                    260 	.globl _FoundNewDev
                                    261 	.globl _Set_Port
                                    262 ;--------------------------------------------------------
                                    263 ; special function registers
                                    264 ;--------------------------------------------------------
                                    265 	.area RSEG    (ABS,DATA)
      000000                        266 	.org 0x0000
                           0000D0   267 _PSW	=	0x00d0
                           0000E0   268 _ACC	=	0x00e0
                           0000F0   269 _B	=	0x00f0
                           000081   270 _SP	=	0x0081
                           000082   271 _DPL	=	0x0082
                           000083   272 _DPH	=	0x0083
                           0000A1   273 _SAFE_MOD	=	0x00a1
                           0000B1   274 _GLOBAL_CFG	=	0x00b1
                           000087   275 _PCON	=	0x0087
                           0000B9   276 _CLOCK_CFG	=	0x00b9
                           0000A9   277 _WAKE_CTRL	=	0x00a9
                           0000FE   278 _RESET_KEEP	=	0x00fe
                           0000FF   279 _WDOG_COUNT	=	0x00ff
                           0000A8   280 _IE	=	0x00a8
                           0000B8   281 _IP	=	0x00b8
                           0000E8   282 _IE_EX	=	0x00e8
                           0000E9   283 _IP_EX	=	0x00e9
                           0000C7   284 _GPIO_IE	=	0x00c7
                           008584   285 _ROM_ADDR	=	0x8584
                           000084   286 _ROM_ADDR_L	=	0x0084
                           000085   287 _ROM_ADDR_H	=	0x0085
                           008F8E   288 _ROM_DATA	=	0x8f8e
                           00008E   289 _ROM_DATA_L	=	0x008e
                           00008F   290 _ROM_DATA_H	=	0x008f
                           000086   291 _ROM_CTRL	=	0x0086
                           000090   292 _P1	=	0x0090
                           000092   293 _P1_MOD_OC	=	0x0092
                           000093   294 _P1_DIR_PU	=	0x0093
                           0000A0   295 _P2	=	0x00a0
                           0000B0   296 _P3	=	0x00b0
                           000096   297 _P3_MOD_OC	=	0x0096
                           000097   298 _P3_DIR_PU	=	0x0097
                           0000C6   299 _PIN_FUNC	=	0x00c6
                           0000A2   300 _XBUS_AUX	=	0x00a2
                           000088   301 _TCON	=	0x0088
                           000089   302 _TMOD	=	0x0089
                           00008A   303 _TL0	=	0x008a
                           00008B   304 _TL1	=	0x008b
                           00008C   305 _TH0	=	0x008c
                           00008D   306 _TH1	=	0x008d
                           000098   307 _SCON	=	0x0098
                           000099   308 _SBUF	=	0x0099
                           0000C8   309 _T2CON	=	0x00c8
                           0000C9   310 _T2MOD	=	0x00c9
                           00CBCA   311 _RCAP2	=	0xcbca
                           0000CA   312 _RCAP2L	=	0x00ca
                           0000CB   313 _RCAP2H	=	0x00cb
                           00CDCC   314 _T2COUNT	=	0xcdcc
                           0000CC   315 _TL2	=	0x00cc
                           0000CD   316 _TH2	=	0x00cd
                           00CFCE   317 _T2CAP1	=	0xcfce
                           0000CE   318 _T2CAP1L	=	0x00ce
                           0000CF   319 _T2CAP1H	=	0x00cf
                           00009B   320 _PWM_DATA2	=	0x009b
                           00009C   321 _PWM_DATA1	=	0x009c
                           00009D   322 _PWM_CTRL	=	0x009d
                           00009E   323 _PWM_CK_SE	=	0x009e
                           0000F8   324 _SPI0_STAT	=	0x00f8
                           0000F9   325 _SPI0_DATA	=	0x00f9
                           0000FA   326 _SPI0_CTRL	=	0x00fa
                           0000FB   327 _SPI0_CK_SE	=	0x00fb
                           0000FC   328 _SPI0_SETUP	=	0x00fc
                           0000C0   329 _SCON1	=	0x00c0
                           0000C1   330 _SBUF1	=	0x00c1
                           0000C2   331 _SBAUD1	=	0x00c2
                           000080   332 _ADC_CTRL	=	0x0080
                           00009A   333 _ADC_CFG	=	0x009a
                           00009F   334 _ADC_DATA	=	0x009f
                           0000C3   335 _TKEY_CTRL	=	0x00c3
                           00C5C4   336 _TKEY_DAT	=	0xc5c4
                           0000C4   337 _TKEY_DATL	=	0x00c4
                           0000C5   338 _TKEY_DATH	=	0x00c5
                           000091   339 _USB_C_CTRL	=	0x0091
                           0000D1   340 _UDEV_CTRL	=	0x00d1
                           0000D2   341 _UEP1_CTRL	=	0x00d2
                           0000D3   342 _UEP1_T_LEN	=	0x00d3
                           0000D4   343 _UEP2_CTRL	=	0x00d4
                           0000D5   344 _UEP2_T_LEN	=	0x00d5
                           0000D6   345 _UEP3_CTRL	=	0x00d6
                           0000D7   346 _UEP3_T_LEN	=	0x00d7
                           0000D8   347 _USB_INT_FG	=	0x00d8
                           0000D9   348 _USB_INT_ST	=	0x00d9
                           0000DA   349 _USB_MIS_ST	=	0x00da
                           0000DB   350 _USB_RX_LEN	=	0x00db
                           0000DC   351 _UEP0_CTRL	=	0x00dc
                           0000DD   352 _UEP0_T_LEN	=	0x00dd
                           0000DE   353 _UEP4_CTRL	=	0x00de
                           0000DF   354 _UEP4_T_LEN	=	0x00df
                           0000E1   355 _USB_INT_EN	=	0x00e1
                           0000E2   356 _USB_CTRL	=	0x00e2
                           0000E3   357 _USB_DEV_AD	=	0x00e3
                           00E5E4   358 _UEP2_DMA	=	0xe5e4
                           0000E4   359 _UEP2_DMA_L	=	0x00e4
                           0000E5   360 _UEP2_DMA_H	=	0x00e5
                           00E7E6   361 _UEP3_DMA	=	0xe7e6
                           0000E6   362 _UEP3_DMA_L	=	0x00e6
                           0000E7   363 _UEP3_DMA_H	=	0x00e7
                           0000EA   364 _UEP4_1_MOD	=	0x00ea
                           0000EB   365 _UEP2_3_MOD	=	0x00eb
                           00EDEC   366 _UEP0_DMA	=	0xedec
                           0000EC   367 _UEP0_DMA_L	=	0x00ec
                           0000ED   368 _UEP0_DMA_H	=	0x00ed
                           00EFEE   369 _UEP1_DMA	=	0xefee
                           0000EE   370 _UEP1_DMA_L	=	0x00ee
                           0000EF   371 _UEP1_DMA_H	=	0x00ef
                                    372 ;--------------------------------------------------------
                                    373 ; special function bits
                                    374 ;--------------------------------------------------------
                                    375 	.area RSEG    (ABS,DATA)
      000000                        376 	.org 0x0000
                           0000D7   377 _CY	=	0x00d7
                           0000D6   378 _AC	=	0x00d6
                           0000D5   379 _F0	=	0x00d5
                           0000D4   380 _RS1	=	0x00d4
                           0000D3   381 _RS0	=	0x00d3
                           0000D2   382 _OV	=	0x00d2
                           0000D1   383 _F1	=	0x00d1
                           0000D0   384 _P	=	0x00d0
                           0000AF   385 _EA	=	0x00af
                           0000AE   386 _E_DIS	=	0x00ae
                           0000AD   387 _ET2	=	0x00ad
                           0000AC   388 _ES	=	0x00ac
                           0000AB   389 _ET1	=	0x00ab
                           0000AA   390 _EX1	=	0x00aa
                           0000A9   391 _ET0	=	0x00a9
                           0000A8   392 _EX0	=	0x00a8
                           0000BF   393 _PH_FLAG	=	0x00bf
                           0000BE   394 _PL_FLAG	=	0x00be
                           0000BD   395 _PT2	=	0x00bd
                           0000BC   396 _PS	=	0x00bc
                           0000BB   397 _PT1	=	0x00bb
                           0000BA   398 _PX1	=	0x00ba
                           0000B9   399 _PT0	=	0x00b9
                           0000B8   400 _PX0	=	0x00b8
                           0000EF   401 _IE_WDOG	=	0x00ef
                           0000EE   402 _IE_GPIO	=	0x00ee
                           0000ED   403 _IE_PWMX	=	0x00ed
                           0000EC   404 _IE_UART1	=	0x00ec
                           0000EB   405 _IE_ADC	=	0x00eb
                           0000EA   406 _IE_USB	=	0x00ea
                           0000E9   407 _IE_TKEY	=	0x00e9
                           0000E8   408 _IE_SPI0	=	0x00e8
                           000097   409 _SCK	=	0x0097
                           000097   410 _TXD1	=	0x0097
                           000097   411 _TIN5	=	0x0097
                           000096   412 _MISO	=	0x0096
                           000096   413 _RXD1	=	0x0096
                           000096   414 _TIN4	=	0x0096
                           000095   415 _MOSI	=	0x0095
                           000095   416 _PWM1	=	0x0095
                           000095   417 _TIN3	=	0x0095
                           000095   418 _UCC2	=	0x0095
                           000095   419 _AIN2	=	0x0095
                           000094   420 _T2_	=	0x0094
                           000094   421 _CAP1_	=	0x0094
                           000094   422 _SCS	=	0x0094
                           000094   423 _TIN2	=	0x0094
                           000094   424 _UCC1	=	0x0094
                           000094   425 _AIN1	=	0x0094
                           000093   426 _TXD_	=	0x0093
                           000092   427 _RXD_	=	0x0092
                           000091   428 _T2EX	=	0x0091
                           000091   429 _CAP2	=	0x0091
                           000091   430 _TIN1	=	0x0091
                           000091   431 _VBUS2	=	0x0091
                           000091   432 _AIN0	=	0x0091
                           000090   433 _T2	=	0x0090
                           000090   434 _CAP1	=	0x0090
                           000090   435 _TIN0	=	0x0090
                           0000B7   436 _UDM	=	0x00b7
                           0000B6   437 _UDP	=	0x00b6
                           0000B5   438 _T1	=	0x00b5
                           0000B4   439 _PWM2	=	0x00b4
                           0000B4   440 _RXD1_	=	0x00b4
                           0000B4   441 _T0	=	0x00b4
                           0000B3   442 _INT1	=	0x00b3
                           0000B2   443 _TXD1_	=	0x00b2
                           0000B2   444 _INT0	=	0x00b2
                           0000B2   445 _VBUS1	=	0x00b2
                           0000B2   446 _AIN3	=	0x00b2
                           0000B1   447 _PWM2_	=	0x00b1
                           0000B1   448 _TXD	=	0x00b1
                           0000B0   449 _PWM1_	=	0x00b0
                           0000B0   450 _RXD	=	0x00b0
                           00008F   451 _TF1	=	0x008f
                           00008E   452 _TR1	=	0x008e
                           00008D   453 _TF0	=	0x008d
                           00008C   454 _TR0	=	0x008c
                           00008B   455 _IE1	=	0x008b
                           00008A   456 _IT1	=	0x008a
                           000089   457 _IE0	=	0x0089
                           000088   458 _IT0	=	0x0088
                           00009F   459 _SM0	=	0x009f
                           00009E   460 _SM1	=	0x009e
                           00009D   461 _SM2	=	0x009d
                           00009C   462 _REN	=	0x009c
                           00009B   463 _TB8	=	0x009b
                           00009A   464 _RB8	=	0x009a
                           000099   465 _TI	=	0x0099
                           000098   466 _RI	=	0x0098
                           0000CF   467 _TF2	=	0x00cf
                           0000CF   468 _CAP1F	=	0x00cf
                           0000CE   469 _EXF2	=	0x00ce
                           0000CD   470 _RCLK	=	0x00cd
                           0000CC   471 _TCLK	=	0x00cc
                           0000CB   472 _EXEN2	=	0x00cb
                           0000CA   473 _TR2	=	0x00ca
                           0000C9   474 _C_T2	=	0x00c9
                           0000C8   475 _CP_RL2	=	0x00c8
                           0000FF   476 _S0_FST_ACT	=	0x00ff
                           0000FE   477 _S0_IF_OV	=	0x00fe
                           0000FD   478 _S0_IF_FIRST	=	0x00fd
                           0000FC   479 _S0_IF_BYTE	=	0x00fc
                           0000FB   480 _S0_FREE	=	0x00fb
                           0000FA   481 _S0_T_FIFO	=	0x00fa
                           0000F8   482 _S0_R_FIFO	=	0x00f8
                           0000C7   483 _U1SM0	=	0x00c7
                           0000C5   484 _U1SMOD	=	0x00c5
                           0000C4   485 _U1REN	=	0x00c4
                           0000C3   486 _U1TB8	=	0x00c3
                           0000C2   487 _U1RB8	=	0x00c2
                           0000C1   488 _U1TI	=	0x00c1
                           0000C0   489 _U1RI	=	0x00c0
                           000087   490 _CMPO	=	0x0087
                           000086   491 _CMP_IF	=	0x0086
                           000085   492 _ADC_IF	=	0x0085
                           000084   493 _ADC_START	=	0x0084
                           000083   494 _CMP_CHAN	=	0x0083
                           000081   495 _ADC_CHAN1	=	0x0081
                           000080   496 _ADC_CHAN0	=	0x0080
                           0000DF   497 _U_IS_NAK	=	0x00df
                           0000DE   498 _U_TOG_OK	=	0x00de
                           0000DD   499 _U_SIE_FREE	=	0x00dd
                           0000DC   500 _UIF_FIFO_OV	=	0x00dc
                           0000DB   501 _UIF_HST_SOF	=	0x00db
                           0000DA   502 _UIF_SUSPEND	=	0x00da
                           0000D9   503 _UIF_TRANSFER	=	0x00d9
                           0000D8   504 _UIF_DETECT	=	0x00d8
                           0000D8   505 _UIF_BUS_RST	=	0x00d8
                                    506 ;--------------------------------------------------------
                                    507 ; overlayable register banks
                                    508 ;--------------------------------------------------------
                                    509 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        510 	.ds 8
                                    511 ;--------------------------------------------------------
                                    512 ; internal ram data
                                    513 ;--------------------------------------------------------
                                    514 	.area DSEG    (DATA)
      000017                        515 _Set_Port::
      000017                        516 	.ds 1
                                    517 ;--------------------------------------------------------
                                    518 ; overlayable items in internal ram
                                    519 ;--------------------------------------------------------
                                    520 ;--------------------------------------------------------
                                    521 ; indirectly addressable internal ram data
                                    522 ;--------------------------------------------------------
                                    523 	.area ISEG    (DATA)
                                    524 ;--------------------------------------------------------
                                    525 ; absolute internal ram data
                                    526 ;--------------------------------------------------------
                                    527 	.area IABS    (ABS,DATA)
                                    528 	.area IABS    (ABS,DATA)
                                    529 ;--------------------------------------------------------
                                    530 ; bit data
                                    531 ;--------------------------------------------------------
                                    532 	.area BSEG    (BIT)
      000002                        533 _FoundNewDev::
      000002                        534 	.ds 1
                                    535 ;--------------------------------------------------------
                                    536 ; paged external ram data
                                    537 ;--------------------------------------------------------
                                    538 	.area PSEG    (PAG,XDATA)
                                    539 ;--------------------------------------------------------
                                    540 ; uninitialized external ram data
                                    541 ;--------------------------------------------------------
                                    542 	.area XSEG    (XDATA)
      000001                        543 _UsbDevEndp0Size::
      000001                        544 	.ds 1
                           000000   545 _RxBuffer	=	0x0000
                           000040   546 _TxBuffer	=	0x0040
      000002                        547 _Com_Buffer::
      000002                        548 	.ds 120
      00007A                        549 _ThisUsbDev::
      00007A                        550 	.ds 13
      000087                        551 _DevOnHubPort::
      000087                        552 	.ds 48
                                    553 ;--------------------------------------------------------
                                    554 ; absolute external ram data
                                    555 ;--------------------------------------------------------
                                    556 	.area XABS    (ABS,XDATA)
                                    557 ;--------------------------------------------------------
                                    558 ; initialized external ram data
                                    559 ;--------------------------------------------------------
                                    560 	.area XISEG   (XDATA)
                                    561 	.area HOME    (CODE)
                                    562 	.area GSINIT0 (CODE)
                                    563 	.area GSINIT1 (CODE)
                                    564 	.area GSINIT2 (CODE)
                                    565 	.area GSINIT3 (CODE)
                                    566 	.area GSINIT4 (CODE)
                                    567 	.area GSINIT5 (CODE)
                                    568 	.area GSINIT  (CODE)
                                    569 	.area GSFINAL (CODE)
                                    570 	.area CSEG    (CODE)
                                    571 ;--------------------------------------------------------
                                    572 ; global & static initialisations
                                    573 ;--------------------------------------------------------
                                    574 	.area HOME    (CODE)
                                    575 	.area GSINIT  (CODE)
                                    576 	.area GSFINAL (CODE)
                                    577 	.area GSINIT  (CODE)
                                    578 ;	src\usbmgr.c:37: uint8_t Set_Port = 0;
      000082 75 17 00         [24]  579 	mov	_Set_Port,#0x00
                                    580 ;--------------------------------------------------------
                                    581 ; Home
                                    582 ;--------------------------------------------------------
                                    583 	.area HOME    (CODE)
                                    584 	.area HOME    (CODE)
                                    585 ;--------------------------------------------------------
                                    586 ; code
                                    587 ;--------------------------------------------------------
                                    588 	.area CSEG    (CODE)
                                    589 	.area CSEG    (CODE)
                                    590 	.area CONST   (CODE)
      001455                        591 _SetupGetDevDescr:
      001455 80                     592 	.db #0x80	; 128
      001456 06                     593 	.db #0x06	; 6
      001457 00                     594 	.db #0x00	; 0
      001458 01                     595 	.db #0x01	; 1
      001459 00                     596 	.db #0x00	; 0
      00145A 00                     597 	.db #0x00	; 0
      00145B 12                     598 	.db #0x12	; 18
      00145C 00                     599 	.db #0x00	; 0
      00145D                        600 _SetupGetCfgDescr:
      00145D 80                     601 	.db #0x80	; 128
      00145E 06                     602 	.db #0x06	; 6
      00145F 00                     603 	.db #0x00	; 0
      001460 02                     604 	.db #0x02	; 2
      001461 00                     605 	.db #0x00	; 0
      001462 00                     606 	.db #0x00	; 0
      001463 04                     607 	.db #0x04	; 4
      001464 00                     608 	.db #0x00	; 0
      001465                        609 _SetupSetUsbAddr:
      001465 00                     610 	.db #0x00	; 0
      001466 05                     611 	.db #0x05	; 5
      001467 02                     612 	.db #0x02	; 2
      001468 00                     613 	.db #0x00	; 0
      001469 00                     614 	.db #0x00	; 0
      00146A 00                     615 	.db #0x00	; 0
      00146B 00                     616 	.db #0x00	; 0
      00146C 00                     617 	.db #0x00	; 0
      00146D                        618 _SetupSetUsbConfig:
      00146D 00                     619 	.db #0x00	; 0
      00146E 09                     620 	.db #0x09	; 9
      00146F 00                     621 	.db #0x00	; 0
      001470 00                     622 	.db #0x00	; 0
      001471 00                     623 	.db #0x00	; 0
      001472 00                     624 	.db #0x00	; 0
      001473 00                     625 	.db #0x00	; 0
      001474 00                     626 	.db #0x00	; 0
      001475                        627 _SetupSetUsbInterface:
      001475 01                     628 	.db #0x01	; 1
      001476 0B                     629 	.db #0x0b	; 11
      001477 00                     630 	.db #0x00	; 0
      001478 00                     631 	.db #0x00	; 0
      001479 00                     632 	.db #0x00	; 0
      00147A 00                     633 	.db #0x00	; 0
      00147B 00                     634 	.db #0x00	; 0
      00147C 00                     635 	.db #0x00	; 0
      00147D                        636 _SetupClrEndpStall:
      00147D 02                     637 	.db #0x02	; 2
      00147E 01                     638 	.db #0x01	; 1
      00147F 00                     639 	.db #0x00	; 0
      001480 00                     640 	.db #0x00	; 0
      001481 00                     641 	.db #0x00	; 0
      001482 00                     642 	.db #0x00	; 0
      001483 00                     643 	.db #0x00	; 0
      001484 00                     644 	.db #0x00	; 0
      001485                        645 _SetupSetHIDIdle:
      001485 21                     646 	.db #0x21	; 33
      001486 0A                     647 	.db #0x0a	; 10
      001487 00                     648 	.db #0x00	; 0
      001488 00                     649 	.db #0x00	; 0
      001489 00                     650 	.db #0x00	; 0
      00148A 00                     651 	.db #0x00	; 0
      00148B 00                     652 	.db #0x00	; 0
      00148C 00                     653 	.db #0x00	; 0
      00148D                        654 _SetupGetHIDDevReport:
      00148D 81                     655 	.db #0x81	; 129
      00148E 06                     656 	.db #0x06	; 6
      00148F 00                     657 	.db #0x00	; 0
      001490 22                     658 	.db #0x22	; 34
      001491 00                     659 	.db #0x00	; 0
      001492 00                     660 	.db #0x00	; 0
      001493 FF                     661 	.db #0xff	; 255
      001494 00                     662 	.db #0x00	; 0
      001495                        663 _GetProtocol:
      001495 C0                     664 	.db #0xc0	; 192
      001496 33                     665 	.db #0x33	; 51	'3'
      001497 00                     666 	.db #0x00	; 0
      001498 00                     667 	.db #0x00	; 0
      001499 00                     668 	.db #0x00	; 0
      00149A 00                     669 	.db #0x00	; 0
      00149B 02                     670 	.db #0x02	; 2
      00149C 00                     671 	.db #0x00	; 0
                                    672 	.area XINIT   (CODE)
                                    673 	.area CABS    (ABS,CODE)
