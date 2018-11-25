
# 1 "main.c"

# 18 "C:\Program Files (x86)\Microchip\xc8\v2.00\pic\include\xc.h"
extern const char __xc8_OPTIM_SPEED;

extern double __fpnormalize(double);


# 13 "C:\Program Files (x86)\Microchip\xc8\v2.00\pic\include\c90\xc8debug.h"
#pragma intrinsic(__builtin_software_breakpoint)
extern void __builtin_software_breakpoint(void);

# 52 "C:\Program Files (x86)\Microchip\xc8\v2.00\pic\include\pic18f1330.h"
extern volatile unsigned char PORTA __at(0xF80);

asm("PORTA equ 0F80h");


typedef union {
struct {
unsigned RA0 :1;
unsigned RA1 :1;
unsigned RA2 :1;
unsigned RA3 :1;
unsigned RA4 :1;
unsigned RA5 :1;
unsigned RA6 :1;
unsigned RA7 :1;
};
struct {
unsigned AN0 :1;
unsigned AN1 :1;
unsigned TX :1;
unsigned RX :1;
unsigned AN2 :1;
unsigned MCLR :1;
unsigned OSC2 :1;
unsigned OSC1 :1;
};
struct {
unsigned INT0 :1;
unsigned INT1 :1;
unsigned CK :1;
unsigned DT :1;
unsigned T0CKI :1;
unsigned :1;
unsigned CLKO :1;
unsigned CLKI :1;
};
struct {
unsigned KBI0 :1;
unsigned KBI1 :1;
unsigned :2;
unsigned VREFP :1;
unsigned :1;
unsigned T1OSO :1;
unsigned T1OSI :1;
};
struct {
unsigned :5;
unsigned NOT_MCLR :1;
};
struct {
unsigned CMP0 :1;
unsigned :4;
unsigned nMCLR :1;
unsigned AN3 :1;
};
struct {
unsigned :6;
unsigned T1CKI :1;
};
struct {
unsigned ULPWUIN :1;
unsigned :4;
unsigned LVDIN :1;
unsigned :1;
unsigned RJPU :1;
};
} PORTAbits_t;
extern volatile PORTAbits_t PORTAbits __at(0xF80);

# 304
extern volatile unsigned char PORTB __at(0xF81);

asm("PORTB equ 0F81h");


typedef union {
struct {
unsigned RB0 :1;
unsigned RB1 :1;
unsigned RB2 :1;
unsigned RB3 :1;
unsigned RB4 :1;
unsigned RB5 :1;
unsigned RB6 :1;
unsigned RB7 :1;
};
struct {
unsigned PWM0 :1;
unsigned PWM1 :1;
unsigned INT2 :1;
unsigned INT3 :1;
unsigned PWM2 :1;
unsigned PWM3 :1;
unsigned PWM4 :1;
unsigned PWM5 :1;
};
struct {
unsigned :2;
unsigned KBI2 :1;
unsigned KBI3 :1;
unsigned :2;
unsigned PGC :1;
unsigned PGD :1;
};
struct {
unsigned :2;
unsigned CMP2 :1;
unsigned CMP1 :1;
};
struct {
unsigned :2;
unsigned T1OSO :1;
unsigned T1OSI :1;
};
struct {
unsigned :2;
unsigned T1CKI :1;
};
struct {
unsigned :3;
unsigned CCP2_PA2 :1;
};
} PORTBbits_t;
extern volatile PORTBbits_t PORTBbits __at(0xF81);

# 492
extern volatile unsigned char OVDCONS __at(0xF82);

asm("OVDCONS equ 0F82h");


typedef union {
struct {
unsigned POUT :6;
};
struct {
unsigned POUT0 :1;
unsigned POUT1 :1;
unsigned POUT2 :1;
unsigned POUT3 :1;
unsigned POUT4 :1;
unsigned POUT5 :1;
};
} OVDCONSbits_t;
extern volatile OVDCONSbits_t OVDCONSbits __at(0xF82);

# 550
extern volatile unsigned char OVDCOND __at(0xF83);

asm("OVDCOND equ 0F83h");


typedef union {
struct {
unsigned POVD :6;
};
struct {
unsigned POVD0 :1;
unsigned POVD1 :1;
unsigned POVD2 :1;
unsigned POVD3 :1;
unsigned POVD4 :1;
unsigned POVD5 :1;
};
} OVDCONDbits_t;
extern volatile OVDCONDbits_t OVDCONDbits __at(0xF83);

# 608
extern volatile unsigned char DTCON __at(0xF84);

asm("DTCON equ 0F84h");


typedef union {
struct {
unsigned DTA :6;
unsigned DTAPS :2;
};
struct {
unsigned DT0 :1;
unsigned DT1 :1;
unsigned DT2 :1;
unsigned DT3 :1;
unsigned DT4 :1;
unsigned DT5 :1;
unsigned DTPS0 :1;
unsigned DTPS1 :1;
};
} DTCONbits_t;
extern volatile DTCONbits_t DTCONbits __at(0xF84);

# 684
extern volatile unsigned char PWMCON1 __at(0xF85);

asm("PWMCON1 equ 0F85h");


typedef union {
struct {
unsigned OSYNC :1;
unsigned UDIS :1;
unsigned :1;
unsigned SEVTDIR :1;
unsigned SEVOPS :4;
};
struct {
unsigned :4;
unsigned SEVOPS0 :1;
unsigned SEVOPS1 :1;
unsigned SEVOPS2 :1;
unsigned SEVOPS3 :1;
};
} PWMCON1bits_t;
extern volatile PWMCON1bits_t PWMCON1bits __at(0xF85);

# 750
extern volatile unsigned char PWMCON0 __at(0xF86);

asm("PWMCON0 equ 0F86h");


typedef union {
struct {
unsigned PMOD :3;
unsigned :1;
unsigned PWMEN :3;
};
struct {
unsigned PMOD0 :1;
unsigned PMOD1 :1;
unsigned PMOD2 :1;
unsigned :1;
unsigned PWMEN0 :1;
unsigned PWMEN1 :1;
unsigned PWMEN2 :1;
};
} PWMCON0bits_t;
extern volatile PWMCON0bits_t PWMCON0bits __at(0xF86);

# 816
extern volatile unsigned char SEVTCMPH __at(0xF87);

asm("SEVTCMPH equ 0F87h");


typedef union {
struct {
unsigned SEVTCMPH :4;
};
} SEVTCMPHbits_t;
extern volatile SEVTCMPHbits_t SEVTCMPHbits __at(0xF87);

# 836
extern volatile unsigned char SEVTCMPL __at(0xF88);

asm("SEVTCMPL equ 0F88h");


typedef union {
struct {
unsigned SEVTCMPL :8;
};
} SEVTCMPLbits_t;
extern volatile SEVTCMPLbits_t SEVTCMPLbits __at(0xF88);

# 856
extern volatile unsigned char LATA __at(0xF89);

asm("LATA equ 0F89h");


typedef union {
struct {
unsigned LATA0 :1;
unsigned LATA1 :1;
unsigned LATA2 :1;
unsigned LATA3 :1;
unsigned LATA4 :1;
unsigned LATA5 :1;
unsigned LATA6 :1;
unsigned LATA7 :1;
};
struct {
unsigned LA0 :1;
unsigned LA1 :1;
unsigned LA2 :1;
unsigned LA3 :1;
unsigned LA4 :1;
unsigned LA5 :1;
unsigned LA6 :1;
unsigned LA7 :1;
};
} LATAbits_t;
extern volatile LATAbits_t LATAbits __at(0xF89);

# 968
extern volatile unsigned char LATB __at(0xF8A);

asm("LATB equ 0F8Ah");


typedef union {
struct {
unsigned LATB0 :1;
unsigned LATB1 :1;
unsigned LATB2 :1;
unsigned LATB3 :1;
unsigned LATB4 :1;
unsigned LATB5 :1;
unsigned LATB6 :1;
unsigned LATB7 :1;
};
struct {
unsigned LB0 :1;
unsigned LB1 :1;
unsigned LB2 :1;
unsigned LB3 :1;
unsigned LB4 :1;
unsigned LB5 :1;
unsigned LB6 :1;
unsigned LB7 :1;
};
} LATBbits_t;
extern volatile LATBbits_t LATBbits __at(0xF8A);

# 1080
extern volatile unsigned char FLTCONFIG __at(0xF8B);

asm("FLTCONFIG equ 0F8Bh");


typedef union {
struct {
unsigned FLTAEN :1;
unsigned FLTAMOD :1;
unsigned FLTAS :1;
unsigned :4;
unsigned BRFEN :1;
};
} FLTCONFIGbits_t;
extern volatile FLTCONFIGbits_t FLTCONFIGbits __at(0xF8B);

# 1119
extern volatile unsigned char PDC2H __at(0xF8C);

asm("PDC2H equ 0F8Ch");


typedef union {
struct {
unsigned PDC2H :6;
};
} PDC2Hbits_t;
extern volatile PDC2Hbits_t PDC2Hbits __at(0xF8C);

# 1139
extern volatile unsigned char PDC2L __at(0xF8D);

asm("PDC2L equ 0F8Dh");


typedef union {
struct {
unsigned PDC2L :8;
};
} PDC2Lbits_t;
extern volatile PDC2Lbits_t PDC2Lbits __at(0xF8D);

# 1159
extern volatile unsigned char PDC1H __at(0xF8E);

asm("PDC1H equ 0F8Eh");


typedef union {
struct {
unsigned PDC1H :6;
};
} PDC1Hbits_t;
extern volatile PDC1Hbits_t PDC1Hbits __at(0xF8E);

# 1179
extern volatile unsigned char PDC1L __at(0xF8F);

asm("PDC1L equ 0F8Fh");


typedef union {
struct {
unsigned PDC1L :8;
};
} PDC1Lbits_t;
extern volatile PDC1Lbits_t PDC1Lbits __at(0xF8F);

# 1199
extern volatile unsigned char PDC0H __at(0xF90);

asm("PDC0H equ 0F90h");


typedef union {
struct {
unsigned PDC0H :6;
};
} PDC0Hbits_t;
extern volatile PDC0Hbits_t PDC0Hbits __at(0xF90);

# 1219
extern volatile unsigned char PDC0L __at(0xF91);

asm("PDC0L equ 0F91h");


typedef union {
struct {
unsigned PDC0L :8;
};
} PDC0Lbits_t;
extern volatile PDC0Lbits_t PDC0Lbits __at(0xF91);

# 1239
extern volatile unsigned char TRISA __at(0xF92);

