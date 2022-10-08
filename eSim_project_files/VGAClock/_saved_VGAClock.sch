EESchema Schematic File Version 2
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:power
LIBS:eSim_Plot
LIBS:transistors
LIBS:conn
LIBS:eSim_User
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:eSim_Analog
LIBS:eSim_Devices
LIBS:eSim_Digital
LIBS:eSim_Hybrid
LIBS:eSim_Miscellaneous
LIBS:eSim_Power
LIBS:eSim_Sources
LIBS:eSim_Subckt
LIBS:eSim_Nghdl
LIBS:eSim_Ngveri
LIBS:eSim_SKY130
LIBS:eSim_SKY130_Subckts
LIBS:VGAClock-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L vishal_clock U1
U 1 1 633EBF4A
P 3550 4000
F 0 "U1" H 6400 5800 60  0000 C CNN
F 1 "vishal_clock" H 6400 6000 60  0000 C CNN
F 2 "" H 6400 5950 60  0000 C CNN
F 3 "" H 6400 5950 60  0000 C CNN
	1    3550 4000
	1    0    0    -1  
$EndComp
$Comp
L pulse v1
U 1 1 633EC022
P 2450 2400
F 0 "v1" H 2250 2500 60  0000 C CNN
F 1 "pulse" H 2250 2350 60  0000 C CNN
F 2 "R1" H 2150 2400 60  0000 C CNN
F 3 "" H 2450 2400 60  0000 C CNN
	1    2450 2400
	1    0    0    -1  
$EndComp
$Comp
L DC v2
U 1 1 633EC09C
P 3000 2650
F 0 "v2" H 2800 2750 60  0000 C CNN
F 1 "DC" H 2800 2600 60  0000 C CNN
F 2 "R1" H 2700 2650 60  0000 C CNN
F 3 "" H 3000 2650 60  0000 C CNN
	1    3000 2650
	1    0    0    -1  
$EndComp
$Comp
L eSim_GND #PWR1
U 1 1 633EC0FD
P 2600 3450
F 0 "#PWR1" H 2600 3200 50  0001 C CNN
F 1 "eSim_GND" H 2600 3300 50  0000 C CNN
F 2 "" H 2600 3450 50  0001 C CNN
F 3 "" H 2600 3450 50  0001 C CNN
	1    2600 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	2450 2850 2450 3450
Wire Wire Line
	2450 3450 4250 3450
Wire Wire Line
	3000 3450 3000 3100
Connection ~ 2600 3450
$Comp
L adc_bridge_5 U2
U 1 1 633EC281
P 4850 2150
F 0 "U2" H 4850 2150 60  0000 C CNN
F 1 "adc_bridge_5" H 4850 2300 60  0000 C CNN
F 2 "" H 4850 2150 60  0000 C CNN
F 3 "" H 4850 2150 60  0000 C CNN
	1    4850 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	5400 2100 5700 2100
Wire Wire Line
	5400 2200 5700 2200
Wire Wire Line
	5400 2300 5700 2300
Wire Wire Line
	5400 2400 5700 2400
Wire Wire Line
	5400 2500 5700 2500
Wire Wire Line
	4250 1950 4250 2100
Wire Wire Line
	3000 2200 4250 2200
Wire Wire Line
	4250 3450 4250 2300
Connection ~ 3000 3450
Connection ~ 4250 2400
Connection ~ 4250 2500
Wire Wire Line
	7100 2200 7300 2200
$Comp
L plot_v1 U4
U 1 1 633EC72F
P 9250 1650
F 0 "U4" H 9250 2150 60  0000 C CNN
F 1 "plot_v1" H 9450 2000 60  0000 C CNN
F 2 "" H 9250 1650 60  0000 C CNN
F 3 "" H 9250 1650 60  0000 C CNN
	1    9250 1650
	1    0    0    -1  
$EndComp
Text GLabel 9000 1600 0    60   Output ~ 0
vsync
$Comp
L plot_v1 U5
U 1 1 633ECB07
P 2900 1950
F 0 "U5" H 2900 2450 60  0000 C CNN
F 1 "plot_v1" H 3100 2300 60  0000 C CNN
F 2 "" H 2900 1950 60  0000 C CNN
F 3 "" H 2900 1950 60  0000 C CNN
	1    2900 1950
	1    0    0    -1  
$EndComp
$Comp
L plot_v1 U6
U 1 1 633ECBD6
P 3750 3000
F 0 "U6" H 3750 3500 60  0000 C CNN
F 1 "plot_v1" H 3450 3500 60  0000 C CNN
F 2 "" H 3750 3000 60  0000 C CNN
F 3 "" H 3750 3000 60  0000 C CNN
	1    3750 3000
	1    0    0    -1  
$EndComp
Text GLabel 2600 1800 0    60   BiDi ~ 0
pul
Text GLabel 3550 3000 0    60   BiDi ~ 0
Dcin
Wire Wire Line
	2600 1800 2900 1800
