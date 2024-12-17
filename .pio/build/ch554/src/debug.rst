                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ISO C Compiler 
                                      3 ; Version 4.4.0 #14620 (MINGW32)
                                      4 ;--------------------------------------------------------
                                      5 	.module debug
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _UIF_BUS_RST
                                     12 	.globl _UIF_DETECT
                                     13 	.globl _UIF_TRANSFER
                                     14 	.globl _UIF_SUSPEND
                                     15 	.globl _UIF_HST_SOF
                                     16 	.globl _UIF_FIFO_OV
                                     17 	.globl _U_SIE_FREE
                                     18 	.globl _U_TOG_OK
                                     19 	.globl _U_IS_NAK
                                     20 	.globl _ADC_CHAN0
                                     21 	.globl _ADC_CHAN1
                                     22 	.globl _CMP_CHAN
                                     23 	.globl _ADC_START
                                     24 	.globl _ADC_IF
                                     25 	.globl _CMP_IF
                                     26 	.globl _CMPO
                                     27 	.globl _U1RI
                                     28 	.globl _U1TI
                                     29 	.globl _U1RB8
                                     30 	.globl _U1TB8
                                     31 	.globl _U1REN
                                     32 	.globl _U1SMOD
                                     33 	.globl _U1SM0
                                     34 	.globl _S0_R_FIFO
                                     35 	.globl _S0_T_FIFO
                                     36 	.globl _S0_FREE
                                     37 	.globl _S0_IF_BYTE
                                     38 	.globl _S0_IF_FIRST
                                     39 	.globl _S0_IF_OV
                                     40 	.globl _S0_FST_ACT
                                     41 	.globl _CP_RL2
                                     42 	.globl _C_T2
                                     43 	.globl _TR2
                                     44 	.globl _EXEN2
                                     45 	.globl _TCLK
                                     46 	.globl _RCLK
                                     47 	.globl _EXF2
                                     48 	.globl _CAP1F
                                     49 	.globl _TF2
                                     50 	.globl _RI
                                     51 	.globl _TI
                                     52 	.globl _RB8
                                     53 	.globl _TB8
                                     54 	.globl _REN
                                     55 	.globl _SM2
                                     56 	.globl _SM1
                                     57 	.globl _SM0
                                     58 	.globl _IT0
                                     59 	.globl _IE0
                                     60 	.globl _IT1
                                     61 	.globl _IE1
                                     62 	.globl _TR0
                                     63 	.globl _TF0
                                     64 	.globl _TR1
                                     65 	.globl _TF1
                                     66 	.globl _RXD
                                     67 	.globl _PWM1_
                                     68 	.globl _TXD
                                     69 	.globl _PWM2_
                                     70 	.globl _AIN3
                                     71 	.globl _VBUS1
                                     72 	.globl _INT0
                                     73 	.globl _TXD1_
                                     74 	.globl _INT1
                                     75 	.globl _T0
                                     76 	.globl _RXD1_
                                     77 	.globl _PWM2
                                     78 	.globl _T1
                                     79 	.globl _UDP
                                     80 	.globl _UDM
                                     81 	.globl _TIN0
                                     82 	.globl _CAP1
                                     83 	.globl _T2
                                     84 	.globl _AIN0
                                     85 	.globl _VBUS2
                                     86 	.globl _TIN1
                                     87 	.globl _CAP2
                                     88 	.globl _T2EX
                                     89 	.globl _RXD_
                                     90 	.globl _TXD_
                                     91 	.globl _AIN1
                                     92 	.globl _UCC1
                                     93 	.globl _TIN2
                                     94 	.globl _SCS
                                     95 	.globl _CAP1_
                                     96 	.globl _T2_
                                     97 	.globl _AIN2
                                     98 	.globl _UCC2
                                     99 	.globl _TIN3
                                    100 	.globl _PWM1
                                    101 	.globl _MOSI
                                    102 	.globl _TIN4
                                    103 	.globl _RXD1
                                    104 	.globl _MISO
                                    105 	.globl _TIN5
                                    106 	.globl _TXD1
                                    107 	.globl _SCK
                                    108 	.globl _IE_SPI0
                                    109 	.globl _IE_TKEY
                                    110 	.globl _IE_USB
                                    111 	.globl _IE_ADC
                                    112 	.globl _IE_UART1
                                    113 	.globl _IE_PWMX
                                    114 	.globl _IE_GPIO
                                    115 	.globl _IE_WDOG
                                    116 	.globl _PX0
                                    117 	.globl _PT0
                                    118 	.globl _PX1
                                    119 	.globl _PT1
                                    120 	.globl _PS
                                    121 	.globl _PT2
                                    122 	.globl _PL_FLAG
                                    123 	.globl _PH_FLAG
                                    124 	.globl _EX0
                                    125 	.globl _ET0
                                    126 	.globl _EX1
                                    127 	.globl _ET1
                                    128 	.globl _ES
                                    129 	.globl _ET2
                                    130 	.globl _E_DIS
                                    131 	.globl _EA
                                    132 	.globl _P
                                    133 	.globl _F1
                                    134 	.globl _OV
                                    135 	.globl _RS0
                                    136 	.globl _RS1
                                    137 	.globl _F0
                                    138 	.globl _AC
                                    139 	.globl _CY
                                    140 	.globl _UEP1_DMA_H
                                    141 	.globl _UEP1_DMA_L
                                    142 	.globl _UEP1_DMA
                                    143 	.globl _UEP0_DMA_H
                                    144 	.globl _UEP0_DMA_L
                                    145 	.globl _UEP0_DMA
                                    146 	.globl _UEP2_3_MOD
                                    147 	.globl _UEP4_1_MOD
                                    148 	.globl _UEP3_DMA_H
                                    149 	.globl _UEP3_DMA_L
                                    150 	.globl _UEP3_DMA
                                    151 	.globl _UEP2_DMA_H
                                    152 	.globl _UEP2_DMA_L
                                    153 	.globl _UEP2_DMA
                                    154 	.globl _USB_DEV_AD
                                    155 	.globl _USB_CTRL
                                    156 	.globl _USB_INT_EN
                                    157 	.globl _UEP4_T_LEN
                                    158 	.globl _UEP4_CTRL
                                    159 	.globl _UEP0_T_LEN
                                    160 	.globl _UEP0_CTRL
                                    161 	.globl _USB_RX_LEN
                                    162 	.globl _USB_MIS_ST
                                    163 	.globl _USB_INT_ST
                                    164 	.globl _USB_INT_FG
                                    165 	.globl _UEP3_T_LEN
                                    166 	.globl _UEP3_CTRL
                                    167 	.globl _UEP2_T_LEN
                                    168 	.globl _UEP2_CTRL
                                    169 	.globl _UEP1_T_LEN
                                    170 	.globl _UEP1_CTRL
                                    171 	.globl _UDEV_CTRL
                                    172 	.globl _USB_C_CTRL
                                    173 	.globl _TKEY_DATH
                                    174 	.globl _TKEY_DATL
                                    175 	.globl _TKEY_DAT
                                    176 	.globl _TKEY_CTRL
                                    177 	.globl _ADC_DATA
                                    178 	.globl _ADC_CFG
                                    179 	.globl _ADC_CTRL
                                    180 	.globl _SBAUD1
                                    181 	.globl _SBUF1
                                    182 	.globl _SCON1
                                    183 	.globl _SPI0_SETUP
                                    184 	.globl _SPI0_CK_SE
                                    185 	.globl _SPI0_CTRL
                                    186 	.globl _SPI0_DATA
                                    187 	.globl _SPI0_STAT
                                    188 	.globl _PWM_CK_SE
                                    189 	.globl _PWM_CTRL
                                    190 	.globl _PWM_DATA1
                                    191 	.globl _PWM_DATA2
                                    192 	.globl _T2CAP1H
                                    193 	.globl _T2CAP1L
                                    194 	.globl _T2CAP1
                                    195 	.globl _TH2
                                    196 	.globl _TL2
                                    197 	.globl _T2COUNT
                                    198 	.globl _RCAP2H
                                    199 	.globl _RCAP2L
                                    200 	.globl _RCAP2
                                    201 	.globl _T2MOD
                                    202 	.globl _T2CON
                                    203 	.globl _SBUF
                                    204 	.globl _SCON
                                    205 	.globl _TH1
                                    206 	.globl _TH0
                                    207 	.globl _TL1
                                    208 	.globl _TL0
                                    209 	.globl _TMOD
                                    210 	.globl _TCON
                                    211 	.globl _XBUS_AUX
                                    212 	.globl _PIN_FUNC
                                    213 	.globl _P3_DIR_PU
                                    214 	.globl _P3_MOD_OC
                                    215 	.globl _P3
                                    216 	.globl _P2
                                    217 	.globl _P1_DIR_PU
                                    218 	.globl _P1_MOD_OC
                                    219 	.globl _P1
                                    220 	.globl _ROM_CTRL
                                    221 	.globl _ROM_DATA_H
                                    222 	.globl _ROM_DATA_L
                                    223 	.globl _ROM_DATA
                                    224 	.globl _ROM_ADDR_H
                                    225 	.globl _ROM_ADDR_L
                                    226 	.globl _ROM_ADDR
                                    227 	.globl _GPIO_IE
                                    228 	.globl _IP_EX
                                    229 	.globl _IE_EX
                                    230 	.globl _IP
                                    231 	.globl _IE
                                    232 	.globl _WDOG_COUNT
                                    233 	.globl _RESET_KEEP
                                    234 	.globl _WAKE_CTRL
                                    235 	.globl _CLOCK_CFG
                                    236 	.globl _PCON
                                    237 	.globl _GLOBAL_CFG
                                    238 	.globl _SAFE_MOD
                                    239 	.globl _DPH
                                    240 	.globl _DPL
                                    241 	.globl _SP
                                    242 	.globl _B
                                    243 	.globl _ACC
                                    244 	.globl _PSW
                                    245 	.globl _CH554UART0Alter
                                    246 	.globl _mInitSTDIO
                                    247 	.globl _CH554UART0RcvByte
                                    248 	.globl _CH554UART0SendByte
                                    249 	.globl _CH554UART1Alter
                                    250 	.globl _UART1Setup
                                    251 	.globl _CH554UART1RcvByte
                                    252 	.globl _CH554UART1SendByte
                                    253 	.globl _CH554WDTModeSelect
                                    254 	.globl _CH554WDTFeed
                                    255 ;--------------------------------------------------------
                                    256 ; special function registers
                                    257 ;--------------------------------------------------------
                                    258 	.area RSEG    (ABS,DATA)
      000000                        259 	.org 0x0000
                           0000D0   260 _PSW	=	0x00d0
                           0000E0   261 _ACC	=	0x00e0
                           0000F0   262 _B	=	0x00f0
                           000081   263 _SP	=	0x0081
                           000082   264 _DPL	=	0x0082
                           000083   265 _DPH	=	0x0083
                           0000A1   266 _SAFE_MOD	=	0x00a1
                           0000B1   267 _GLOBAL_CFG	=	0x00b1
                           000087   268 _PCON	=	0x0087
                           0000B9   269 _CLOCK_CFG	=	0x00b9
                           0000A9   270 _WAKE_CTRL	=	0x00a9
                           0000FE   271 _RESET_KEEP	=	0x00fe
                           0000FF   272 _WDOG_COUNT	=	0x00ff
                           0000A8   273 _IE	=	0x00a8
                           0000B8   274 _IP	=	0x00b8
                           0000E8   275 _IE_EX	=	0x00e8
                           0000E9   276 _IP_EX	=	0x00e9
                           0000C7   277 _GPIO_IE	=	0x00c7
                           008584   278 _ROM_ADDR	=	0x8584
                           000084   279 _ROM_ADDR_L	=	0x0084
                           000085   280 _ROM_ADDR_H	=	0x0085
                           008F8E   281 _ROM_DATA	=	0x8f8e
                           00008E   282 _ROM_DATA_L	=	0x008e
                           00008F   283 _ROM_DATA_H	=	0x008f
                           000086   284 _ROM_CTRL	=	0x0086
                           000090   285 _P1	=	0x0090
                           000092   286 _P1_MOD_OC	=	0x0092
                           000093   287 _P1_DIR_PU	=	0x0093
                           0000A0   288 _P2	=	0x00a0
                           0000B0   289 _P3	=	0x00b0
                           000096   290 _P3_MOD_OC	=	0x0096
                           000097   291 _P3_DIR_PU	=	0x0097
                           0000C6   292 _PIN_FUNC	=	0x00c6
                           0000A2   293 _XBUS_AUX	=	0x00a2
                           000088   294 _TCON	=	0x0088
                           000089   295 _TMOD	=	0x0089
                           00008A   296 _TL0	=	0x008a
                           00008B   297 _TL1	=	0x008b
                           00008C   298 _TH0	=	0x008c
                           00008D   299 _TH1	=	0x008d
                           000098   300 _SCON	=	0x0098
                           000099   301 _SBUF	=	0x0099
                           0000C8   302 _T2CON	=	0x00c8
                           0000C9   303 _T2MOD	=	0x00c9
                           00CBCA   304 _RCAP2	=	0xcbca
                           0000CA   305 _RCAP2L	=	0x00ca
                           0000CB   306 _RCAP2H	=	0x00cb
                           00CDCC   307 _T2COUNT	=	0xcdcc
                           0000CC   308 _TL2	=	0x00cc
                           0000CD   309 _TH2	=	0x00cd
                           00CFCE   310 _T2CAP1	=	0xcfce
                           0000CE   311 _T2CAP1L	=	0x00ce
                           0000CF   312 _T2CAP1H	=	0x00cf
                           00009B   313 _PWM_DATA2	=	0x009b
                           00009C   314 _PWM_DATA1	=	0x009c
                           00009D   315 _PWM_CTRL	=	0x009d
                           00009E   316 _PWM_CK_SE	=	0x009e
                           0000F8   317 _SPI0_STAT	=	0x00f8
                           0000F9   318 _SPI0_DATA	=	0x00f9
                           0000FA   319 _SPI0_CTRL	=	0x00fa
                           0000FB   320 _SPI0_CK_SE	=	0x00fb
                           0000FC   321 _SPI0_SETUP	=	0x00fc
                           0000C0   322 _SCON1	=	0x00c0
                           0000C1   323 _SBUF1	=	0x00c1
                           0000C2   324 _SBAUD1	=	0x00c2
                           000080   325 _ADC_CTRL	=	0x0080
                           00009A   326 _ADC_CFG	=	0x009a
                           00009F   327 _ADC_DATA	=	0x009f
                           0000C3   328 _TKEY_CTRL	=	0x00c3
                           00C5C4   329 _TKEY_DAT	=	0xc5c4
                           0000C4   330 _TKEY_DATL	=	0x00c4
                           0000C5   331 _TKEY_DATH	=	0x00c5
                           000091   332 _USB_C_CTRL	=	0x0091
                           0000D1   333 _UDEV_CTRL	=	0x00d1
                           0000D2   334 _UEP1_CTRL	=	0x00d2
                           0000D3   335 _UEP1_T_LEN	=	0x00d3
                           0000D4   336 _UEP2_CTRL	=	0x00d4
                           0000D5   337 _UEP2_T_LEN	=	0x00d5
                           0000D6   338 _UEP3_CTRL	=	0x00d6
                           0000D7   339 _UEP3_T_LEN	=	0x00d7
                           0000D8   340 _USB_INT_FG	=	0x00d8
                           0000D9   341 _USB_INT_ST	=	0x00d9
                           0000DA   342 _USB_MIS_ST	=	0x00da
                           0000DB   343 _USB_RX_LEN	=	0x00db
                           0000DC   344 _UEP0_CTRL	=	0x00dc
                           0000DD   345 _UEP0_T_LEN	=	0x00dd
                           0000DE   346 _UEP4_CTRL	=	0x00de
                           0000DF   347 _UEP4_T_LEN	=	0x00df
                           0000E1   348 _USB_INT_EN	=	0x00e1
                           0000E2   349 _USB_CTRL	=	0x00e2
                           0000E3   350 _USB_DEV_AD	=	0x00e3
                           00E5E4   351 _UEP2_DMA	=	0xe5e4
                           0000E4   352 _UEP2_DMA_L	=	0x00e4
                           0000E5   353 _UEP2_DMA_H	=	0x00e5
                           00E7E6   354 _UEP3_DMA	=	0xe7e6
                           0000E6   355 _UEP3_DMA_L	=	0x00e6
                           0000E7   356 _UEP3_DMA_H	=	0x00e7
                           0000EA   357 _UEP4_1_MOD	=	0x00ea
                           0000EB   358 _UEP2_3_MOD	=	0x00eb
                           00EDEC   359 _UEP0_DMA	=	0xedec
                           0000EC   360 _UEP0_DMA_L	=	0x00ec
                           0000ED   361 _UEP0_DMA_H	=	0x00ed
                           00EFEE   362 _UEP1_DMA	=	0xefee
                           0000EE   363 _UEP1_DMA_L	=	0x00ee
                           0000EF   364 _UEP1_DMA_H	=	0x00ef
                                    365 ;--------------------------------------------------------
                                    366 ; special function bits
                                    367 ;--------------------------------------------------------
                                    368 	.area RSEG    (ABS,DATA)
      000000                        369 	.org 0x0000
                           0000D7   370 _CY	=	0x00d7
                           0000D6   371 _AC	=	0x00d6
                           0000D5   372 _F0	=	0x00d5
                           0000D4   373 _RS1	=	0x00d4
                           0000D3   374 _RS0	=	0x00d3
                           0000D2   375 _OV	=	0x00d2
                           0000D1   376 _F1	=	0x00d1
                           0000D0   377 _P	=	0x00d0
                           0000AF   378 _EA	=	0x00af
                           0000AE   379 _E_DIS	=	0x00ae
                           0000AD   380 _ET2	=	0x00ad
                           0000AC   381 _ES	=	0x00ac
                           0000AB   382 _ET1	=	0x00ab
                           0000AA   383 _EX1	=	0x00aa
                           0000A9   384 _ET0	=	0x00a9
                           0000A8   385 _EX0	=	0x00a8
                           0000BF   386 _PH_FLAG	=	0x00bf
                           0000BE   387 _PL_FLAG	=	0x00be
                           0000BD   388 _PT2	=	0x00bd
                           0000BC   389 _PS	=	0x00bc
                           0000BB   390 _PT1	=	0x00bb
                           0000BA   391 _PX1	=	0x00ba
                           0000B9   392 _PT0	=	0x00b9
                           0000B8   393 _PX0	=	0x00b8
                           0000EF   394 _IE_WDOG	=	0x00ef
                           0000EE   395 _IE_GPIO	=	0x00ee
                           0000ED   396 _IE_PWMX	=	0x00ed
                           0000EC   397 _IE_UART1	=	0x00ec
                           0000EB   398 _IE_ADC	=	0x00eb
                           0000EA   399 _IE_USB	=	0x00ea
                           0000E9   400 _IE_TKEY	=	0x00e9
                           0000E8   401 _IE_SPI0	=	0x00e8
                           000097   402 _SCK	=	0x0097
                           000097   403 _TXD1	=	0x0097
                           000097   404 _TIN5	=	0x0097
                           000096   405 _MISO	=	0x0096
                           000096   406 _RXD1	=	0x0096
                           000096   407 _TIN4	=	0x0096
                           000095   408 _MOSI	=	0x0095
                           000095   409 _PWM1	=	0x0095
                           000095   410 _TIN3	=	0x0095
                           000095   411 _UCC2	=	0x0095
                           000095   412 _AIN2	=	0x0095
                           000094   413 _T2_	=	0x0094
                           000094   414 _CAP1_	=	0x0094
                           000094   415 _SCS	=	0x0094
                           000094   416 _TIN2	=	0x0094
                           000094   417 _UCC1	=	0x0094
                           000094   418 _AIN1	=	0x0094
                           000093   419 _TXD_	=	0x0093
                           000092   420 _RXD_	=	0x0092
                           000091   421 _T2EX	=	0x0091
                           000091   422 _CAP2	=	0x0091
                           000091   423 _TIN1	=	0x0091
                           000091   424 _VBUS2	=	0x0091
                           000091   425 _AIN0	=	0x0091
                           000090   426 _T2	=	0x0090
                           000090   427 _CAP1	=	0x0090
                           000090   428 _TIN0	=	0x0090
                           0000B7   429 _UDM	=	0x00b7
                           0000B6   430 _UDP	=	0x00b6
                           0000B5   431 _T1	=	0x00b5
                           0000B4   432 _PWM2	=	0x00b4
                           0000B4   433 _RXD1_	=	0x00b4
                           0000B4   434 _T0	=	0x00b4
                           0000B3   435 _INT1	=	0x00b3
                           0000B2   436 _TXD1_	=	0x00b2
                           0000B2   437 _INT0	=	0x00b2
                           0000B2   438 _VBUS1	=	0x00b2
                           0000B2   439 _AIN3	=	0x00b2
                           0000B1   440 _PWM2_	=	0x00b1
                           0000B1   441 _TXD	=	0x00b1
                           0000B0   442 _PWM1_	=	0x00b0
                           0000B0   443 _RXD	=	0x00b0
                           00008F   444 _TF1	=	0x008f
                           00008E   445 _TR1	=	0x008e
                           00008D   446 _TF0	=	0x008d
                           00008C   447 _TR0	=	0x008c
                           00008B   448 _IE1	=	0x008b
                           00008A   449 _IT1	=	0x008a
                           000089   450 _IE0	=	0x0089
                           000088   451 _IT0	=	0x0088
                           00009F   452 _SM0	=	0x009f
                           00009E   453 _SM1	=	0x009e
                           00009D   454 _SM2	=	0x009d
                           00009C   455 _REN	=	0x009c
                           00009B   456 _TB8	=	0x009b
                           00009A   457 _RB8	=	0x009a
                           000099   458 _TI	=	0x0099
                           000098   459 _RI	=	0x0098
                           0000CF   460 _TF2	=	0x00cf
                           0000CF   461 _CAP1F	=	0x00cf
                           0000CE   462 _EXF2	=	0x00ce
                           0000CD   463 _RCLK	=	0x00cd
                           0000CC   464 _TCLK	=	0x00cc
                           0000CB   465 _EXEN2	=	0x00cb
                           0000CA   466 _TR2	=	0x00ca
                           0000C9   467 _C_T2	=	0x00c9
                           0000C8   468 _CP_RL2	=	0x00c8
                           0000FF   469 _S0_FST_ACT	=	0x00ff
                           0000FE   470 _S0_IF_OV	=	0x00fe
                           0000FD   471 _S0_IF_FIRST	=	0x00fd
                           0000FC   472 _S0_IF_BYTE	=	0x00fc
                           0000FB   473 _S0_FREE	=	0x00fb
                           0000FA   474 _S0_T_FIFO	=	0x00fa
                           0000F8   475 _S0_R_FIFO	=	0x00f8
                           0000C7   476 _U1SM0	=	0x00c7
                           0000C5   477 _U1SMOD	=	0x00c5
                           0000C4   478 _U1REN	=	0x00c4
                           0000C3   479 _U1TB8	=	0x00c3
                           0000C2   480 _U1RB8	=	0x00c2
                           0000C1   481 _U1TI	=	0x00c1
                           0000C0   482 _U1RI	=	0x00c0
                           000087   483 _CMPO	=	0x0087
                           000086   484 _CMP_IF	=	0x0086
                           000085   485 _ADC_IF	=	0x0085
                           000084   486 _ADC_START	=	0x0084
                           000083   487 _CMP_CHAN	=	0x0083
                           000081   488 _ADC_CHAN1	=	0x0081
                           000080   489 _ADC_CHAN0	=	0x0080
                           0000DF   490 _U_IS_NAK	=	0x00df
                           0000DE   491 _U_TOG_OK	=	0x00de
                           0000DD   492 _U_SIE_FREE	=	0x00dd
                           0000DC   493 _UIF_FIFO_OV	=	0x00dc
                           0000DB   494 _UIF_HST_SOF	=	0x00db
                           0000DA   495 _UIF_SUSPEND	=	0x00da
                           0000D9   496 _UIF_TRANSFER	=	0x00d9
                           0000D8   497 _UIF_DETECT	=	0x00d8
                           0000D8   498 _UIF_BUS_RST	=	0x00d8
                                    499 ;--------------------------------------------------------
                                    500 ; overlayable register banks
                                    501 ;--------------------------------------------------------
                                    502 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        503 	.ds 8
                                    504 ;--------------------------------------------------------
                                    505 ; internal ram data
                                    506 ;--------------------------------------------------------
                                    507 	.area DSEG    (DATA)
                                    508 ;--------------------------------------------------------
                                    509 ; overlayable items in internal ram
                                    510 ;--------------------------------------------------------
                                    511 	.area	OSEG    (OVR,DATA)
                                    512 	.area	OSEG    (OVR,DATA)
                                    513 	.area	OSEG    (OVR,DATA)
                                    514 	.area	OSEG    (OVR,DATA)
                                    515 	.area	OSEG    (OVR,DATA)
                                    516 ;--------------------------------------------------------
                                    517 ; indirectly addressable internal ram data
                                    518 ;--------------------------------------------------------
                                    519 	.area ISEG    (DATA)
                                    520 ;--------------------------------------------------------
                                    521 ; absolute internal ram data
                                    522 ;--------------------------------------------------------
                                    523 	.area IABS    (ABS,DATA)
                                    524 	.area IABS    (ABS,DATA)
                                    525 ;--------------------------------------------------------
                                    526 ; bit data
                                    527 ;--------------------------------------------------------
                                    528 	.area BSEG    (BIT)
                                    529 ;--------------------------------------------------------
                                    530 ; paged external ram data
                                    531 ;--------------------------------------------------------
                                    532 	.area PSEG    (PAG,XDATA)
                                    533 ;--------------------------------------------------------
                                    534 ; uninitialized external ram data
                                    535 ;--------------------------------------------------------
                                    536 	.area XSEG    (XDATA)
                                    537 ;--------------------------------------------------------
                                    538 ; absolute external ram data
                                    539 ;--------------------------------------------------------
                                    540 	.area XABS    (ABS,XDATA)
                                    541 ;--------------------------------------------------------
                                    542 ; initialized external ram data
                                    543 ;--------------------------------------------------------
                                    544 	.area XISEG   (XDATA)
                                    545 	.area HOME    (CODE)
                                    546 	.area GSINIT0 (CODE)
                                    547 	.area GSINIT1 (CODE)
                                    548 	.area GSINIT2 (CODE)
                                    549 	.area GSINIT3 (CODE)
                                    550 	.area GSINIT4 (CODE)
                                    551 	.area GSINIT5 (CODE)
                                    552 	.area GSINIT  (CODE)
                                    553 	.area GSFINAL (CODE)
                                    554 	.area CSEG    (CODE)
                                    555 ;--------------------------------------------------------
                                    556 ; global & static initialisations
                                    557 ;--------------------------------------------------------
                                    558 	.area HOME    (CODE)
                                    559 	.area GSINIT  (CODE)
                                    560 	.area GSFINAL (CODE)
                                    561 	.area GSINIT  (CODE)
                                    562 ;--------------------------------------------------------
                                    563 ; Home
                                    564 ;--------------------------------------------------------
                                    565 	.area HOME    (CODE)
                                    566 	.area HOME    (CODE)
                                    567 ;--------------------------------------------------------
                                    568 ; code
                                    569 ;--------------------------------------------------------
                                    570 	.area CSEG    (CODE)
                                    571 ;------------------------------------------------------------
                                    572 ;Allocation info for local variables in function 'CH554UART0Alter'
                                    573 ;------------------------------------------------------------
                                    574 ;	src\debug.c:22: inline void CH554UART0Alter(void)
                                    575 ;	-----------------------------------------
                                    576 ;	 function CH554UART0Alter
                                    577 ;	-----------------------------------------
      000088                        578 _CH554UART0Alter:
                           000007   579 	ar7 = 0x07
                           000006   580 	ar6 = 0x06
                           000005   581 	ar5 = 0x05
                           000004   582 	ar4 = 0x04
                           000003   583 	ar3 = 0x03
                           000002   584 	ar2 = 0x02
                           000001   585 	ar1 = 0x01
                           000000   586 	ar0 = 0x00
                                    587 ;	src\debug.c:24: PIN_FUNC |= bUART0_PIN_X;
      000088 43 C6 10         [24]  588 	orl	_PIN_FUNC,#0x10
                                    589 ;	src\debug.c:25: }
      00008B 22               [24]  590 	ret
                                    591 ;------------------------------------------------------------
                                    592 ;Allocation info for local variables in function 'mInitSTDIO'
                                    593 ;------------------------------------------------------------
                                    594 ;x                         Allocated to registers 
                                    595 ;x2                        Allocated to registers 
                                    596 ;------------------------------------------------------------
                                    597 ;	src\debug.c:32: inline void mInitSTDIO(void)
                                    598 ;	-----------------------------------------
                                    599 ;	 function mInitSTDIO
                                    600 ;	-----------------------------------------
      00008C                        601 _mInitSTDIO:
                                    602 ;	src\debug.c:37: SM0 = 0;
                                    603 ;	assignBit
      00008C C2 9F            [12]  604 	clr	_SM0
                                    605 ;	src\debug.c:38: SM1 = 1;
                                    606 ;	assignBit
      00008E D2 9E            [12]  607 	setb	_SM1
                                    608 ;	src\debug.c:39: SM2 = 0;    // Serial port 0 usage mode 1
                                    609 ;	assignBit
      000090 C2 9D            [12]  610 	clr	_SM2
                                    611 ;	src\debug.c:41: RCLK = 0;   // UART0 receive clock
                                    612 ;	assignBit
      000092 C2 CD            [12]  613 	clr	_RCLK
                                    614 ;	src\debug.c:42: TCLK = 0;   // UART0 transmit clock
                                    615 ;	assignBit
      000094 C2 CC            [12]  616 	clr	_TCLK
                                    617 ;	src\debug.c:44: PCON |= SMOD;
      000096 43 87 80         [24]  618 	orl	_PCON,#0x80
                                    619 ;	src\debug.c:52: TMOD = TMOD & ~bT1_GATE & ~bT1_CT & ~MASK_T1_MOD | bT1_M1;  // 0X20, Timer1 as 8-bit auto-reload timer
      000099 74 0F            [12]  620 	mov	a,#0x0f
      00009B 55 89            [12]  621 	anl	a,_TMOD
      00009D 44 20            [12]  622 	orl	a,#0x20
      00009F F5 89            [12]  623 	mov	_TMOD,a
                                    624 ;	src\debug.c:53: T2MOD = T2MOD | bTMR_CLK | bT1_CLK;                         // Timer1 clock selection
      0000A1 43 C9 A0         [24]  625 	orl	_T2MOD,#0xa0
                                    626 ;	src\debug.c:54: TH1 = (0 - x);                                              // 12MHz crystal oscillator, buad / 12 is the actual need to set the baud rate
      0000A4 75 8D 98         [24]  627 	mov	_TH1,#0x98
                                    628 ;	src\debug.c:55: TR1 = 1;                                                    // Start timer 1
                                    629 ;	assignBit
      0000A7 D2 8E            [12]  630 	setb	_TR1
                                    631 ;	src\debug.c:56: TI = 1;
                                    632 ;	assignBit
      0000A9 D2 99            [12]  633 	setb	_TI
                                    634 ;	src\debug.c:57: REN = 1; // Serial 0 receive enable
                                    635 ;	assignBit
      0000AB D2 9C            [12]  636 	setb	_REN
                                    637 ;	src\debug.c:58: }
      0000AD 22               [24]  638 	ret
                                    639 ;------------------------------------------------------------
                                    640 ;Allocation info for local variables in function 'CH554UART0RcvByte'
                                    641 ;------------------------------------------------------------
                                    642 ;	src\debug.c:65: inline uint8_t CH554UART0RcvByte(void)
                                    643 ;	-----------------------------------------
                                    644 ;	 function CH554UART0RcvByte
                                    645 ;	-----------------------------------------
      0000AE                        646 _CH554UART0RcvByte:
                                    647 ;	src\debug.c:67: while (RI == 0);    // wait for receive interrupt flag (RI == 1)
      0000AE                        648 00101$:
                                    649 ;	src\debug.c:68: RI = 0;
                                    650 ;	assignBit
      0000AE 10 98 02         [24]  651 	jbc	_RI,00118$
      0000B1 80 FB            [24]  652 	sjmp	00101$
      0000B3                        653 00118$:
                                    654 ;	src\debug.c:70: return SBUF;
      0000B3 85 99 82         [24]  655 	mov	dpl, _SBUF
                                    656 ;	src\debug.c:71: }
      0000B6 22               [24]  657 	ret
                                    658 ;------------------------------------------------------------
                                    659 ;Allocation info for local variables in function 'CH554UART0SendByte'
                                    660 ;------------------------------------------------------------
                                    661 ;SendDat                   Allocated to registers 
                                    662 ;------------------------------------------------------------
                                    663 ;	src\debug.c:78: inline void CH554UART0SendByte(uint8_t SendDat)
                                    664 ;	-----------------------------------------
                                    665 ;	 function CH554UART0SendByte
                                    666 ;	-----------------------------------------
      0000B7                        667 _CH554UART0SendByte:
      0000B7 85 82 99         [24]  668 	mov	_SBUF,dpl
                                    669 ;	src\debug.c:81: while (TI == 0);    // wait for transmit to finish (TI == 1)
      0000BA                        670 00101$:
                                    671 ;	src\debug.c:82: TI = 0;
                                    672 ;	assignBit
      0000BA 10 99 02         [24]  673 	jbc	_TI,00118$
      0000BD 80 FB            [24]  674 	sjmp	00101$
      0000BF                        675 00118$:
                                    676 ;	src\debug.c:83: }
      0000BF 22               [24]  677 	ret
                                    678 ;------------------------------------------------------------
                                    679 ;Allocation info for local variables in function 'CH554UART1Alter'
                                    680 ;------------------------------------------------------------
                                    681 ;	src\debug.c:89: inline void CH554UART1Alter(void)
                                    682 ;	-----------------------------------------
                                    683 ;	 function CH554UART1Alter
                                    684 ;	-----------------------------------------
      0000C0                        685 _CH554UART1Alter:
                                    686 ;	src\debug.c:91: PIN_FUNC |= bUART1_PIN_X;
      0000C0 43 C6 20         [24]  687 	orl	_PIN_FUNC,#0x20
                                    688 ;	src\debug.c:92: }
      0000C3 22               [24]  689 	ret
                                    690 ;------------------------------------------------------------
                                    691 ;Allocation info for local variables in function 'UART1Setup'
                                    692 ;------------------------------------------------------------
                                    693 ;	src\debug.c:98: inline void UART1Setup(void)
                                    694 ;	-----------------------------------------
                                    695 ;	 function UART1Setup
                                    696 ;	-----------------------------------------
      0000C4                        697 _UART1Setup:
                                    698 ;	src\debug.c:100: U1SM0 = 0;
                                    699 ;	assignBit
      0000C4 C2 C7            [12]  700 	clr	_U1SM0
                                    701 ;	src\debug.c:101: U1SMOD = 1;
                                    702 ;	assignBit
      0000C6 D2 C5            [12]  703 	setb	_U1SMOD
                                    704 ;	src\debug.c:102: U1REN = 1;
                                    705 ;	assignBit
      0000C8 D2 C4            [12]  706 	setb	_U1REN
                                    707 ;	src\debug.c:105: SBAUD1 = (0 - ((FREQ_SYS / 16L) / UART1_BAUD));
      0000CA 75 C2 98         [24]  708 	mov	_SBAUD1,#0x98
                                    709 ;	src\debug.c:115: }
      0000CD 22               [24]  710 	ret
                                    711 ;------------------------------------------------------------
                                    712 ;Allocation info for local variables in function 'CH554UART1RcvByte'
                                    713 ;------------------------------------------------------------
                                    714 ;	src\debug.c:122: inline uint8_t CH554UART1RcvByte(void)
                                    715 ;	-----------------------------------------
                                    716 ;	 function CH554UART1RcvByte
                                    717 ;	-----------------------------------------
      0000CE                        718 _CH554UART1RcvByte:
                                    719 ;	src\debug.c:124: while (U1RI == 0);  // wait for receive interrupt flag (RI == 1)
      0000CE                        720 00101$:
                                    721 ;	src\debug.c:125: U1RI = 0;
                                    722 ;	assignBit
      0000CE 10 C0 02         [24]  723 	jbc	_U1RI,00118$
      0000D1 80 FB            [24]  724 	sjmp	00101$
      0000D3                        725 00118$:
                                    726 ;	src\debug.c:127: return SBUF1;
      0000D3 85 C1 82         [24]  727 	mov	dpl, _SBUF1
                                    728 ;	src\debug.c:128: }
      0000D6 22               [24]  729 	ret
                                    730 ;------------------------------------------------------------
                                    731 ;Allocation info for local variables in function 'CH554UART1SendByte'
                                    732 ;------------------------------------------------------------
                                    733 ;SendDat                   Allocated to registers 
                                    734 ;------------------------------------------------------------
                                    735 ;	src\debug.c:135: inline void CH554UART1SendByte(uint8_t SendDat)
                                    736 ;	-----------------------------------------
                                    737 ;	 function CH554UART1SendByte
                                    738 ;	-----------------------------------------
      0000D7                        739 _CH554UART1SendByte:
      0000D7 85 82 C1         [24]  740 	mov	_SBUF1,dpl
                                    741 ;	src\debug.c:138: while (U1TI == 0);  // wait for transmit to finish (TI == 1)
      0000DA                        742 00101$:
                                    743 ;	src\debug.c:139: U1TI = 0;
                                    744 ;	assignBit
      0000DA 10 C1 02         [24]  745 	jbc	_U1TI,00118$
      0000DD 80 FB            [24]  746 	sjmp	00101$
      0000DF                        747 00118$:
                                    748 ;	src\debug.c:140: }
      0000DF 22               [24]  749 	ret
                                    750 ;------------------------------------------------------------
                                    751 ;Allocation info for local variables in function 'CH554WDTModeSelect'
                                    752 ;------------------------------------------------------------
                                    753 ;mode                      Allocated to registers r7 
                                    754 ;------------------------------------------------------------
                                    755 ;	src\debug.c:166: inline void CH554WDTModeSelect(uint8_t mode)
                                    756 ;	-----------------------------------------
                                    757 ;	 function CH554WDTModeSelect
                                    758 ;	-----------------------------------------
      0000E0                        759 _CH554WDTModeSelect:
      0000E0 AF 82            [24]  760 	mov	r7, dpl
                                    761 ;	src\debug.c:168: SAFE_MOD = 0x55;
      0000E2 75 A1 55         [24]  762 	mov	_SAFE_MOD,#0x55
                                    763 ;	src\debug.c:169: SAFE_MOD = 0xAA;                // Enter Safe Mode
      0000E5 75 A1 AA         [24]  764 	mov	_SAFE_MOD,#0xaa
                                    765 ;	src\debug.c:171: if (mode) {
      0000E8 EF               [12]  766 	mov	a,r7
      0000E9 60 05            [24]  767 	jz	00102$
                                    768 ;	src\debug.c:172: GLOBAL_CFG |= bWDOG_EN;     // Start watchdog reset
      0000EB 43 B1 01         [24]  769 	orl	_GLOBAL_CFG,#0x01
      0000EE 80 03            [24]  770 	sjmp	00103$
      0000F0                        771 00102$:
                                    772 ;	src\debug.c:174: GLOBAL_CFG &= ~bWDOG_EN;    // Start watchdog only as a timer
      0000F0 53 B1 FE         [24]  773 	anl	_GLOBAL_CFG,#0xfe
      0000F3                        774 00103$:
                                    775 ;	src\debug.c:177: SAFE_MOD = 0x00;                // Exit safe Mode
      0000F3 75 A1 00         [24]  776 	mov	_SAFE_MOD,#0x00
                                    777 ;	src\debug.c:178: WDOG_COUNT = 0;                 // Watchdog assignment initial value
      0000F6 75 FF 00         [24]  778 	mov	_WDOG_COUNT,#0x00
                                    779 ;	src\debug.c:179: }
      0000F9 22               [24]  780 	ret
                                    781 ;------------------------------------------------------------
                                    782 ;Allocation info for local variables in function 'CH554WDTFeed'
                                    783 ;------------------------------------------------------------
                                    784 ;tim                       Allocated to registers 
                                    785 ;------------------------------------------------------------
                                    786 ;	src\debug.c:191: inline void CH554WDTFeed(uint8_t tim)
                                    787 ;	-----------------------------------------
                                    788 ;	 function CH554WDTFeed
                                    789 ;	-----------------------------------------
      0000FA                        790 _CH554WDTFeed:
      0000FA 85 82 FF         [24]  791 	mov	_WDOG_COUNT,dpl
                                    792 ;	src\debug.c:193: WDOG_COUNT = tim; // Watchdog counter assignment
                                    793 ;	src\debug.c:194: }
      0000FD 22               [24]  794 	ret
                                    795 	.area CSEG    (CODE)
                                    796 	.area CONST   (CODE)
                                    797 	.area XINIT   (CODE)
                                    798 	.area CABS    (ABS,CODE)