asm("TRISA equ 0F92h");


extern volatile unsigned char DDRA __at(0xF92);

asm("DDRA equ 0F92h");


typedef union {
struct {
unsigned TRISA0 :1;
unsigned TRISA1 :1;
unsigned TRISA2 :1;
unsigned TRISA3 :1;
unsigned TRISA4 :1;
unsigned TRISA5 :1;
unsigned TRISA6 :1;
unsigned TRISA7 :1;
};
struct {
unsigned RA0 :1;
unsigned RA1 :1;
unsigned RA2 :1;
unsigned RA3 :1;
unsigned RA4 :1;
unsigned RA5 :1;
unsigned RA6 :1;
unsigned RA7 :1;
};
} TRISAbits_t;
extern volatile TRISAbits_t TRISAbits __at(0xF92);

# 1354
typedef union {
struct {
unsigned TRISA0 :1;
unsigned TRISA1 :1;
unsigned TRISA2 :1;
unsigned TRISA3 :1;
unsigned TRISA4 :1;
unsigned TRISA5 :1;
unsigned TRISA6 :1;
unsigned TRISA7 :1;
};
struct {
unsigned RA0 :1;
unsigned RA1 :1;
unsigned RA2 :1;
unsigned RA3 :1;
unsigned RA4 :1;
unsigned RA5 :1;
unsigned RA6 :1;
unsigned RA7 :1;
};
} DDRAbits_t;
extern volatile DDRAbits_t DDRAbits __at(0xF92);

# 1461
extern volatile unsigned char TRISB __at(0xF93);

asm("TRISB equ 0F93h");


extern volatile unsigned char DDRB __at(0xF93);

asm("DDRB equ 0F93h");


typedef union {
struct {
unsigned TRISB0 :1;
unsigned TRISB1 :1;
unsigned TRISB2 :1;
unsigned TRISB3 :1;
unsigned TRISB4 :1;
unsigned TRISB5 :1;
unsigned TRISB6 :1;
unsigned TRISB7 :1;
};
struct {
unsigned RB0 :1;
unsigned RB1 :1;
unsigned RB2 :1;
unsigned RB3 :1;
unsigned RB4 :1;
unsigned RB5 :1;
unsigned RB6 :1;
unsigned RB7 :1;
};
} TRISBbits_t;
extern volatile TRISBbits_t TRISBbits __at(0xF93);

# 1576
typedef union {
struct {
unsigned TRISB0 :1;
unsigned TRISB1 :1;
unsigned TRISB2 :1;
unsigned TRISB3 :1;
unsigned TRISB4 :1;
unsigned TRISB5 :1;
unsigned TRISB6 :1;
unsigned TRISB7 :1;
};
struct {
unsigned RB0 :1;
unsigned RB1 :1;
unsigned RB2 :1;
unsigned RB3 :1;
unsigned RB4 :1;
unsigned RB5 :1;
unsigned RB6 :1;
unsigned RB7 :1;
};
} DDRBbits_t;
extern volatile DDRBbits_t DDRBbits __at(0xF93);

# 1683
extern volatile unsigned char PTPERH __at(0xF95);

asm("PTPERH equ 0F95h");


typedef union {
struct {
unsigned PTPERH :4;
};
} PTPERHbits_t;
extern volatile PTPERHbits_t PTPERHbits __at(0xF95);

# 1703
extern volatile unsigned char PTPERL __at(0xF96);

asm("PTPERL equ 0F96h");


typedef union {
struct {
unsigned PTPERL :8;
};
} PTPERLbits_t;
extern volatile PTPERLbits_t PTPERLbits __at(0xF96);

# 1723
extern volatile unsigned char PTMRH __at(0xF97);

asm("PTMRH equ 0F97h");


typedef union {
struct {
unsigned PTMRH :4;
};
} PTMRHbits_t;
extern volatile PTMRHbits_t PTMRHbits __at(0xF97);

# 1743
extern volatile unsigned char PTMRL __at(0xF98);

asm("PTMRL equ 0F98h");


typedef union {
struct {
unsigned PTMRL :8;
};
} PTMRLbits_t;
extern volatile PTMRLbits_t PTMRLbits __at(0xF98);

# 1763
extern volatile unsigned char PTCON1 __at(0xF99);

asm("PTCON1 equ 0F99h");


typedef union {
struct {
unsigned :6;
unsigned PTDIR :1;
unsigned PTEN :1;
};
} PTCON1bits_t;
extern volatile PTCON1bits_t PTCON1bits __at(0xF99);

# 1790
extern volatile unsigned char PTCON0 __at(0xF9A);

asm("PTCON0 equ 0F9Ah");


typedef union {
struct {
unsigned PTMOD :2;
unsigned PTCKPS :2;
unsigned PTOPS :4;
};
struct {
unsigned PTMOD0 :1;
unsigned PTMOD1 :1;
unsigned PTCKPS0 :1;
unsigned PTCKPS1 :1;
unsigned PTOPS0 :1;
unsigned PTOPS1 :1;
unsigned PTOPS2 :1;
unsigned PTOPS3 :1;
};
} PTCON0bits_t;
extern volatile PTCON0bits_t PTCON0bits __at(0xF9A);

# 1872
extern volatile unsigned char OSCTUNE __at(0xF9B);

asm("OSCTUNE equ 0F9Bh");


typedef union {
struct {
unsigned TUN :5;
unsigned :1;
unsigned PLLEN :1;
unsigned INTSRC :1;
};
struct {
unsigned TUN0 :1;
unsigned TUN1 :1;
unsigned TUN2 :1;
unsigned TUN3 :1;
unsigned TUN4 :1;
};
} OSCTUNEbits_t;
extern volatile OSCTUNEbits_t OSCTUNEbits __at(0xF9B);

# 1937
extern volatile unsigned char PIE1 __at(0xF9D);

asm("PIE1 equ 0F9Dh");


typedef union {
struct {
unsigned TMR1IE :1;
unsigned CMP0IE :1;
unsigned CMP1IE :1;
unsigned CMP2IE :1;
unsigned TXIE :1;
unsigned RCIE :1;
unsigned ADIE :1;
};
struct {
unsigned :4;
unsigned TX1IE :1;
unsigned RC1IE :1;
};
} PIE1bits_t;
extern volatile PIE1bits_t PIE1bits __at(0xF9D);

# 2008
extern volatile unsigned char PIR1 __at(0xF9E);

asm("PIR1 equ 0F9Eh");


typedef union {
struct {
unsigned TMR1IF :1;
unsigned CMP0IF :1;
unsigned CMP1IF :1;
unsigned CMP2IF :1;
unsigned TXIF :1;
unsigned RCIF :1;
unsigned ADIF :1;
};
struct {
unsigned :4;
unsigned TX1IF :1;
unsigned RC1IF :1;
};
} PIR1bits_t;
extern volatile PIR1bits_t PIR1bits __at(0xF9E);

# 2079
extern volatile unsigned char IPR1 __at(0xF9F);

asm("IPR1 equ 0F9Fh");


typedef union {
struct {
unsigned TMR1IP :1;
unsigned CMP0IP :1;
unsigned CMP1IP :1;
unsigned CMP2IP :1;
unsigned TXIP :1;
unsigned RCIP :1;
unsigned ADIP :1;
};
struct {
unsigned :4;
unsigned TX1IP :1;
unsigned RC1IP :1;
};
} IPR1bits_t;
extern volatile IPR1bits_t IPR1bits __at(0xF9F);

# 2150
extern volatile unsigned char PIE2 __at(0xFA0);

asm("PIE2 equ 0FA0h");


typedef union {
struct {
unsigned :2;
unsigned LVDIE :1;
unsigned :1;
unsigned EEIE :1;
unsigned :2;
unsigned OSCFIE :1;
};
} PIE2bits_t;
extern volatile PIE2bits_t PIE2bits __at(0xFA0);

# 2185
extern volatile unsigned char PIR2 __at(0xFA1);

asm("PIR2 equ 0FA1h");


typedef union {
struct {
unsigned :2;
unsigned LVDIF :1;
unsigned :1;
unsigned EEIF :1;
unsigned :2;
unsigned OSCFIF :1;
};
} PIR2bits_t;
extern volatile PIR2bits_t PIR2bits __at(0xFA1);

# 2220
extern volatile unsigned char IPR2 __at(0xFA2);

asm("IPR2 equ 0FA2h");


typedef union {
struct {
unsigned :2;
unsigned LVDIP :1;
unsigned :1;
unsigned EEIP :1;
unsigned :2;
unsigned OSCFIP :1;
};
} IPR2bits_t;
extern volatile IPR2bits_t IPR2bits __at(0xFA2);

# 2255
extern volatile unsigned char PIE3 __at(0xFA3);

asm("PIE3 equ 0FA3h");


typedef union {
struct {
unsigned :4;
unsigned PTIE :1;
};
struct {
unsigned :4;
unsigned TXB2IE :1;
};
struct {
unsigned :4;
unsigned TXBNIE :1;
};
} PIE3bits_t;
extern volatile PIE3bits_t PIE3bits __at(0xFA3);

# 2294
extern volatile unsigned char PIR3 __at(0xFA4);

asm("PIR3 equ 0FA4h");


typedef union {
struct {
unsigned :4;
unsigned PTIF :1;
};
struct {
unsigned :4;
unsigned TXBNIF :1;
};
} PIR3bits_t;
extern volatile PIR3bits_t PIR3bits __at(0xFA4);

# 2324
extern volatile unsigned char IPR3 __at(0xFA5);

asm("IPR3 equ 0FA5h");


typedef union {
struct {
unsigned :4;
unsigned PTIP :1;
};
struct {
unsigned :4;
unsigned TXBNIP :1;
};
} IPR3bits_t;
extern volatile IPR3bits_t IPR3bits __at(0xFA5);

# 2354
extern volatile unsigned char EECON1 __at(0xFA6);

asm("EECON1 equ 0FA6h");


typedef union {
struct {
unsigned RD :1;
unsigned WR :1;
unsigned WREN :1;
unsigned WRERR :1;
unsigned FREE :1;
unsigned :1;
unsigned CFGS :1;
unsigned EEPGD :1;
};
struct {
unsigned :6;
unsigned EEFS :1;
};
} EECON1bits_t;
extern volatile EECON1bits_t EECON1bits __at(0xFA6);

# 2420
extern volatile unsigned char EECON2 __at(0xFA7);

asm("EECON2 equ 0FA7h");




extern volatile unsigned char EEDATA __at(0xFA8);

asm("EEDATA equ 0FA8h");