Wire Wire Line
	2900 1750 2900 1950
Connection ~ 2900 1800
Wire Wire Line
	3550 3000 3850 3000
Wire Wire Line
	3750 3000 3750 2800
Wire Wire Line
	3600 2200 3600 3000
Connection ~ 3600 3000
Connection ~ 3600 2200
$Comp
L SKY130mode scmode1
U 1 1 633ED0C1
P 1100 4200
F 0 "scmode1" H 1100 4350 98  0000 C CNB
F 1 "SKY130mode" H 1100 4100 118 0000 C CNB
F 2 "" H 1100 4350 60  0001 C CNN
F 3 "" H 1100 4350 60  0001 C CNN
	1    1100 4200
	1    0    0    -1  
$EndComp
$Comp
L dac_bridge_8 U3
U 1 1 633EDF33
P 7900 2150
F 0 "U3" H 7900 2150 60  0000 C CNN
F 1 "dac_bridge_8" H 7900 2300 60  0000 C CNN
F 2 "" H 7900 2150 60  0000 C CNN
F 3 "" H 7900 2150 60  0000 C CNN
	1    7900 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	7100 2100 7300 2100
Wire Wire Line
	7100 2300 7300 2300
Wire Wire Line
	7100 2400 7300 2400
Wire Wire Line
	7100 2500 7300 2500
Wire Wire Line
	7100 2600 7300 2600
Wire Wire Line
	7100 2700 7300 2700
Wire Wire Line
	7100 2800 7300 2800
Text GLabel 8150 1450 0    60   Output ~ 0
hsync
Text GLabel 8500 3250 0    60   Output ~ 0
rgb0
Text GLabel 9100 3300 0    60   Output ~ 0
rgb1
Text GLabel 10150 3500 0    60   Output ~ 0
rgb3
Text GLabel 9600 3400 0    60   Output ~ 0
rgb2
Text GLabel 10150 1600 0    60   Output ~ 0
rgb4
Text GLabel 9650 1600 0    60   Output ~ 0
rgb5
$Comp
L plot_v1 U7
U 1 1 633EF84D
P 8600 1650
F 0 "U7" H 8600 2150 60  0000 C CNN
F 1 "plot_v1" H 8800 2000 60  0000 C CNN
F 2 "" H 8600 1650 60  0000 C CNN
F 3 "" H 8600 1650 60  0000 C CNN
	1    8600 1650
	1    0    0    -1  
$EndComp
$Comp
L plot_v1 U11
U 1 1 633EFA2B
P 9800 1650
F 0 "U11" H 9800 2150 60  0000 C CNN
F 1 "plot_v1" H 10000 2000 60  0000 C CNN
F 2 "" H 9800 1650 60  0000 C CNN
F 3 "" H 9800 1650 60  0000 C CNN
	1    9800 1650
	1    0    0    -1  
$EndComp
$Comp
L plot_v1 U12
U 1 1 633EFAA6
P 10300 1650
F 0 "U12" H 10300 2150 60  0000 C CNN
F 1 "plot_v1" H 10500 2000 60  0000 C CNN
F 2 "" H 10300 1650 60  0000 C CNN
F 3 "" H 10300 1650 60  0000 C CNN
	1    10300 1650
	1    0    0    -1  
$EndComp
$Comp
L plot_v1 U10
U 1 1 633F0048
P 9750 3350
F 0 "U10" H 9750 3850 60  0000 C CNN
F 1 "plot_v1" H 9950 3700 60  0000 C CNN
F 2 "" H 9750 3350 60  0000 C CNN
F 3 "" H 9750 3350 60  0000 C CNN
	1    9750 3350
	-1   0    0    1   
$EndComp
$Comp
L plot_v1 U13
U 1 1 633F004E
P 10400 3350
F 0 "U13" H 10400 3850 60  0000 C CNN
F 1 "plot_v1" H 10600 3700 60  0000 C CNN
F 2 "" H 10400 3350 60  0000 C CNN
F 3 "" H 10400 3350 60  0000 C CNN
	1    10400 3350
	-1   0    0    1   
$EndComp
$Comp
L plot_v1 U9
U 1 1 633F0054
P 9200 3350
F 0 "U9" H 9200 3850 60  0000 C CNN
F 1 "plot_v1" H 9400 3700 60  0000 C CNN
F 2 "" H 9200 3350 60  0000 C CNN
F 3 "" H 9200 3350 60  0000 C CNN
	1    9200 3350
	-1   0    0    1   
$EndComp
$Comp
L plot_v1 U8
U 1 1 633F005A
P 8700 3350
F 0 "U8" H 8700 3850 60  0000 C CNN
F 1 "plot_v1" H 8900 3700 60  0000 C CNN
F 2 "" H 8700 3350 60  0000 C CNN
F 3 "" H 8700 3350 60  0000 C CNN
	1    8700 3350
	-1   0    0    1   
