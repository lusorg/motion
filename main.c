/*
 * File:   main.c
 * Author: me
 *
 * Created on June 10, 2018, 11:36 PM
 */
#include <xc.h>
#include <string.h> 
#include <stdlib.h>

#include "config.h"
#include "delay.h"
#include "uart.h"
#include "adc.h"

#define RF_M0 LATBbits.LB0
#define RF_M1 LATBbits.LB1

#define LED_1 LATAbits.LATA0 
#define LED_2 LATBbits.LATB3

#define MOTION_1 PORTBbits.RB2 
#define MOTION_2 PORTAbits.RA7

#define AC_POWER PORTAbits.RA1

#define EXTRA LATB5 
#define SIREN LATB4 

unsigned char Motion_1_OldStatus;
unsigned char Motion_2_OldStatus;
unsigned char AC_Power_OldStatus;

void main(void) {

    // IO Configuration
    TRISAbits.RA0 = 0b0; // Led 1 output
    TRISAbits.RA1 = 0b1; // Main Power Fail input
    TRISAbits.RA2 = 0b1; // UART TX output
    TRISAbits.RA3 = 0b1; // UART RX input
    TRISAbits.RA4 = 0b1; // Aux Read from RF Module

    TRISAbits.RA6 = 0b1; // Motion 3 Input
    TRISAbits.RA7 = 0b1; // Motion 2 Input

    TRISBbits.RB0 = 0b0; // CONFIG MO RF Module
    TRISBbits.RB1 = 0b0; // CONFIG M1 RF Module
    TRISBbits.RB2 = 0b1; // Motion 1 Input
    TRISBbits.RB3 = 0b0; // Led 2 output
    TRISBbits.RB4 = 0b0; // Siren Output   
    TRISBbits.RB5 = 0b0; // Extra Output

    // A/D Port Configuration bit 
    ADCON1bits.PCFG3 = 0b0; //for RA6/AN3
    ADCON1bits.PCFG2 = 0b1; //for RA4/AN2
    ADCON1bits.PCFG1 = 0b1; //for RA1/AN1
    ADCON1bits.PCFG0 = 0b1; //for RA0/AN0

    //Set Frequency to 8Mhz
    OSCCONbits.IRCF0 = 0b1;
    OSCCONbits.IRCF1 = 0b1;
    OSCCONbits.IRCF2 = 0b1;

    //Enable PLL  - Frequency 8Mhz x 4(PLL)
    OSCTUNEbits.PLLEN = 1;

    UART_Init();
    UART_clean_buffer();

    ADC_Init();

    // READ FROM PORT
    // Write to LAT

    //SET RF
    RF_M0 = 0b0;
    RF_M1 = 0b0;

    LED_1 = 0;
    LED_2 = 0;
    delay_ms(1);
    delay_s(1);
    delay_us(1);
    LED_1 = 1;
    LED_2 = 1;
    delay_ms(1);
    LED_1 = 0;
    LED_2 = 0;
    delay_ms(1);

    UART_Write_Text((unsigned char *) "Hello World\n");

    while (1) {

        if (strstr(UART_buffer, "BAT-------------") != NULL) {
            UART_clean_buffer();
            UART_Write_Text((unsigned char *) "ADC VALUE:");
            unsigned char buffer[10];
            unsigned int adcValue;
            adcValue = ADC_Get();
            itoa(buffer, adcValue, 10);
            UART_Write_Text(buffer);
            UART_Write_Text((unsigned char *) "\n");
        } else if (strstr(UART_buffer, "LEDON") != NULL) {
            UART_clean_buffer();
            LED_1 = 1;
            UART_Write_Text((unsigned char *) "LED ON\n");
        } else if (strstr(UART_buffer, "LEDOFF") != NULL) {
            UART_clean_buffer();
            LED_1 = 0;
            UART_Write_Text((unsigned char *) "LED OFF\n");
        }

        if (MOTION_1 != Motion_1_OldStatus) {
            Motion_1_OldStatus = MOTION_1;
            if (MOTION_1) {
                UART_Write_Text((unsigned char *) "MOTION 1 DETECTED\n");
                LED_2 = 1;
            } else {
                UART_Write_Text((unsigned char *) "MOTION 1 NO MOVEMENT\n");
                LED_2 = 0;
            }
        }

        if (MOTION_2 != Motion_2_OldStatus) {
            Motion_2_OldStatus = MOTION_2;
            if (MOTION_2) {
                UART_Write_Text((unsigned char *) "MOTION 2 DETECTED\n");
            } else {
                UART_Write_Text((unsigned char *) "MOTION 2 no movement\n");
            }
        }

        if (AC_POWER != AC_Power_OldStatus) {
            AC_Power_OldStatus = AC_POWER;
            if (AC_POWER) {
                UART_Write_Text((unsigned char *) "AC POWER\n");
            } else {
                UART_Write_Text((unsigned char *) "DC POWER\n");
            }
        }
    }

}