extern volatile unsigned char EEADR __at(0xFA9);

asm("EEADR equ 0FA9h");




extern volatile unsigned char RCSTA __at(0xFAB);

asm("RCSTA equ 0FABh");


extern volatile unsigned char RCSTA1 __at(0xFAB);

asm("RCSTA1 equ 0FABh");


typedef union {
struct {
unsigned RX9D :1;
unsigned OERR :1;
unsigned FERR :1;
unsigned ADEN :1;
unsigned CREN :1;
unsigned SREN :1;
unsigned RX9 :1;
unsigned SPEN :1;
};
struct {
unsigned :3;
unsigned ADDEN :1;
};
struct {
unsigned :5;
unsigned SRENA :1;
};
struct {
unsigned :6;
unsigned RC8_9 :1;
};
struct {
unsigned :6;
unsigned RC9 :1;
};
struct {
unsigned RCD8 :1;
};
} RCSTAbits_t;
extern volatile RCSTAbits_t RCSTAbits __at(0xFAB);

# 2550
typedef union {
struct {
unsigned RX9D :1;
unsigned OERR :1;
unsigned FERR :1;
unsigned ADEN :1;
unsigned CREN :1;
unsigned SREN :1;
unsigned RX9 :1;
unsigned SPEN :1;
};
struct {
unsigned :3;
unsigned ADDEN :1;
};
struct {
unsigned :5;
unsigned SRENA :1;
};
struct {
unsigned :6;
unsigned RC8_9 :1;
};
struct {
unsigned :6;
unsigned RC9 :1;
};
struct {
unsigned RCD8 :1;
};
} RCSTA1bits_t;
extern volatile RCSTA1bits_t RCSTA1bits __at(0xFAB);

# 2651
extern volatile unsigned char TXSTA __at(0xFAC);

asm("TXSTA equ 0FACh");


extern volatile unsigned char TXSTA1 __at(0xFAC);

asm("TXSTA1 equ 0FACh");


typedef union {
struct {
unsigned TX9D :1;
unsigned TRMT :1;
unsigned BRGH :1;
unsigned SENDB :1;
unsigned SYNC :1;
unsigned TXEN :1;
unsigned TX9 :1;
unsigned CSRC :1;
};
struct {
unsigned TX9D1 :1;
unsigned TRMT1 :1;
unsigned BRGH1 :1;
unsigned SENDB1 :1;
unsigned SYNC1 :1;
unsigned TXEN1 :1;
unsigned TX91 :1;
unsigned CSRC1 :1;
};
struct {
unsigned :6;
unsigned TX8_9 :1;
};
struct {
unsigned TXD8 :1;
};
} TXSTAbits_t;
extern volatile TXSTAbits_t TXSTAbits __at(0xFAC);

# 2783
typedef union {
struct {
unsigned TX9D :1;
unsigned TRMT :1;
unsigned BRGH :1;
unsigned SENDB :1;
unsigned SYNC :1;
unsigned TXEN :1;
unsigned TX9 :1;
unsigned CSRC :1;
};
struct {
unsigned TX9D1 :1;
unsigned TRMT1 :1;
unsigned BRGH1 :1;
unsigned SENDB1 :1;
unsigned SYNC1 :1;
unsigned TXEN1 :1;
unsigned TX91 :1;
unsigned CSRC1 :1;
};
struct {
unsigned :6;
unsigned TX8_9 :1;
};
struct {
unsigned TXD8 :1;
};
} TXSTA1bits_t;
extern volatile TXSTA1bits_t TXSTA1bits __at(0xFAC);

# 2907
extern volatile unsigned char TXREG __at(0xFAD);

asm("TXREG equ 0FADh");


extern volatile unsigned char TXREG1 __at(0xFAD);

asm("TXREG1 equ 0FADh");




extern volatile unsigned char RCREG __at(0xFAE);

asm("RCREG equ 0FAEh");


extern volatile unsigned char RCREG1 __at(0xFAE);

asm("RCREG1 equ 0FAEh");




extern volatile unsigned char SPBRG __at(0xFAF);

asm("SPBRG equ 0FAFh");


extern volatile unsigned char SPBRG1 __at(0xFAF);

asm("SPBRG1 equ 0FAFh");




extern volatile unsigned char SPBRGH __at(0xFB0);

asm("SPBRGH equ 0FB0h");




extern volatile unsigned char CMCON __at(0xFB4);

asm("CMCON equ 0FB4h");


typedef union {
struct {
unsigned CMEN :3;
unsigned :2;
unsigned C0OUT :1;
unsigned C1OUT :1;
unsigned C2OUT :1;
};
struct {
unsigned CMEN0 :1;
unsigned CMEN1 :1;
unsigned CMEN2 :1;
};
struct {
unsigned CM0 :1;
unsigned CM1 :1;
unsigned CM2 :1;
unsigned :2;
unsigned C2INV :1;
};
} CMCONbits_t;
extern volatile CMCONbits_t CMCONbits __at(0xFB4);

# 3036
extern volatile unsigned char CVRCON __at(0xFB5);

asm("CVRCON equ 0FB5h");


typedef union {
struct {
unsigned CVR :4;
unsigned CVRSS :1;
unsigned CVRR :1;
unsigned :1;
unsigned CVREN :1;
};
struct {
unsigned CVR0 :1;
unsigned CVR1 :1;
unsigned CVR2 :1;
unsigned CVR3 :1;
unsigned CVREF :1;
};
} CVRCONbits_t;
extern volatile CVRCONbits_t CVRCONbits __at(0xFB5);

# 3107
extern volatile unsigned char BAUDCON __at(0xFB8);

asm("BAUDCON equ 0FB8h");


extern volatile unsigned char BAUDCTL __at(0xFB8);

asm("BAUDCTL equ 0FB8h");


typedef union {
struct {
unsigned ABDEN :1;
unsigned WUE :1;
unsigned :1;
unsigned BRG16 :1;
unsigned TXCKP :1;
unsigned RXDTP :1;
unsigned RCIDL :1;
unsigned ABDOVF :1;
};
struct {
unsigned :4;
unsigned SCKP :1;
unsigned :1;
unsigned RCMT :1;
};
struct {
unsigned :5;
unsigned RXCKP :1;
};
struct {
unsigned :1;
unsigned W4E :1;
};
} BAUDCONbits_t;
extern volatile BAUDCONbits_t BAUDCONbits __at(0xFB8);

# 3201
typedef union {
struct {
unsigned ABDEN :1;
unsigned WUE :1;
unsigned :1;
unsigned BRG16 :1;
unsigned TXCKP :1;
unsigned RXDTP :1;
unsigned RCIDL :1;
unsigned ABDOVF :1;
};
struct {
unsigned :4;
unsigned SCKP :1;
unsigned :1;
unsigned RCMT :1;
};
struct {
unsigned :5;
unsigned RXCKP :1;
};
struct {
unsigned :1;
unsigned W4E :1;
};
} BAUDCTLbits_t;
extern volatile BAUDCTLbits_t BAUDCTLbits __at(0xFB8);

# 3287
extern volatile unsigned char ADCON2 __at(0xFC0);

asm("ADCON2 equ 0FC0h");


typedef union {
struct {
unsigned ADCS :3;
unsigned ACQT :3;
unsigned :1;
unsigned ADFM :1;
};
struct {
unsigned ADCS0 :1;
unsigned ADCS1 :1;
unsigned ADCS2 :1;
unsigned ACQT0 :1;
unsigned ACQT1 :1;
unsigned ACQT2 :1;
};
} ADCON2bits_t;
extern volatile ADCON2bits_t ADCON2bits __at(0xFC0);

# 3358
extern volatile unsigned char ADCON1 __at(0xFC1);

asm("ADCON1 equ 0FC1h");


typedef union {
struct {
unsigned PCFG :4;
unsigned VCFG :1;
};
struct {
unsigned PCFG0 :1;
unsigned PCFG1 :1;
unsigned PCFG2 :1;
unsigned PCFG3 :1;
unsigned VCFG0 :1;
};
struct {
unsigned :3;
unsigned CHSN3 :1;
unsigned VCFG01 :1;
};
} ADCON1bits_t;
extern volatile ADCON1bits_t ADCON1bits __at(0xFC1);

# 3431
extern volatile unsigned char ADCON0 __at(0xFC2);

asm("ADCON0 equ 0FC2h");


typedef union {
struct {
unsigned :1;
unsigned GO_NOT_DONE :1;
};
struct {
unsigned ADON :1;
unsigned GO_nDONE :1;
unsigned CHS :2;
unsigned :3;
unsigned SEVTEN :1;
};
struct {
unsigned :1;
unsigned GO :1;
unsigned CHS0 :1;
unsigned CHS1 :1;
};
struct {
unsigned :1;
unsigned DONE :1;
};
struct {
unsigned :1;
unsigned NOT_DONE :1;
};
struct {
unsigned :1;
unsigned nDONE :1;
};
struct {
unsigned :1;
unsigned GO_DONE :1;
};
struct {
unsigned :1;
unsigned GODONE :1;
unsigned :5;
unsigned ADCAL :1;
};
} ADCON0bits_t;
extern volatile ADCON0bits_t ADCON0bits __at(0xFC2);

# 3552
extern volatile unsigned short ADRES __at(0xFC3);

asm("ADRES equ 0FC3h");




extern volatile unsigned char ADRESL __at(0xFC3);

asm("ADRESL equ 0FC3h");




extern volatile unsigned char ADRESH __at(0xFC4);

asm("ADRESH equ 0FC4h");




extern volatile unsigned char T1CON __at(0xFCD);

asm("T1CON equ 0FCDh");


typedef union {
struct {
unsigned :2;
unsigned NOT_T1SYNC :1;
};
struct {
unsigned TMR1ON :1;
unsigned TMR1CS :1;
unsigned nT1SYNC :1;
unsigned T1OSCEN :1;
unsigned T1CKPS :2;
unsigned T1RUN :1;
unsigned RD16 :1;
};
struct {
unsigned :4;
unsigned T1CKPS0 :1;
unsigned T1CKPS1 :1;
};
struct {
unsigned :2;
unsigned T1SYNC :1;
};
struct {
unsigned :3;
unsigned SOSCEN :1;
unsigned :3;
unsigned T1RD16 :1;
};
} T1CONbits_t;
extern volatile T1CONbits_t T1CONbits __at(0xFCD);

# 3678
extern volatile unsigned short TMR1 __at(0xFCE);

asm("TMR1 equ 0FCEh");




extern volatile unsigned char TMR1L __at(0xFCE);

