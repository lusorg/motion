#define RF_M0 LATBbits.LATB0
#define RF_M1 LATBbits.LATB1

#define LED_BLUE LATAbits.LATA0 
#define LED_RED  LATBbits.LATB3

#define MOTION_1 PORTBbits.RB2
#define MOTION_2 PORTAbits.RA7

#define AC_POWER PORTAbits.RA1

#define EXTRA LATBbits.LATB5 
#define SIREN LATBbits.LATB4 

//STATUS DEFINITION CHAR
//|b7|b6|b5       |b4               |b3               |b2      |b1   |b0   |
//|   | |         |Alarm_Triggered  |Alarm_Enabled    |AC_POWER|Siren|Extra|


#define STS_4_ALARM_TRI 0b00010000
#define STS_3_ALARM_EN  0b00001000
#define STS_2_AC_POWER  0b00000100
#define STS_1_SIREN     0b00000010
#define STS_0_EXTRA     0b00000001

#define uchar unsigned char