$EndComp
Wire Wire Line
	8450 2100 8600 2100
Wire Wire Line
	8600 2100 8600 1450
Wire Wire Line
	8150 1450 8450 1450
Wire Wire Line
	8450 1450 8450 1700
Wire Wire Line
	8450 1700 8600 1700
Connection ~ 8600 1700
Wire Wire Line
	8450 2200 9250 2200
Wire Wire Line
	9250 2200 9250 1450
Wire Wire Line
	9000 1600 9250 1600
Connection ~ 9250 1600
Wire Wire Line
	8450 2300 9800 2300
Wire Wire Line
	9800 2300 9800 1450
Wire Wire Line
	9650 1600 9800 1600
Connection ~ 9800 1600
Wire Wire Line
	8450 2400 10300 2400
Wire Wire Line
	10300 2400 10300 1450
Wire Wire Line
	10150 1600 10300 1600
Connection ~ 10300 1600
Wire Wire Line
	8450 2500 10400 2500
Wire Wire Line
	10400 2500 10400 3550
Wire Wire Line
	10150 3500 10400 3500
Connection ~ 10400 3500
Wire Wire Line
	8450 2600 9750 2600
Wire Wire Line
	9750 2600 9750 3550
Wire Wire Line
	9600 3400 9750 3400
Connection ~ 9750 3400
Wire Wire Line
	8450 2700 9200 2700
Wire Wire Line
	9200 2700 9200 3550
Wire Wire Line
	9100 3300 9200 3300
Connection ~ 9200 3300
Wire Wire Line
	8450 2800 8700 2800
Wire Wire Line
	8700 2800 8700 3550
Wire Wire Line
	8500 3250 8700 3250
Connection ~ 8700 3250
Wire Wire Line
	2450 1950 3200 1950
Connection ~ 2900 1950
Wire Wire Line
	3800 1950 4250 1950
Connection ~ 4000 2200
Wire Wire Line
	4000 1750 4000 2200
Wire Wire Line
	3500 1750 4000 1750
$Comp
L sky130_fd_pr__res_generic_nd SC1
U 1 1 63416EEC
P 3300 1750
F 0 "SC1" H 3450 2037 50  0000 C CNN
F 1 "sky130_fd_pr__res_generic_nd" H 3500 1250 50  0000 R CNN
F 2 "" H 3300 250 50  0001 C CNN
F 3 "" H 3300 1750 50  0001 C CNN
	1    3300 1750
	-1   0    0    1   
$EndComp
Wire Wire Line
	3800 2050 3800 1950
Wire Wire Line
	3200 2050 3800 2050
Wire Wire Line
	3200 1950 3200 2050
Connection ~ 3300 2050
$Comp
L eSim_GND #PWR2
U 1 1 63418C80
P 3300 1450
F 0 "#PWR2" H 3300 1200 50  0001 C CNN
F 1 "eSim_GND" H 3050 1400 50  0000 C CNN
F 2 "" H 3300 1450 50  0001 C CNN
F 3 "" H 3300 1450 50  0001 C CNN
	1    3300 1450
	-1   0    0    1   
$EndComp
Wire Notes Line
	1850 950  1850 3900
Wire Notes Line
	1850 3900 4350 3900
Wire Notes Line
	4350 3900 4350 950 
Wire Notes Line
	4350 950  1850 950 
Wire Notes Line
	5500 900  5500 3850
Wire Notes Line
	5500 3850 7150 3850
Wire Notes Line
	7150 3850 7150 900 
Wire Notes Line
	7150 900  5500 900 
Text Notes 2850 900  0    60   ~ 12
Analog block
Text Notes 6050 850  0    60   ~ 12
Digital block
$Comp
L sky130_fd_pr__res_generic_nd SC2
U 1 1 63419D3E
P 4050 2800
F 0 "SC2" H 4200 3087 50  0000 C CNN
F 1 "sky130_fd_pr__res_generic_nd" H 3850 2450 50  0000 R CNN
F 2 "" H 4050 1300 50  0001 C CNN
F 3 "" H 4050 2800 50  0001 C CNN
	1    4050 2800
	1    0    0    -1  
$EndComp
$Comp
L eSim_GND #PWR3
U 1 1 63419D44
P 4050 3100
F 0 "#PWR3" H 4050 2850 50  0001 C CNN
F 1 "eSim_GND" H 4050 2950 50  0000 C CNN
F 2 "" H 4050 3100 50  0001 C CNN
F 3 "" H 4050 3100 50  0001 C CNN
	1    4050 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	4050 2500 4050 2200
Connection ~ 4050 2200
Wire Wire Line
	3850 3000 3850 2800
Connection ~ 3750 3000
$EndSCHEMATC