asm("TMR1L equ 0FCEh");




extern volatile unsigned char TMR1H __at(0xFCF);

asm("TMR1H equ 0FCFh");




extern volatile unsigned char RCON __at(0xFD0);

asm("RCON equ 0FD0h");


typedef union {
struct {
unsigned NOT_BOR :1;
};
struct {
unsigned :1;
unsigned NOT_POR :1;
};
struct {
unsigned :2;
unsigned NOT_PD :1;
};
struct {
unsigned :3;
unsigned NOT_TO :1;
};
struct {
unsigned :4;
unsigned NOT_RI :1;
};
struct {
unsigned nBOR :1;
unsigned nPOR :1;
unsigned nPD :1;
unsigned nTO :1;
unsigned nRI :1;
unsigned :1;
unsigned SBOREN :1;
unsigned IPEN :1;
};
struct {
unsigned BOR :1;
unsigned POR :1;
unsigned PD :1;
unsigned TO :1;
unsigned RI :1;
};
} RCONbits_t;
extern volatile RCONbits_t RCONbits __at(0xFD0);

# 3832
extern volatile unsigned char WDTCON __at(0xFD1);

asm("WDTCON equ 0FD1h");


typedef union {
struct {
unsigned SWDTEN :1;
};
struct {
unsigned SWDTE :1;
};
} WDTCONbits_t;
extern volatile WDTCONbits_t WDTCONbits __at(0xFD1);

# 3860
extern volatile unsigned char LVDCON __at(0xFD2);

asm("LVDCON equ 0FD2h");


typedef union {
struct {
unsigned LVDL :4;
unsigned LVDEN :1;
unsigned IRVST :1;
};
struct {
unsigned LVDL0 :1;
unsigned LVDL1 :1;
unsigned LVDL2 :1;
unsigned LVDL3 :1;
unsigned :1;
unsigned IVRST :1;
};
} LVDCONbits_t;
extern volatile LVDCONbits_t LVDCONbits __at(0xFD2);

# 3925
extern volatile unsigned char OSCCON __at(0xFD3);

asm("OSCCON equ 0FD3h");


typedef union {
struct {
unsigned SCS :2;
unsigned IOFS :1;
unsigned OSTS :1;
unsigned IRCF :3;
unsigned IDLEN :1;
};
struct {
unsigned SCS0 :1;
unsigned SCS1 :1;
unsigned FLTS :1;
unsigned :1;
unsigned IRCF0 :1;
unsigned IRCF1 :1;
unsigned IRCF2 :1;
};
} OSCCONbits_t;
extern volatile OSCCONbits_t OSCCONbits __at(0xFD3);

# 4008
extern volatile unsigned char T0CON __at(0xFD5);

asm("T0CON equ 0FD5h");


typedef union {
struct {
unsigned T0PS :3;
unsigned PSA :1;
unsigned T0SE :1;
unsigned T0CS :1;
unsigned T016BIT :1;
unsigned TMR0ON :1;
};
struct {
unsigned T0PS0 :1;
unsigned T0PS1 :1;
unsigned T0PS2 :1;
};
struct {
unsigned :6;
unsigned T08BIT :1;
};
} T0CONbits_t;
extern volatile T0CONbits_t T0CONbits __at(0xFD5);

# 4087
extern volatile unsigned short TMR0 __at(0xFD6);

asm("TMR0 equ 0FD6h");




extern volatile unsigned char TMR0L __at(0xFD6);

asm("TMR0L equ 0FD6h");




extern volatile unsigned char TMR0H __at(0xFD7);

asm("TMR0H equ 0FD7h");




extern volatile unsigned char STATUS __at(0xFD8);

asm("STATUS equ 0FD8h");


typedef union {
struct {
unsigned C :1;
unsigned DC :1;
unsigned Z :1;
unsigned OV :1;
unsigned N :1;
};
struct {
unsigned CARRY :1;
unsigned :1;
unsigned ZERO :1;
unsigned OVERFLOW :1;
unsigned NEGATIVE :1;
};
} STATUSbits_t;
extern volatile STATUSbits_t STATUSbits __at(0xFD8);

# 4179
extern volatile unsigned short FSR2 __at(0xFD9);

asm("FSR2 equ 0FD9h");




extern volatile unsigned char FSR2L __at(0xFD9);

asm("FSR2L equ 0FD9h");




extern volatile unsigned char FSR2H __at(0xFDA);

asm("FSR2H equ 0FDAh");




extern volatile unsigned char PLUSW2 __at(0xFDB);

asm("PLUSW2 equ 0FDBh");




extern volatile unsigned char PREINC2 __at(0xFDC);

asm("PREINC2 equ 0FDCh");




extern volatile unsigned char POSTDEC2 __at(0xFDD);

asm("POSTDEC2 equ 0FDDh");




extern volatile unsigned char POSTINC2 __at(0xFDE);

asm("POSTINC2 equ 0FDEh");




extern volatile unsigned char INDF2 __at(0xFDF);

asm("INDF2 equ 0FDFh");




extern volatile unsigned char BSR __at(0xFE0);

asm("BSR equ 0FE0h");




extern volatile unsigned short FSR1 __at(0xFE1);

asm("FSR1 equ 0FE1h");




extern volatile unsigned char FSR1L __at(0xFE1);

asm("FSR1L equ 0FE1h");




extern volatile unsigned char FSR1H __at(0xFE2);

asm("FSR1H equ 0FE2h");




extern volatile unsigned char PLUSW1 __at(0xFE3);

asm("PLUSW1 equ 0FE3h");




extern volatile unsigned char PREINC1 __at(0xFE4);

asm("PREINC1 equ 0FE4h");




extern volatile unsigned char POSTDEC1 __at(0xFE5);

asm("POSTDEC1 equ 0FE5h");




extern volatile unsigned char POSTINC1 __at(0xFE6);

asm("POSTINC1 equ 0FE6h");




extern volatile unsigned char INDF1 __at(0xFE7);

asm("INDF1 equ 0FE7h");




extern volatile unsigned char WREG __at(0xFE8);

asm("WREG equ 0FE8h");

# 4310
extern volatile unsigned short FSR0 __at(0xFE9);

asm("FSR0 equ 0FE9h");




extern volatile unsigned char FSR0L __at(0xFE9);

asm("FSR0L equ 0FE9h");




extern volatile unsigned char FSR0H __at(0xFEA);

asm("FSR0H equ 0FEAh");




extern volatile unsigned char PLUSW0 __at(0xFEB);

asm("PLUSW0 equ 0FEBh");




extern volatile unsigned char PREINC0 __at(0xFEC);

asm("PREINC0 equ 0FECh");




extern volatile unsigned char POSTDEC0 __at(0xFED);

asm("POSTDEC0 equ 0FEDh");




extern volatile unsigned char POSTINC0 __at(0xFEE);

asm("POSTINC0 equ 0FEEh");




extern volatile unsigned char INDF0 __at(0xFEF);

asm("INDF0 equ 0FEFh");




extern volatile unsigned char INTCON3 __at(0xFF0);

asm("INTCON3 equ 0FF0h");


typedef union {
struct {
unsigned INT1IF :1;
unsigned INT2IF :1;
unsigned INT3IF :1;
unsigned INT1IE :1;
unsigned INT2IE :1;
unsigned INT3IE :1;
unsigned INT1IP :1;
unsigned INT2IP :1;
};
struct {
unsigned INT1F :1;
unsigned INT2F :1;
unsigned INT3F :1;
unsigned INT1E :1;
unsigned INT2E :1;
unsigned INT3E :1;
unsigned INT1P :1;
unsigned INT2P :1;
};
} INTCON3bits_t;
extern volatile INTCON3bits_t INTCON3bits __at(0xFF0);

# 4478
extern volatile unsigned char INTCON2 __at(0xFF1);

asm("INTCON2 equ 0FF1h");


typedef union {
struct {
unsigned :7;
unsigned NOT_RBPU :1;
};
struct {
unsigned RBIP :1;
unsigned INT3IP :1;
unsigned TMR0IP :1;
unsigned INTEDG3 :1;
unsigned INTEDG2 :1;
unsigned INTEDG1 :1;
unsigned INTEDG0 :1;
unsigned nRBPU :1;
};
struct {
unsigned :1;
unsigned INT3P :1;
unsigned :5;
unsigned RBPU :1;
};
} INTCON2bits_t;
extern volatile INTCON2bits_t INTCON2bits __at(0xFF1);

# 4565
extern volatile unsigned char INTCON __at(0xFF2);

asm("INTCON equ 0FF2h");


typedef union {
struct {
unsigned RBIF :1;
unsigned INT0IF :1;
unsigned TMR0IF :1;
unsigned RBIE :1;
unsigned INT0IE :1;
unsigned TMR0IE :1;
unsigned PEIE_GIEL :1;
unsigned GIE_GIEH :1;
};
struct {
unsigned :1;
unsigned INT0F :1;
unsigned T0IF :1;
unsigned :1;
unsigned INT0E :1;
unsigned T0IE :1;
unsigned PEIE :1;
unsigned GIE :1;
};
struct {
unsigned :6;
unsigned GIEL :1;
unsigned GIEH :1;
};
} INTCONbits_t;
extern volatile INTCONbits_t INTCONbits __at(0xFF2);

# 4682
extern volatile unsigned short PROD __at(0xFF3);

asm("PROD equ 0FF3h");




extern volatile unsigned char PRODL __at(0xFF3);

asm("PRODL equ 0FF3h");




extern volatile unsigned char PRODH __at(0xFF4);

asm("PRODH equ 0FF4h");




extern volatile unsigned char TABLAT __at(0xFF5);

asm("TABLAT equ 0FF5h");

# 4711
extern volatile __uint24 TBLPTR __at(0xFF6);


asm("TBLPTR equ 0FF6h");




extern volatile unsigned char TBLPTRL __at(0xFF6);

asm("TBLPTRL equ 0FF6h");




extern volatile unsigned char TBLPTRH __at(0xFF7);

asm("TBLPTRH equ 0FF7h");




extern volatile unsigned char TBLPTRU __at(0xFF8);

asm("TBLPTRU equ 0FF8h");

# 4741
extern volatile __uint24 PCLAT __at(0xFF9);


asm("PCLAT equ 0FF9h");



extern volatile __uint24 PC __at(0xFF9);


asm("PC equ 0FF9h");




extern volatile unsigned char PCL __at(0xFF9);

asm("PCL equ 0FF9h");




extern volatile unsigned char PCLATH __at(0xFFA);

