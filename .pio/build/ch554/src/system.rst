                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ISO C Compiler 
                                      3 ; Version 4.4.0 #14620 (MINGW32)
                                      4 ;--------------------------------------------------------
                                      5 	.module system
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
                                    245 	.globl _system_CfgFsys
                                    246 	.globl _mDelayuS
                                    247 	.globl _mDelaymS
                                    248 ;--------------------------------------------------------
                                    249 ; special function registers
                                    250 ;--------------------------------------------------------
                                    251 	.area RSEG    (ABS,DATA)
      000000                        252 	.org 0x0000
                           0000D0   253 _PSW	=	0x00d0
                           0000E0   254 _ACC	=	0x00e0
                           0000F0   255 _B	=	0x00f0
                           000081   256 _SP	=	0x0081
                           000082   257 _DPL	=	0x0082
                           000083   258 _DPH	=	0x0083
                           0000A1   259 _SAFE_MOD	=	0x00a1
                           0000B1   260 _GLOBAL_CFG	=	0x00b1
                           000087   261 _PCON	=	0x0087
                           0000B9   262 _CLOCK_CFG	=	0x00b9
                           0000A9   263 _WAKE_CTRL	=	0x00a9
                           0000FE   264 _RESET_KEEP	=	0x00fe
                           0000FF   265 _WDOG_COUNT	=	0x00ff
                           0000A8   266 _IE	=	0x00a8
                           0000B8   267 _IP	=	0x00b8
                           0000E8   268 _IE_EX	=	0x00e8
                           0000E9   269 _IP_EX	=	0x00e9
                           0000C7   270 _GPIO_IE	=	0x00c7
                           008584   271 _ROM_ADDR	=	0x8584
                           000084   272 _ROM_ADDR_L	=	0x0084
                           000085   273 _ROM_ADDR_H	=	0x0085
                           008F8E   274 _ROM_DATA	=	0x8f8e
                           00008E   275 _ROM_DATA_L	=	0x008e
                           00008F   276 _ROM_DATA_H	=	0x008f
                           000086   277 _ROM_CTRL	=	0x0086
                           000090   278 _P1	=	0x0090
                           000092   279 _P1_MOD_OC	=	0x0092
                           000093   280 _P1_DIR_PU	=	0x0093
                           0000A0   281 _P2	=	0x00a0
                           0000B0   282 _P3	=	0x00b0
                           000096   283 _P3_MOD_OC	=	0x0096
                           000097   284 _P3_DIR_PU	=	0x0097
                           0000C6   285 _PIN_FUNC	=	0x00c6
                           0000A2   286 _XBUS_AUX	=	0x00a2
                           000088   287 _TCON	=	0x0088
                           000089   288 _TMOD	=	0x0089
                           00008A   289 _TL0	=	0x008a
                           00008B   290 _TL1	=	0x008b
                           00008C   291 _TH0	=	0x008c
                           00008D   292 _TH1	=	0x008d
                           000098   293 _SCON	=	0x0098
                           000099   294 _SBUF	=	0x0099
                           0000C8   295 _T2CON	=	0x00c8
                           0000C9   296 _T2MOD	=	0x00c9
                           00CBCA   297 _RCAP2	=	0xcbca
                           0000CA   298 _RCAP2L	=	0x00ca
                           0000CB   299 _RCAP2H	=	0x00cb
                           00CDCC   300 _T2COUNT	=	0xcdcc
                           0000CC   301 _TL2	=	0x00cc
                           0000CD   302 _TH2	=	0x00cd
                           00CFCE   303 _T2CAP1	=	0xcfce
                           0000CE   304 _T2CAP1L	=	0x00ce
                           0000CF   305 _T2CAP1H	=	0x00cf
                           00009B   306 _PWM_DATA2	=	0x009b
                           00009C   307 _PWM_DATA1	=	0x009c
                           00009D   308 _PWM_CTRL	=	0x009d
                           00009E   309 _PWM_CK_SE	=	0x009e
                           0000F8   310 _SPI0_STAT	=	0x00f8
                           0000F9   311 _SPI0_DATA	=	0x00f9
                           0000FA   312 _SPI0_CTRL	=	0x00fa
                           0000FB   313 _SPI0_CK_SE	=	0x00fb
                           0000FC   314 _SPI0_SETUP	=	0x00fc
                           0000C0   315 _SCON1	=	0x00c0
                           0000C1   316 _SBUF1	=	0x00c1
                           0000C2   317 _SBAUD1	=	0x00c2
                           000080   318 _ADC_CTRL	=	0x0080
                           00009A   319 _ADC_CFG	=	0x009a
                           00009F   320 _ADC_DATA	=	0x009f
                           0000C3   321 _TKEY_CTRL	=	0x00c3
                           00C5C4   322 _TKEY_DAT	=	0xc5c4
                           0000C4   323 _TKEY_DATL	=	0x00c4
                           0000C5   324 _TKEY_DATH	=	0x00c5
                           000091   325 _USB_C_CTRL	=	0x0091
                           0000D1   326 _UDEV_CTRL	=	0x00d1
                           0000D2   327 _UEP1_CTRL	=	0x00d2
                           0000D3   328 _UEP1_T_LEN	=	0x00d3
                           0000D4   329 _UEP2_CTRL	=	0x00d4
                           0000D5   330 _UEP2_T_LEN	=	0x00d5
                           0000D6   331 _UEP3_CTRL	=	0x00d6
                           0000D7   332 _UEP3_T_LEN	=	0x00d7
                           0000D8   333 _USB_INT_FG	=	0x00d8
                           0000D9   334 _USB_INT_ST	=	0x00d9
                           0000DA   335 _USB_MIS_ST	=	0x00da
                           0000DB   336 _USB_RX_LEN	=	0x00db
                           0000DC   337 _UEP0_CTRL	=	0x00dc
                           0000DD   338 _UEP0_T_LEN	=	0x00dd
                           0000DE   339 _UEP4_CTRL	=	0x00de
                           0000DF   340 _UEP4_T_LEN	=	0x00df
                           0000E1   341 _USB_INT_EN	=	0x00e1
                           0000E2   342 _USB_CTRL	=	0x00e2
                           0000E3   343 _USB_DEV_AD	=	0x00e3
                           00E5E4   344 _UEP2_DMA	=	0xe5e4
                           0000E4   345 _UEP2_DMA_L	=	0x00e4
                           0000E5   346 _UEP2_DMA_H	=	0x00e5
                           00E7E6   347 _UEP3_DMA	=	0xe7e6
                           0000E6   348 _UEP3_DMA_L	=	0x00e6
                           0000E7   349 _UEP3_DMA_H	=	0x00e7
                           0000EA   350 _UEP4_1_MOD	=	0x00ea
                           0000EB   351 _UEP2_3_MOD	=	0x00eb
                           00EDEC   352 _UEP0_DMA	=	0xedec
                           0000EC   353 _UEP0_DMA_L	=	0x00ec
                           0000ED   354 _UEP0_DMA_H	=	0x00ed
                           00EFEE   355 _UEP1_DMA	=	0xefee
                           0000EE   356 _UEP1_DMA_L	=	0x00ee
                           0000EF   357 _UEP1_DMA_H	=	0x00ef
                                    358 ;--------------------------------------------------------
                                    359 ; special function bits
                                    360 ;--------------------------------------------------------
                                    361 	.area RSEG    (ABS,DATA)
      000000                        362 	.org 0x0000
                           0000D7   363 _CY	=	0x00d7
                           0000D6   364 _AC	=	0x00d6
                           0000D5   365 _F0	=	0x00d5
                           0000D4   366 _RS1	=	0x00d4
                           0000D3   367 _RS0	=	0x00d3
                           0000D2   368 _OV	=	0x00d2
                           0000D1   369 _F1	=	0x00d1
                           0000D0   370 _P	=	0x00d0
                           0000AF   371 _EA	=	0x00af
                           0000AE   372 _E_DIS	=	0x00ae
                           0000AD   373 _ET2	=	0x00ad
                           0000AC   374 _ES	=	0x00ac
                           0000AB   375 _ET1	=	0x00ab
                           0000AA   376 _EX1	=	0x00aa
                           0000A9   377 _ET0	=	0x00a9
                           0000A8   378 _EX0	=	0x00a8
                           0000BF   379 _PH_FLAG	=	0x00bf
                           0000BE   380 _PL_FLAG	=	0x00be
                           0000BD   381 _PT2	=	0x00bd
                           0000BC   382 _PS	=	0x00bc
                           0000BB   383 _PT1	=	0x00bb
                           0000BA   384 _PX1	=	0x00ba
                           0000B9   385 _PT0	=	0x00b9
                           0000B8   386 _PX0	=	0x00b8
                           0000EF   387 _IE_WDOG	=	0x00ef
                           0000EE   388 _IE_GPIO	=	0x00ee
                           0000ED   389 _IE_PWMX	=	0x00ed
                           0000EC   390 _IE_UART1	=	0x00ec
                           0000EB   391 _IE_ADC	=	0x00eb
                           0000EA   392 _IE_USB	=	0x00ea
                           0000E9   393 _IE_TKEY	=	0x00e9
                           0000E8   394 _IE_SPI0	=	0x00e8
                           000097   395 _SCK	=	0x0097
                           000097   396 _TXD1	=	0x0097
                           000097   397 _TIN5	=	0x0097
                           000096   398 _MISO	=	0x0096
                           000096   399 _RXD1	=	0x0096
                           000096   400 _TIN4	=	0x0096
                           000095   401 _MOSI	=	0x0095
                           000095   402 _PWM1	=	0x0095
                           000095   403 _TIN3	=	0x0095
                           000095   404 _UCC2	=	0x0095
                           000095   405 _AIN2	=	0x0095
                           000094   406 _T2_	=	0x0094
                           000094   407 _CAP1_	=	0x0094
                           000094   408 _SCS	=	0x0094
                           000094   409 _TIN2	=	0x0094
                           000094   410 _UCC1	=	0x0094
                           000094   411 _AIN1	=	0x0094
                           000093   412 _TXD_	=	0x0093
                           000092   413 _RXD_	=	0x0092
                           000091   414 _T2EX	=	0x0091
                           000091   415 _CAP2	=	0x0091
                           000091   416 _TIN1	=	0x0091
                           000091   417 _VBUS2	=	0x0091
                           000091   418 _AIN0	=	0x0091
                           000090   419 _T2	=	0x0090
                           000090   420 _CAP1	=	0x0090
                           000090   421 _TIN0	=	0x0090
                           0000B7   422 _UDM	=	0x00b7
                           0000B6   423 _UDP	=	0x00b6
                           0000B5   424 _T1	=	0x00b5
                           0000B4   425 _PWM2	=	0x00b4
                           0000B4   426 _RXD1_	=	0x00b4
                           0000B4   427 _T0	=	0x00b4
                           0000B3   428 _INT1	=	0x00b3
                           0000B2   429 _TXD1_	=	0x00b2
                           0000B2   430 _INT0	=	0x00b2
                           0000B2   431 _VBUS1	=	0x00b2
                           0000B2   432 _AIN3	=	0x00b2
                           0000B1   433 _PWM2_	=	0x00b1
                           0000B1   434 _TXD	=	0x00b1
                           0000B0   435 _PWM1_	=	0x00b0
                           0000B0   436 _RXD	=	0x00b0
                           00008F   437 _TF1	=	0x008f
                           00008E   438 _TR1	=	0x008e
                           00008D   439 _TF0	=	0x008d
                           00008C   440 _TR0	=	0x008c
                           00008B   441 _IE1	=	0x008b
                           00008A   442 _IT1	=	0x008a
                           000089   443 _IE0	=	0x0089
                           000088   444 _IT0	=	0x0088
                           00009F   445 _SM0	=	0x009f
                           00009E   446 _SM1	=	0x009e
                           00009D   447 _SM2	=	0x009d
                           00009C   448 _REN	=	0x009c
                           00009B   449 _TB8	=	0x009b
                           00009A   450 _RB8	=	0x009a
                           000099   451 _TI	=	0x0099
                           000098   452 _RI	=	0x0098
                           0000CF   453 _TF2	=	0x00cf
                           0000CF   454 _CAP1F	=	0x00cf
                           0000CE   455 _EXF2	=	0x00ce
                           0000CD   456 _RCLK	=	0x00cd
                           0000CC   457 _TCLK	=	0x00cc
                           0000CB   458 _EXEN2	=	0x00cb
                           0000CA   459 _TR2	=	0x00ca
                           0000C9   460 _C_T2	=	0x00c9
                           0000C8   461 _CP_RL2	=	0x00c8
                           0000FF   462 _S0_FST_ACT	=	0x00ff
                           0000FE   463 _S0_IF_OV	=	0x00fe
                           0000FD   464 _S0_IF_FIRST	=	0x00fd
                           0000FC   465 _S0_IF_BYTE	=	0x00fc
                           0000FB   466 _S0_FREE	=	0x00fb
                           0000FA   467 _S0_T_FIFO	=	0x00fa
                           0000F8   468 _S0_R_FIFO	=	0x00f8
                           0000C7   469 _U1SM0	=	0x00c7
                           0000C5   470 _U1SMOD	=	0x00c5
                           0000C4   471 _U1REN	=	0x00c4
                           0000C3   472 _U1TB8	=	0x00c3
                           0000C2   473 _U1RB8	=	0x00c2
                           0000C1   474 _U1TI	=	0x00c1
                           0000C0   475 _U1RI	=	0x00c0
                           000087   476 _CMPO	=	0x0087
                           000086   477 _CMP_IF	=	0x0086
                           000085   478 _ADC_IF	=	0x0085
                           000084   479 _ADC_START	=	0x0084
                           000083   480 _CMP_CHAN	=	0x0083
                           000081   481 _ADC_CHAN1	=	0x0081
                           000080   482 _ADC_CHAN0	=	0x0080
                           0000DF   483 _U_IS_NAK	=	0x00df
                           0000DE   484 _U_TOG_OK	=	0x00de
                           0000DD   485 _U_SIE_FREE	=	0x00dd
                           0000DC   486 _UIF_FIFO_OV	=	0x00dc
                           0000DB   487 _UIF_HST_SOF	=	0x00db
                           0000DA   488 _UIF_SUSPEND	=	0x00da
                           0000D9   489 _UIF_TRANSFER	=	0x00d9
                           0000D8   490 _UIF_DETECT	=	0x00d8
                           0000D8   491 _UIF_BUS_RST	=	0x00d8
                                    492 ;--------------------------------------------------------
                                    493 ; overlayable register banks
                                    494 ;--------------------------------------------------------
                                    495 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        496 	.ds 8
                                    497 ;--------------------------------------------------------
                                    498 ; internal ram data
                                    499 ;--------------------------------------------------------
                                    500 	.area DSEG    (DATA)
                                    501 ;--------------------------------------------------------
                                    502 ; overlayable items in internal ram
                                    503 ;--------------------------------------------------------
                                    504 	.area	OSEG    (OVR,DATA)
                                    505 ;--------------------------------------------------------
                                    506 ; indirectly addressable internal ram data
                                    507 ;--------------------------------------------------------
                                    508 	.area ISEG    (DATA)
                                    509 ;--------------------------------------------------------
                                    510 ; absolute internal ram data
                                    511 ;--------------------------------------------------------
                                    512 	.area IABS    (ABS,DATA)
                                    513 	.area IABS    (ABS,DATA)
                                    514 ;--------------------------------------------------------
                                    515 ; bit data
                                    516 ;--------------------------------------------------------
                                    517 	.area BSEG    (BIT)
                                    518 ;--------------------------------------------------------
                                    519 ; paged external ram data
                                    520 ;--------------------------------------------------------
                                    521 	.area PSEG    (PAG,XDATA)
                                    522 ;--------------------------------------------------------
                                    523 ; uninitialized external ram data
                                    524 ;--------------------------------------------------------
                                    525 	.area XSEG    (XDATA)
                                    526 ;--------------------------------------------------------
                                    527 ; absolute external ram data
                                    528 ;--------------------------------------------------------
                                    529 	.area XABS    (ABS,XDATA)
                                    530 ;--------------------------------------------------------
                                    531 ; initialized external ram data
                                    532 ;--------------------------------------------------------
                                    533 	.area XISEG   (XDATA)
                                    534 	.area HOME    (CODE)
                                    535 	.area GSINIT0 (CODE)
                                    536 	.area GSINIT1 (CODE)
                                    537 	.area GSINIT2 (CODE)
                                    538 	.area GSINIT3 (CODE)
                                    539 	.area GSINIT4 (CODE)
                                    540 	.area GSINIT5 (CODE)
                                    541 	.area GSINIT  (CODE)
                                    542 	.area GSFINAL (CODE)
                                    543 	.area CSEG    (CODE)
                                    544 ;--------------------------------------------------------
                                    545 ; global & static initialisations
                                    546 ;--------------------------------------------------------
                                    547 	.area HOME    (CODE)
                                    548 	.area GSINIT  (CODE)
                                    549 	.area GSFINAL (CODE)
                                    550 	.area GSINIT  (CODE)
                                    551 ;--------------------------------------------------------
                                    552 ; Home
                                    553 ;--------------------------------------------------------
                                    554 	.area HOME    (CODE)
                                    555 	.area HOME    (CODE)
                                    556 ;--------------------------------------------------------
                                    557 ; code
                                    558 ;--------------------------------------------------------
                                    559 	.area CSEG    (CODE)
                                    560 ;------------------------------------------------------------
                                    561 ;Allocation info for local variables in function 'system_CfgFsys'
                                    562 ;------------------------------------------------------------
                                    563 ;	src\system.c:10: void system_CfgFsys(void)
                                    564 ;	-----------------------------------------
                                    565 ;	 function system_CfgFsys
                                    566 ;	-----------------------------------------
      000654                        567 _system_CfgFsys:
                           000007   568 	ar7 = 0x07
                           000006   569 	ar6 = 0x06
                           000005   570 	ar5 = 0x05
                           000004   571 	ar4 = 0x04
                           000003   572 	ar3 = 0x03
                           000002   573 	ar2 = 0x02
                           000001   574 	ar1 = 0x01
                           000000   575 	ar0 = 0x00
                                    576 ;	src\system.c:12: SAFE_MOD = 0x55;
      000654 75 A1 55         [24]  577 	mov	_SAFE_MOD,#0x55
                                    578 ;	src\system.c:13: SAFE_MOD = 0xAA;
      000657 75 A1 AA         [24]  579 	mov	_SAFE_MOD,#0xaa
                                    580 ;	src\system.c:20: CLOCK_CFG = CLOCK_CFG & ~MASK_SYS_CK_SEL | 0x05; // 16MHz
      00065A 74 F8            [12]  581 	mov	a,#0xf8
      00065C 55 B9            [12]  582 	anl	a,_CLOCK_CFG
      00065E 44 05            [12]  583 	orl	a,#0x05
      000660 F5 B9            [12]  584 	mov	_CLOCK_CFG,a
                                    585 ;	src\system.c:35: SAFE_MOD = 0x00;
      000662 75 A1 00         [24]  586 	mov	_SAFE_MOD,#0x00
                                    587 ;	src\system.c:36: }
      000665 22               [24]  588 	ret
                                    589 ;------------------------------------------------------------
                                    590 ;Allocation info for local variables in function 'mDelayuS'
                                    591 ;------------------------------------------------------------
                                    592 ;n                         Allocated to registers 
                                    593 ;------------------------------------------------------------
                                    594 ;	src\system.c:45: void mDelayuS(uint16_t n) // Delay in uS
                                    595 ;	-----------------------------------------
                                    596 ;	 function mDelayuS
                                    597 ;	-----------------------------------------
      000666                        598 _mDelayuS:
      000666 AE 82            [24]  599 	mov	r6, dpl
      000668 AF 83            [24]  600 	mov	r7, dph
                                    601 ;	src\system.c:58: while (n)
      00066A                        602 00101$:
      00066A EE               [12]  603 	mov	a,r6
      00066B 4F               [12]  604 	orl	a,r7
      00066C 60 0D            [24]  605 	jz	00104$
                                    606 ;	src\system.c:60: ++SAFE_MOD; // 2 Fsys cycles, for higher Fsys, add operation here
      00066E 05 A1            [12]  607 	inc	_SAFE_MOD
                                    608 ;	src\system.c:63: ++SAFE_MOD;
      000670 05 A1            [12]  609 	inc	_SAFE_MOD
                                    610 ;	src\system.c:66: ++SAFE_MOD;
      000672 05 A1            [12]  611 	inc	_SAFE_MOD
                                    612 ;	src\system.c:93: --n;
      000674 1E               [12]  613 	dec	r6
      000675 BE FF 01         [24]  614 	cjne	r6,#0xff,00120$
      000678 1F               [12]  615 	dec	r7
      000679                        616 00120$:
      000679 80 EF            [24]  617 	sjmp	00101$
      00067B                        618 00104$:
                                    619 ;	src\system.c:95: }
      00067B 22               [24]  620 	ret
                                    621 ;------------------------------------------------------------
                                    622 ;Allocation info for local variables in function 'mDelaymS'
                                    623 ;------------------------------------------------------------
                                    624 ;n                         Allocated to registers 
                                    625 ;------------------------------------------------------------
                                    626 ;	src\system.c:104: void mDelaymS(uint16_t n) // Delay in mS
                                    627 ;	-----------------------------------------
                                    628 ;	 function mDelaymS
                                    629 ;	-----------------------------------------
      00067C                        630 _mDelaymS:
      00067C AE 82            [24]  631 	mov	r6, dpl
      00067E AF 83            [24]  632 	mov	r7, dph
                                    633 ;	src\system.c:106: while (n)
      000680                        634 00101$:
      000680 EE               [12]  635 	mov	a,r6
      000681 4F               [12]  636 	orl	a,r7
      000682 60 15            [24]  637 	jz	00104$
                                    638 ;	src\system.c:114: mDelayuS(1000);
      000684 90 03 E8         [24]  639 	mov	dptr,#0x03e8
      000687 C0 07            [24]  640 	push	ar7
      000689 C0 06            [24]  641 	push	ar6
      00068B 12 06 66         [24]  642 	lcall	_mDelayuS
      00068E D0 06            [24]  643 	pop	ar6
      000690 D0 07            [24]  644 	pop	ar7
                                    645 ;	src\system.c:116: --n;
      000692 1E               [12]  646 	dec	r6
      000693 BE FF 01         [24]  647 	cjne	r6,#0xff,00120$
      000696 1F               [12]  648 	dec	r7
      000697                        649 00120$:
      000697 80 E7            [24]  650 	sjmp	00101$
      000699                        651 00104$:
                                    652 ;	src\system.c:118: }
      000699 22               [24]  653 	ret
                                    654 	.area CSEG    (CODE)
                                    655 	.area CONST   (CODE)
                                    656 	.area XINIT   (CODE)
                                    657 	.area CABS    (ABS,CODE)