asm("PCLATH equ 0FFAh");




extern volatile unsigned char PCLATU __at(0xFFB);

asm("PCLATU equ 0FFBh");




extern volatile unsigned char STKPTR __at(0xFFC);

asm("STKPTR equ 0FFCh");


typedef union {
struct {
unsigned STKPTR :5;
unsigned :1;
unsigned STKUNF :1;
unsigned STKFUL :1;
};
struct {
unsigned SP0 :1;
unsigned SP1 :1;
unsigned SP2 :1;
unsigned SP3 :1;
unsigned SP4 :1;
unsigned :2;
unsigned STKOVF :1;
};
} STKPTRbits_t;
extern volatile STKPTRbits_t STKPTRbits __at(0xFFC);

# 4850
extern volatile __uint24 TOS __at(0xFFD);


asm("TOS equ 0FFDh");




extern volatile unsigned char TOSL __at(0xFFD);

asm("TOSL equ 0FFDh");




extern volatile unsigned char TOSH __at(0xFFE);

asm("TOSH equ 0FFEh");




extern volatile unsigned char TOSU __at(0xFFF);

asm("TOSU equ 0FFFh");

# 4885
extern volatile __bit ABDEN __at(0x7DC0);


extern volatile __bit ABDOVF __at(0x7DC7);


extern volatile __bit ACQT0 __at(0x7E03);


extern volatile __bit ACQT1 __at(0x7E04);


extern volatile __bit ACQT2 __at(0x7E05);


extern volatile __bit ADCAL __at(0x7E17);


extern volatile __bit ADCS0 __at(0x7E00);


extern volatile __bit ADCS1 __at(0x7E01);


extern volatile __bit ADCS2 __at(0x7E02);


extern volatile __bit ADDEN __at(0x7D5B);


extern volatile __bit ADEN __at(0x7D5B);


extern volatile __bit ADFM __at(0x7E07);


extern volatile __bit ADIE __at(0x7CEE);


extern volatile __bit ADIF __at(0x7CF6);


extern volatile __bit ADIP __at(0x7CFE);


extern volatile __bit ADON __at(0x7E10);


extern volatile __bit AN0 __at(0x7C00);


extern volatile __bit AN1 __at(0x7C01);


extern volatile __bit AN2 __at(0x7C04);


extern volatile __bit AN3 __at(0x7C06);


extern volatile __bit BOR __at(0x7E80);


extern volatile __bit BRFEN __at(0x7C5F);


extern volatile __bit BRG16 __at(0x7DC3);


extern volatile __bit BRGH __at(0x7D62);


extern volatile __bit BRGH1 __at(0x7D62);


extern volatile __bit C0OUT __at(0x7DA5);


extern volatile __bit C1OUT __at(0x7DA6);


extern volatile __bit C2INV __at(0x7DA5);


extern volatile __bit C2OUT __at(0x7DA7);


extern volatile __bit CARRY __at(0x7EC0);


extern volatile __bit CCP2_PA2 __at(0x7C0B);


extern volatile __bit CFGS __at(0x7D36);


extern volatile __bit CHS0 __at(0x7E12);


extern volatile __bit CHS1 __at(0x7E13);


extern volatile __bit CHSN3 __at(0x7E0B);


extern volatile __bit CK __at(0x7C02);


extern volatile __bit CLKI __at(0x7C07);


extern volatile __bit CLKO __at(0x7C06);


extern volatile __bit CM0 __at(0x7DA0);


extern volatile __bit CM1 __at(0x7DA1);


extern volatile __bit CM2 __at(0x7DA2);


extern volatile __bit CMEN0 __at(0x7DA0);


extern volatile __bit CMEN1 __at(0x7DA1);


extern volatile __bit CMEN2 __at(0x7DA2);


extern volatile __bit CMP0 __at(0x7C00);


extern volatile __bit CMP0IE __at(0x7CE9);


extern volatile __bit CMP0IF __at(0x7CF1);


extern volatile __bit CMP0IP __at(0x7CF9);


extern volatile __bit CMP1 __at(0x7C0B);


extern volatile __bit CMP1IE __at(0x7CEA);


extern volatile __bit CMP1IF __at(0x7CF2);


extern volatile __bit CMP1IP __at(0x7CFA);


extern volatile __bit CMP2 __at(0x7C0A);


extern volatile __bit CMP2IE __at(0x7CEB);


extern volatile __bit CMP2IF __at(0x7CF3);


extern volatile __bit CMP2IP __at(0x7CFB);


extern volatile __bit CREN __at(0x7D5C);


extern volatile __bit CSRC __at(0x7D67);


extern volatile __bit CSRC1 __at(0x7D67);


extern volatile __bit CVR0 __at(0x7DA8);


extern volatile __bit CVR1 __at(0x7DA9);


extern volatile __bit CVR2 __at(0x7DAA);


extern volatile __bit CVR3 __at(0x7DAB);


extern volatile __bit CVREF __at(0x7DAC);


extern volatile __bit CVREN __at(0x7DAF);


extern volatile __bit CVRR __at(0x7DAD);


extern volatile __bit CVRSS __at(0x7DAC);


extern volatile __bit DC __at(0x7EC1);


extern volatile __bit DONE __at(0x7E11);


extern volatile __bit DT __at(0x7C03);


extern volatile __bit DT0 __at(0x7C20);


extern volatile __bit DT1 __at(0x7C21);


extern volatile __bit DT2 __at(0x7C22);


extern volatile __bit DT3 __at(0x7C23);


extern volatile __bit DT4 __at(0x7C24);


extern volatile __bit DT5 __at(0x7C25);


extern volatile __bit DTPS0 __at(0x7C26);


extern volatile __bit DTPS1 __at(0x7C27);


extern volatile __bit EEFS __at(0x7D36);


extern volatile __bit EEIE __at(0x7D04);


extern volatile __bit EEIF __at(0x7D0C);


extern volatile __bit EEIP __at(0x7D14);


extern volatile __bit EEPGD __at(0x7D37);


extern volatile __bit FERR __at(0x7D5A);


extern volatile __bit FLTAEN __at(0x7C58);


extern volatile __bit FLTAMOD __at(0x7C59);


extern volatile __bit FLTAS __at(0x7C5A);


extern volatile __bit FLTS __at(0x7E9A);


extern volatile __bit FREE __at(0x7D34);


extern volatile __bit GIE __at(0x7F97);


extern volatile __bit GIEH __at(0x7F97);


extern volatile __bit GIEL __at(0x7F96);


extern volatile __bit GIE_GIEH __at(0x7F97);


extern volatile __bit GO __at(0x7E11);


extern volatile __bit GODONE __at(0x7E11);


extern volatile __bit GO_DONE __at(0x7E11);


extern volatile __bit GO_NOT_DONE __at(0x7E11);


extern volatile __bit GO_nDONE __at(0x7E11);


extern volatile __bit IDLEN __at(0x7E9F);


extern volatile __bit INT0 __at(0x7C00);


extern volatile __bit INT0E __at(0x7F94);


extern volatile __bit INT0F __at(0x7F91);


extern volatile __bit INT0IE __at(0x7F94);


extern volatile __bit INT0IF __at(0x7F91);


extern volatile __bit INT1 __at(0x7C01);


extern volatile __bit INT1E __at(0x7F83);


extern volatile __bit INT1F __at(0x7F80);


extern volatile __bit INT1IE __at(0x7F83);


extern volatile __bit INT1IF __at(0x7F80);


extern volatile __bit INT1IP __at(0x7F86);


extern volatile __bit INT1P __at(0x7F86);


extern volatile __bit INT2 __at(0x7C0A);


extern volatile __bit INT2E __at(0x7F84);


extern volatile __bit INT2F __at(0x7F81);


extern volatile __bit INT2IE __at(0x7F84);


extern volatile __bit INT2IF __at(0x7F81);


extern volatile __bit INT2IP __at(0x7F87);


extern volatile __bit INT2P __at(0x7F87);


extern volatile __bit INT3 __at(0x7C0B);


extern volatile __bit INT3E __at(0x7F85);


extern volatile __bit INT3F __at(0x7F82);


extern volatile __bit INT3IE __at(0x7F85);


extern volatile __bit INT3IF __at(0x7F82);


extern volatile __bit INT3IP __at(0x7F89);


extern volatile __bit INT3P __at(0x7F89);


extern volatile __bit INTEDG0 __at(0x7F8E);


extern volatile __bit INTEDG1 __at(0x7F8D);


extern volatile __bit INTEDG2 __at(0x7F8C);


extern volatile __bit INTEDG3 __at(0x7F8B);


extern volatile __bit INTSRC __at(0x7CDF);


extern volatile __bit IOFS __at(0x7E9A);


extern volatile __bit IPEN __at(0x7E87);


extern volatile __bit IRCF0 __at(0x7E9C);


extern volatile __bit IRCF1 __at(0x7E9D);


extern volatile __bit IRCF2 __at(0x7E9E);


extern volatile __bit IRVST __at(0x7E95);


extern volatile __bit IVRST __at(0x7E95);


extern volatile __bit KBI0 __at(0x7C00);


extern volatile __bit KBI1 __at(0x7C01);


extern volatile __bit KBI2 __at(0x7C0A);


extern volatile __bit KBI3 __at(0x7C0B);


extern volatile __bit LA0 __at(0x7C48);


extern volatile __bit LA1 __at(0x7C49);


extern volatile __bit LA2 __at(0x7C4A);


extern volatile __bit LA3 __at(0x7C4B);


extern volatile __bit LA4 __at(0x7C4C);


extern volatile __bit LA5 __at(0x7C4D);


extern volatile __bit LA6 __at(0x7C4E);


extern volatile __bit LA7 __at(0x7C4F);


extern volatile __bit LATA0 __at(0x7C48);


extern volatile __bit LATA1 __at(0x7C49);


extern volatile __bit LATA2 __at(0x7C4A);


extern volatile __bit LATA3 __at(0x7C4B);


extern volatile __bit LATA4 __at(0x7C4C);


extern volatile __bit LATA5 __at(0x7C4D);


extern volatile __bit LATA6 __at(0x7C4E);


extern volatile __bit LATA7 __at(0x7C4F);


extern volatile __bit LATB0 __at(0x7C50);


extern volatile __bit LATB1 __at(0x7C51);


extern volatile __bit LATB2 __at(0x7C52);


extern volatile __bit LATB3 __at(0x7C53);


extern volatile __bit LATB4 __at(0x7C54);


extern volatile __bit LATB5 __at(0x7C55);


extern volatile __bit LATB6 __at(0x7C56);


extern volatile __bit LATB7 __at(0x7C57);


extern volatile __bit LB0 __at(0x7C50);


extern volatile __bit LB1 __at(0x7C51);


extern volatile __bit LB2 __at(0x7C52);


extern volatile __bit LB3 __at(0x7C53);


extern volatile __bit LB4 __at(0x7C54);


extern volatile __bit LB5 __at(0x7C55);


extern volatile __bit LB6 __at(0x7C56);


extern volatile __bit LB7 __at(0x7C57);


extern volatile __bit LVDEN __at(0x7E94);


extern volatile __bit LVDIE __at(0x7D02);


extern volatile __bit LVDIF __at(0x7D0A);


extern volatile __bit LVDIN __at(0x7C05);


extern volatile __bit LVDIP __at(0x7D12);


extern volatile __bit LVDL0 __at(0x7E90);


extern volatile __bit LVDL1 __at(0x7E91);


extern volatile __bit LVDL2 __at(0x7E92);


extern volatile __bit LVDL3 __at(0x7E93);


extern volatile __bit MCLR __at(0x7C05);


extern volatile __bit NEGATIVE __at(0x7EC4);


extern volatile __bit NOT_BOR __at(0x7E80);


extern volatile __bit NOT_DONE __at(0x7E11);


extern volatile __bit NOT_MCLR __at(0x7C05);


extern volatile __bit NOT_PD __at(0x7E82);


extern volatile __bit NOT_POR __at(0x7E81);


extern volatile __bit NOT_RBPU __at(0x7F8F);


extern volatile __bit NOT_RI __at(0x7E84);


extern volatile __bit NOT_T1SYNC __at(0x7E6A);


extern volatile __bit NOT_TO __at(0x7E83);


extern volatile __bit OERR __at(0x7D59);


extern volatile __bit OSC1 __at(0x7C07);


extern volatile __bit OSC2 __at(0x7C06);


extern volatile __bit OSCFIE __at(0x7D07);


extern volatile __bit OSCFIF __at(0x7D0F);


extern volatile __bit OSCFIP __at(0x7D17);


extern volatile __bit OSTS __at(0x7E9B);


extern volatile __bit OSYNC __at(0x7C28);


extern volatile __bit OV __at(0x7EC3);


extern volatile __bit OVERFLOW __at(0x7EC3);


extern volatile __bit PCFG0 __at(0x7E08);


extern volatile __bit PCFG1 __at(0x7E09);


extern volatile __bit PCFG2 __at(0x7E0A);


extern volatile __bit PCFG3 __at(0x7E0B);


extern volatile __bit PD __at(0x7E82);


extern volatile __bit PEIE __at(0x7F96);


extern volatile __bit PEIE_GIEL __at(0x7F96);


extern volatile __bit PGC __at(0x7C0E);


extern volatile __bit PGD __at(0x7C0F);


extern volatile __bit PLLEN __at(0x7CDE);


extern volatile __bit PMOD0 __at(0x7C30);


extern volatile __bit PMOD1 __at(0x7C31);


extern volatile __bit PMOD2 __at(0x7C32);


extern volatile __bit POR __at(0x7E81);


extern volatile __bit POUT0 __at(0x7C10);


extern volatile __bit POUT1 __at(0x7C11);


extern volatile __bit POUT2 __at(0x7C12);


extern volatile __bit POUT3 __at(0x7C13);


extern volatile __bit POUT4 __at(0x7C14);


extern volatile __bit POUT5 __at(0x7C15);


extern volatile __bit POVD0 __at(0x7C18);


extern volatile __bit POVD1 __at(0x7C19);


extern volatile __bit POVD2 __at(0x7C1A);


extern volatile __bit POVD3 __at(0x7C1B);


extern volatile __bit POVD4 __at(0x7C1C);


extern volatile __bit POVD5 __at(0x7C1D);


extern volatile __bit PSA __at(0x7EAB);


extern volatile __bit PTCKPS0 __at(0x7CD2);


extern volatile __bit PTCKPS1 __at(0x7CD3);


extern volatile __bit PTDIR __at(0x7CCE);


extern volatile __bit PTEN __at(0x7CCF);


extern volatile __bit PTIE __at(0x7D1C);


extern volatile __bit PTIF __at(0x7D24);


extern volatile __bit PTIP __at(0x7D2C);


extern volatile __bit PTMOD0 __at(0x7CD0);


extern volatile __bit PTMOD1 __at(0x7CD1);


extern volatile __bit PTOPS0 __at(0x7CD4);


extern volatile __bit PTOPS1 __at(0x7CD5);


extern volatile __bit PTOPS2 __at(0x7CD6);


extern volatile __bit PTOPS3 __at(0x7CD7);


extern volatile __bit PWM0 __at(0x7C08);


extern volatile __bit PWM1 __at(0x7C09);


extern volatile __bit PWM2 __at(0x7C0C);


extern volatile __bit PWM3 __at(0x7C0D);


extern volatile __bit PWM4 __at(0x7C0E);


extern volatile __bit PWM5 __at(0x7C0F);


extern volatile __bit PWMEN0 __at(0x7C34);


extern volatile __bit PWMEN1 __at(0x7C35);


extern volatile __bit PWMEN2 __at(0x7C36);


extern volatile __bit __attribute__((__deprecated__)) RA0 __at(0x7C00);


extern volatile __bit __attribute__((__deprecated__)) RA1 __at(0x7C01);


extern volatile __bit __attribute__((__deprecated__)) RA2 __at(0x7C02);


extern volatile __bit __attribute__((__deprecated__)) RA3 __at(0x7C03);


extern volatile __bit __attribute__((__deprecated__)) RA4 __at(0x7C04);


extern volatile __bit __attribute__((__deprecated__)) RA5 __at(0x7C05);


extern volatile __bit __attribute__((__deprecated__)) RA6 __at(0x7C06);


extern volatile __bit __attribute__((__deprecated__)) RA7 __at(0x7C07);


extern volatile __bit __attribute__((__deprecated__)) RB0 __at(0x7C08);


extern volatile __bit __attribute__((__deprecated__)) RB1 __at(0x7C09);


extern volatile __bit __attribute__((__deprecated__)) RB2 __at(0x7C0A);


extern volatile __bit __attribute__((__deprecated__)) RB3 __at(0x7C0B);


extern volatile __bit __attribute__((__deprecated__)) RB4 __at(0x7C0C);


extern volatile __bit __attribute__((__deprecated__)) RB5 __at(0x7C0D);


extern volatile __bit __attribute__((__deprecated__)) RB6 __at(0x7C0E);


extern volatile __bit __attribute__((__deprecated__)) RB7 __at(0x7C0F);


extern volatile __bit RBIE __at(0x7F93);


extern volatile __bit RBIF __at(0x7F90);


extern volatile __bit RBIP __at(0x7F88);


extern volatile __bit RBPU __at(0x7F8F);


extern volatile __bit RC1IE __at(0x7CED);


extern volatile __bit RC1IF __at(0x7CF5);


extern volatile __bit RC1IP __at(0x7CFD);


extern volatile __bit RC8_9 __at(0x7D5E);


extern volatile __bit RC9 __at(0x7D5E);


extern volatile __bit RCD8 __at(0x7D58);


extern volatile __bit RCIDL __at(0x7DC6);


extern volatile __bit RCIE __at(0x7CED);


extern volatile __bit RCIF __at(0x7CF5);


extern volatile __bit RCIP __at(0x7CFD);


extern volatile __bit RCMT __at(0x7DC6);


extern volatile __bit RD __at(0x7D30);


extern volatile __bit RD16 __at(0x7E6F);


extern volatile __bit RI __at(0x7E84);


extern volatile __bit RJPU __at(0x7C07);


extern volatile __bit RX __at(0x7C03);


extern volatile __bit RX9 __at(0x7D5E);


extern volatile __bit RX9D __at(0x7D58);


extern volatile __bit RXCKP __at(0x7DC5);


extern volatile __bit RXDTP __at(0x7DC5);


extern volatile __bit SBOREN __at(0x7E86);


extern volatile __bit SCKP __at(0x7DC4);


extern volatile __bit SCS0 __at(0x7E98);


extern volatile __bit SCS1 __at(0x7E99);


extern volatile __bit SENDB __at(0x7D63);


extern volatile __bit SENDB1 __at(0x7D63);


extern volatile __bit SEVOPS0 __at(0x7C2C);


extern volatile __bit SEVOPS1 __at(0x7C2D);


extern volatile __bit SEVOPS2 __at(0x7C2E);


extern volatile __bit SEVOPS3 __at(0x7C2F);


extern volatile __bit SEVTDIR __at(0x7C2B);


extern volatile __bit SEVTEN __at(0x7E17);


extern volatile __bit SOSCEN __at(0x7E6B);


extern volatile __bit SP0 __at(0x7FE0);


extern volatile __bit SP1 __at(0x7FE1);


extern volatile __bit SP2 __at(0x7FE2);


extern volatile __bit SP3 __at(0x7FE3);


extern volatile __bit SP4 __at(0x7FE4);


extern volatile __bit SPEN __at(0x7D5F);


extern volatile __bit SREN __at(0x7D5D);


extern volatile __bit SRENA __at(0x7D5D);


extern volatile __bit STKFUL __at(0x7FE7);


extern volatile __bit STKOVF __at(0x7FE7);


extern volatile __bit STKUNF __at(0x7FE6);


extern volatile __bit SWDTE __at(0x7E88);


extern volatile __bit SWDTEN __at(0x7E88);


extern volatile __bit SYNC __at(0x7D64);


extern volatile __bit SYNC1 __at(0x7D64);


extern volatile __bit T016BIT __at(0x7EAE);


extern volatile __bit T08BIT __at(0x7EAE);


extern volatile __bit T0CKI __at(0x7C04);


extern volatile __bit T0CS __at(0x7EAD);


extern volatile __bit T0IE __at(0x7F95);


extern volatile __bit T0IF __at(0x7F92);


extern volatile __bit T0PS0 __at(0x7EA8);


extern volatile __bit T0PS1 __at(0x7EA9);


extern volatile __bit T0PS2 __at(0x7EAA);


extern volatile __bit T0SE __at(0x7EAC);


extern volatile __bit T1CKPS0 __at(0x7E6C);


extern volatile __bit T1CKPS1 __at(0x7E6D);


extern volatile __bit T1OSCEN __at(0x7E6B);


extern volatile __bit T1RD16 __at(0x7E6F);


extern volatile __bit T1RUN __at(0x7E6E);


extern volatile __bit T1SYNC __at(0x7E6A);


extern volatile __bit TMR0IE __at(0x7F95);


extern volatile __bit TMR0IF __at(0x7F92);


extern volatile __bit TMR0IP __at(0x7F8A);


extern volatile __bit TMR0ON __at(0x7EAF);


extern volatile __bit TMR1CS __at(0x7E69);


extern volatile __bit TMR1IE __at(0x7CE8);


extern volatile __bit TMR1IF __at(0x7CF0);


extern volatile __bit TMR1IP __at(0x7CF8);


extern volatile __bit TMR1ON __at(0x7E68);


extern volatile __bit TO __at(0x7E83);


extern volatile __bit TRISA0 __at(0x7C90);


extern volatile __bit TRISA1 __at(0x7C91);


extern volatile __bit TRISA2 __at(0x7C92);


extern volatile __bit TRISA3 __at(0x7C93);


extern volatile __bit TRISA4 __at(0x7C94);


extern volatile __bit TRISA5 __at(0x7C95);


extern volatile __bit TRISA6 __at(0x7C96);


extern volatile __bit TRISA7 __at(0x7C97);


extern volatile __bit TRISB0 __at(0x7C98);


extern volatile __bit TRISB1 __at(0x7C99);


extern volatile __bit TRISB2 __at(0x7C9A);


extern volatile __bit TRISB3 __at(0x7C9B);


extern volatile __bit TRISB4 __at(0x7C9C);


extern volatile __bit TRISB5 __at(0x7C9D);


extern volatile __bit TRISB6 __at(0x7C9E);


extern volatile __bit TRISB7 __at(0x7C9F);


extern volatile __bit TRMT __at(0x7D61);


extern volatile __bit TRMT1 __at(0x7D61);


extern volatile __bit TUN0 __at(0x7CD8);


extern volatile __bit TUN1 __at(0x7CD9);


extern volatile __bit TUN2 __at(0x7CDA);


extern volatile __bit TUN3 __at(0x7CDB);


extern volatile __bit TUN4 __at(0x7CDC);


extern volatile __bit TX __at(0x7C02);


extern volatile __bit TX1IE __at(0x7CEC);


extern volatile __bit TX1IF __at(0x7CF4);


extern volatile __bit TX1IP __at(0x7CFC);


extern volatile __bit TX8_9 __at(0x7D66);


extern volatile __bit TX9 __at(0x7D66);


extern volatile __bit TX91 __at(0x7D66);


extern volatile __bit TX9D __at(0x7D60);


extern volatile __bit TX9D1 __at(0x7D60);


extern volatile __bit TXB2IE __at(0x7D1C);


extern volatile __bit TXBNIE __at(0x7D1C);


extern volatile __bit TXBNIF __at(0x7D24);


extern volatile __bit TXBNIP __at(0x7D2C);


extern volatile __bit TXCKP __at(0x7DC4);


extern volatile __bit TXD8 __at(0x7D60);


extern volatile __bit TXEN __at(0x7D65);


extern volatile __bit TXEN1 __at(0x7D65);


extern volatile __bit TXIE __at(0x7CEC);


extern volatile __bit TXIF __at(0x7CF4);


extern volatile __bit TXIP __at(0x7CFC);


extern volatile __bit UDIS __at(0x7C29);


extern volatile __bit ULPWUIN __at(0x7C00);


extern volatile __bit VCFG __at(0x7E0C);


extern volatile __bit VCFG0 __at(0x7E0C);


extern volatile __bit VCFG01 __at(0x7E0C);


extern volatile __bit VREFP __at(0x7C04);


extern volatile __bit W4E __at(0x7DC1);


extern volatile __bit WR __at(0x7D31);


extern volatile __bit WREN __at(0x7D32);


extern volatile __bit WRERR __at(0x7D33);


extern volatile __bit WUE __at(0x7DC1);


extern volatile __bit ZERO __at(0x7EC2);


extern volatile __bit nBOR __at(0x7E80);


extern volatile __bit nDONE __at(0x7E11);


extern volatile __bit nMCLR __at(0x7C05);


extern volatile __bit nPD __at(0x7E82);


extern volatile __bit nPOR __at(0x7E81);


extern volatile __bit nRBPU __at(0x7F8F);


extern volatile __bit nRI __at(0x7E84);


extern volatile __bit nT1SYNC __at(0x7E6A);


extern volatile __bit nTO __at(0x7E83);

# 18 "C:\Program Files (x86)\Microchip\xc8\v2.00\pic\include\pic18.h"
__attribute__((__unsupported__("The " "flash_write" " routine is no longer supported. Please use the MPLAB X MCC."))) void flash_write(const unsigned char *, unsigned int, __far unsigned char *);
__attribute__((__unsupported__("The " "EraseFlash" " routine is no longer supported. Please use the MPLAB X MCC."))) void EraseFlash(unsigned long startaddr, unsigned long endaddr);


# 49
#pragma intrinsic(__nop)
extern void __nop(void);

# 154
__attribute__((__unsupported__("The " "Read_b_eep" " routine is no longer supported. Please use the MPLAB X MCC."))) unsigned char Read_b_eep(unsigned int badd);
__attribute__((__unsupported__("The " "Busy_eep" " routine is no longer supported. Please use the MPLAB X MCC."))) void Busy_eep(void);
__attribute__((__unsupported__("The " "Write_b_eep" " routine is no longer supported. Please use the MPLAB X MCC."))) void Write_b_eep(unsigned int badd, unsigned char bdat);

# 174
unsigned char __t1rd16on(void);
unsigned char __t3rd16on(void);


# 182
#pragma intrinsic(_delay)
extern __nonreentrant void _delay(unsigned long);
#pragma intrinsic(_delaywdt)
extern __nonreentrant void _delaywdt(unsigned long);
#pragma intrinsic(_delay3)
extern __nonreentrant void _delay3(unsigned char);

# 4 "C:\Program Files (x86)\Microchip\xc8\v2.00\pic\include\__size_t.h"
typedef unsigned size_t;

# 14 "C:\Program Files (x86)\Microchip\xc8\v2.00\pic\include\c90\string.h"
extern void * memcpy(void *, const void *, size_t);
extern void * memmove(void *, const void *, size_t);
extern void * memset(void *, int, size_t);

# 36
extern char * strcat(char *, const char *);
extern char * strcpy(char *, const char *);
extern char * strncat(char *, const char *, size_t);
extern char * strncpy(char *, const char *, size_t);
extern char * strdup(const char *);
extern char * strtok(char *, const char *);


extern int memcmp(const void *, const void *, size_t);
extern int strcmp(const char *, const char *);
extern int stricmp(const char *, const char *);
extern int strncmp(const char *, const char *, size_t);
extern int strnicmp(const char *, const char *, size_t);
extern void * memchr(const void *, int, size_t);
extern size_t strcspn(const char *, const char *);
extern char * strpbrk(const char *, const char *);
extern size_t strspn(const char *, const char *);
extern char * strstr(const char *, const char *);
extern char * stristr(const char *, const char *);
extern char * strerror(int);
extern size_t strlen(const char *);
extern char * strchr(const char *, int);
extern char * strichr(const char *, int);
extern char * strrchr(const char *, int);
extern char * strrichr(const char *, int);

# 7 "C:\Program Files (x86)\Microchip\xc8\v2.00\pic\include\c90\stdlib.h"
typedef unsigned short wchar_t;

# 15
typedef struct {
int rem;
int quot;
} div_t;
typedef struct {
unsigned rem;
unsigned quot;
} udiv_t;
typedef struct {
long quot;
long rem;
} ldiv_t;
typedef struct {
unsigned long quot;
unsigned long rem;
} uldiv_t;

# 65
extern double atof(const char *);
extern double strtod(const char *, const char **);
extern int atoi(const char *);
extern unsigned xtoi(const char *);
extern long atol(const char *);

# 73
extern long strtol(const char *, char **, int);

extern int rand(void);
extern void srand(unsigned int);
extern void * calloc(size_t, size_t);
extern div_t div(int numer, int denom);
extern udiv_t udiv(unsigned numer, unsigned denom);
extern ldiv_t ldiv(long numer, long denom);
extern uldiv_t uldiv(unsigned long numer,unsigned long denom);

# 85
extern unsigned long _lrotl(unsigned long value, unsigned int shift);
extern unsigned long _lrotr(unsigned long value, unsigned int shift);
extern unsigned int _rotl(unsigned int value, unsigned int shift);
extern unsigned int _rotr(unsigned int value, unsigned int shift);




extern void * malloc(size_t);
extern void free(void *);
extern void * realloc(void *, size_t);

# 104
extern int atexit(void (*)(void));
extern char * getenv(const char *);
extern char ** environ;
extern int system(char *);
extern void qsort(void *, size_t, size_t, int (*)(const void *, const void *));
extern void * bsearch(const void *, void *, size_t, size_t, int(*)(const void *, const void *));
extern int abs(int);
extern long labs(long);

extern char * itoa(char * buf, int val, int base);
extern char * utoa(char * buf, unsigned val, int base);




extern char * ltoa(char * buf, long val, int base);
extern char * ultoa(char * buf, unsigned long val, int base);

extern char * ftoa(float f, int * status);


# 7 "config.h"
#pragma config OSC = INTIO2
#pragma config FCMEN = OFF
#pragma config IESO = OFF


#pragma config PWRT = OFF
#pragma config BOR = BOHW
#pragma config BORV = 3


#pragma config WDT = OFF
#pragma config WDTPS = 32768


#pragma config PWMPIN = OFF
#pragma config LPOL = HIGH
#pragma config HPOL = HIGH


#pragma config FLTAMX = RA5
#pragma config T1OSCMX = HIGH
#pragma config MCLRE = OFF


#pragma config STVREN = ON
#pragma config BBSIZ = BB256
#pragma config XINST = OFF


#pragma config CP0 = OFF
#pragma config CP1 = OFF


#pragma config CPB = OFF
#pragma config CPD = OFF


#pragma config WRT0 = OFF
#pragma config WRT1 = OFF


#pragma config WRTC = OFF
#pragma config WRTB = OFF
#pragma config WRTD = OFF


#pragma config EBTR0 = OFF
#pragma config EBTR1 = OFF


#pragma config EBTRB = OFF

# 10 "delay.h"
void delay_us(int repeat_1){
while(repeat_1--){
_delay((unsigned long)((1)*(32000000/4000000.0)));
}
}

void delay_ms(int repeat_2){
while(repeat_2--){
_delay((unsigned long)((1)*(32000000/4000.0)));
}
}

void delay_s(int repeat_3){
while(repeat_3--){
delay_ms(1000);
}
}

# 9 "uart.h"
char UART_buffer[16];
unsigned char UART_Buffer_Ptr = 0;

void UART_Init() {

PIE1bits.RCIE = 0b1;
INTCONbits.PEIE = 0b1;
INTCONbits.GIE = 0b1;


RCSTAbits.SPEN = 0b1;
RCSTAbits.RX9 = 0b0;
RCSTAbits.CREN = 0b1;

TXSTAbits.TX9 = 0b0;
TXSTAbits.SYNC = 0b0;
TXSTAbits.BRGH = 0b0;
TXSTAbits.TXEN = 0b1;

BAUDCONbits.BRG16 = 0b0;
BAUDCONbits.ABDEN = 0b0;
SPBRG = 51;
}

void UART_Write_byte(unsigned char data) {
while (!TRMT);
TXREG = data;
}

void UART_Write_Text(unsigned char *text) {
unsigned char toSend;
for (int i = 0; text[i] != '\0'; i++){
toSend = text[i];
UART_Write_byte(toSend);
}
}

void UART_clean_buffer() {
memset(UART_buffer, 45, sizeof (UART_buffer));
UART_Buffer_Ptr = 0;
}

void interrupt UART_add_buffer() {


LATBbits.LATB3 = 1;
if (PIR1bits.RCIF) {

# 64
UART_buffer[UART_Buffer_Ptr] = RCREG;
UART_Buffer_Ptr = (unsigned char)((unsigned char)UART_Buffer_Ptr + (unsigned char)1);
if (UART_Buffer_Ptr == 16)
UART_Buffer_Ptr = (unsigned char)((unsigned char)UART_Buffer_Ptr - (unsigned char)1);

PIR1bits.RCIF = 0;

}
LATBbits.LATB3 = 0;
}

# 8 "adc.h"
void ADC_Init()
{

ADCON0bits.CHS0 = 0b1;
ADCON0bits.CHS1 = 0b1;

# 18
ADCON1bits.VCFG0 = 0b0;


ADCON1bits.PCFG3 = 0b0;


ADCON2bits.ADFM = 0b1;


ADCON2bits.ACQT2 = 0b1;
ADCON2bits.ACQT1 = 0b0;
ADCON2bits.ACQT1 = 0b0;


ADCON2bits.ADCS2 = 0b0;
ADCON2bits.ADCS1 = 0b0;
ADCON2bits.ADCS0 = 0b0;
}

unsigned int ADC_Get(){
ADCON0bits.ADON = 0b1;
delay_ms(10);
ADCON0bits.GO_DONE = 1;
while(ADCON0bits.GO_DONE == 1);
unsigned int advalue = (unsigned int)(((unsigned char)ADRESH << 8) + (unsigned char)ADRESL);
ADCON0bits.ADON = 0b0;
return advalue;
}

# 2 "ic.h"
void IC_Init(){

TRISAbits.RA0 = 0b0;
TRISAbits.RA1 = 0b1;
TRISAbits.RA2 = 0b1;
TRISAbits.RA3 = 0b1;
TRISAbits.RA4 = 0b1;

TRISAbits.RA6 = 0b1;
TRISAbits.RA7 = 0b1;

TRISBbits.RB0 = 0b0;
TRISBbits.RB1 = 0b0;
TRISBbits.RB2 = 0b1;
TRISBbits.RB3 = 0b0;
TRISBbits.RB4 = 0b0;
TRISBbits.RB5 = 0b0;


ADCON1bits.PCFG3 = 0b0;
ADCON1bits.PCFG2 = 0b1;
ADCON1bits.PCFG1 = 0b1;
ADCON1bits.PCFG0 = 0b1;


OSCCONbits.IRCF0 = 0b1;
OSCCONbits.IRCF1 = 0b1;
OSCCONbits.IRCF2 = 0b1;


OSCTUNEbits.PLLEN = 1;

T0CONbits.TMR0ON = 0;


LATBbits.LATB0 = 0b0;
LATBbits.LATB1 = 0b0;

LATBbits.LATB4 = 0b0;
LATBbits.LATB5 = 0b0;
}

# 18 "main.c"
char state = 0;
char old_state = 0b10000000;
bit AC_POWER_OLD = 0b0;
unsigned char buffer[10];
unsigned int adcValue;
unsigned int batValue;
unsigned char cycleAlarm = 10;
unsigned char cycleAlarmCounter = 0;
unsigned char allArmed = 0;

void send_Status() {


adcValue = ADC_Get();

unsigned long temp = ((unsigned long) adcValue * (unsigned long) 5000);
batValue = temp / 1023;
itoa(buffer, batValue, 10);
UART_Write_Text(buffer);

if ((state & 0b00010000) == 0b00010000) {
UART_Write_Text((unsigned char *) "|ON|");
} else {
UART_Write_Text((unsigned char *) "|OFF|");
}

if ((state & 0b00001000) == 0b00001000) {
UART_Write_Text((unsigned char *) "ON|");
} else {
UART_Write_Text((unsigned char *) "OFF|");
}

if ((state & 0b00000100) == 0b00000100) {
UART_Write_Text((unsigned char *) "AC|");
} else {
UART_Write_Text((unsigned char *) "DC|");
}

if ((state & 0b00000010) == 0b00000010) {
UART_Write_Text((unsigned char *) "ON|");
} else {
UART_Write_Text((unsigned char *) "OFF|");
}

if ((state & 0b00000001) == 0b00000001) {
UART_Write_Text((unsigned char *) "ON");
} else {
UART_Write_Text((unsigned char *) "OFF");
}




}

void main(void) {




IC_Init();
UART_Init();
ADC_Init();

LATBbits.LATB4 = 1;
delay_ms(50);
LATBbits.LATB4 = 0;

LATBbits.LATB3 = 1;
LATAbits.LATA0 = 0;
LATBbits.LATB5 = 1;
delay_s(1);
LATBbits.LATB3 = 0;
LATAbits.LATA0 = 1;
LATBbits.LATB5 = 0;
delay_s(1);
LATBbits.LATB3 = 1;
LATAbits.LATA0 = 0;
delay_s(1);
LATBbits.LATB3 = 0;
LATAbits.LATA0 = 1;
delay_s(1);
LATBbits.LATB3 = 0;
LATAbits.LATA0 = 0;

UART_Write_Text((unsigned char *) "Hello World1\n");
UART_Write_Text((unsigned char *) "Hello World2\n");
UART_Write_Text((unsigned char *) "Hello World31\n");

unsigned char counter;
while (1) {




if (strstr(UART_buffer, "0_STATUS") != (0) | strstr(UART_buffer, "ALL_STATUS") != (0)) {
UART_clean_buffer();
send_Status();
} else if (strstr(UART_buffer, "0_ALA_ON") != (0) | strstr(UART_buffer, "ALL_ALA_ON") != (0)) {
UART_clean_buffer();
state = state | 0b00001000;
} else if (strstr(UART_buffer, "0_ALA_OFF") != (0) | strstr(UART_buffer, "ALL_ALA_OFF") != (0)) {
UART_clean_buffer();
state = state & ~0b00010000;
state = state & ~0b00001000;
state = state & ~0b00000010;
allArmed = 0;
} else if (strstr(UART_buffer, "0_SIREN_OFF") != (0) | strstr(UART_buffer, "ALL_SIREN_OFF") != (0)) {
UART_clean_buffer();
state = state & ~0b00000010;
} else if (strstr(UART_buffer, "0_SIREN_ON") != (0) | strstr(UART_buffer, "ALL_SIREN_ON") != (0)) {
UART_clean_buffer();
state = state | 0b00000010;
} else if (strstr(UART_buffer, "0_BEEP") != (0) | strstr(UART_buffer, "ALL_BEEP") != (0)) {
UART_clean_buffer();
LATBbits.LATB4 = 0b1;
delay_ms(250);
LATBbits.LATB4 = 0b0;
delay_ms(250);
} else if (strstr(UART_buffer, "0_EXTRA_ON") != (0) | strstr(UART_buffer, "ALL_EXTRA_ON") != (0)) {
UART_clean_buffer();
state = state | 0b00000001;
} else if (strstr(UART_buffer, "0_EXTRA_OFF") != (0) | strstr(UART_buffer, "ALL_EXTRA_OFF") != (0)) {
UART_clean_buffer();
state = state & ~0b00000001;
}

# 149
if (PORTAbits.RA1 != AC_POWER_OLD) {
AC_POWER_OLD = PORTAbits.RA1;
if (PORTAbits.RA1) {
state = state | 0b00000100;
} else {
state = state & ~0b00000100;
}
}

if (PORTBbits.RB2 | PORTAbits.RA7 | ((state & 0b00010000) == 0b00010000) ) {
LATAbits.LATA0 = 1;
if ((state & 0b00001000) == 0b00001000) {
if ((state & 0b00010000) == 0b00010000) {
if (TMR0IF) {
if(cycleAlarmCounter == cycleAlarm){
state = state | 0b00000010;
state = state & ~0b00000001;
if(allArmed == 0){
allArmed = 1;
UART_Write_Text((unsigned char *) "ALL_SIREN_ON");
}
}
else{
cycleAlarmCounter = cycleAlarmCounter + 1;
TMR0IF = 0;
}
}
}
else {
cycleAlarmCounter = 0;
state = state | 0b00010000;
T0CONbits.TMR0ON = 0b0;
TMR0L = 0;
TMR0H = 0;
T0CONbits.T016BIT = 0b0;
T0CONbits.T0CS = 0b0;
T0CONbits.PSA = 0b0;
T0CONbits.T0PS = 0b111;
T0CONbits.TMR0ON = 0b1;
TMR0IF = 0;
LATBbits.LATB4 = 0b1;
delay_ms(100);
LATBbits.LATB4 = 0b0;
delay_ms(100);
}
}
} else {
LATAbits.LATA0 = 0;
}

if ((state & 0b00000010) == 0b00000010) {
LATBbits.LATB4 = 0b1;
} else {
LATBbits.LATB4 = 0b0;
}

if ((state & 0b00000001) == 0b00000001) {
LATBbits.LATB5 = 0b1;
} else {
LATBbits.LATB5 = 0b0;
}

if (state != old_state) {
if ((state & 0b00000100) != (old_state & 0b00000100)) {
LATBbits.LATB4 = 1;
delay_ms(50);
LATBbits.LATB4 = 0;
}
old_state = state;
send_Status();
}

}

}
