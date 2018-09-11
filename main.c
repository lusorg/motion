/*
 * File:   main.c
 * Author: me
 *
 * Created on June 10, 2018, 11:36 PM
 */
#include <xc.h>
#include <p18f1330.h>
#include <string.h> 
//#include <stdio.h>
#include <stdlib.h>

#include "config.h"
//#include "delay.h"
#include "uart.h"
#include "adc.h"

unsigned char status;
unsigned char old_status;

void main(void) {

    // IO Configuration
    TRISAbits.RA0 = 0b0; // Led 1 output
    TRISAbits.RA1 = 0b1; // Main Power Fail input
    TRISAbits.RA4 = 0b1; // Aux Read from RF Module
    TRISAbits.RA2 = 0b0; // UART TX output
    TRISAbits.RA3 = 0b1; // UART RX input
    TRISBbits.RB0 = 0b0; // CONFIG MO RF Module
    TRISBbits.RB1 = 0b0; // CONFIG M1 RF Module

    TRISBbits.RB3 = 0b0; // Led 2 output
    TRISBbits.RB2 = 0b1; // Motion 1 Input
    TRISAbits.RA7 = 0b1; // Motion 2 Input
    TRISAbits.RA6 = 0b1; // Motion 3 Input
    TRISBbits.RB5 = 0b0; // Extra Output
    TRISBbits.RB4 = 0b0; // Siren Output

    //Set Frequency to 8Mhz
    OSCCONbits.IRCF0 = 0b1;
    OSCCONbits.IRCF1 = 0b1;
    OSCCONbits.IRCF2 = 0b1;

    //Enable PLL  - Frequency 8Mhz x 4(PLL)
    OSCTUNEbits.PLLEN = 0b0;

    UART_Init();
    UART_clean_buffer();

    ADC_Init();

    status = 0;
    old_status = 0;

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

    UART_Write_Text((unsigned char *)"Hello World");

    while (1) {

        if (strstr(UART_buffer, "BAT") != NULL) {
            UART_clean_buffer();
            UART_Write_Text((unsigned char *)"ADC VALUE:");
            unsigned char buffer[10] = "---------\0";
            unsigned int adcValue;

            adcValue = ADC_Get();
            itoa(buffer, adcValue, 10);
            UART_Write_Text(buffer);
            UART_Write_Text((unsigned char *)"\r\n");
        }

        if (MOTION_1) {
            LED_2 = 1;
            status = (unsigned char)(status | (unsigned char)0b00000001);
        } else {
            LED_2 = 0;
            status = (unsigned char)(status & (unsigned char)0b00001110);
        }

        if (MOTION_2) {
            status = (unsigned char)(status | (unsigned char)0b00000010);
        } else {
            status = (unsigned char)(status & (unsigned char)0b00001101);
        }

        if (strstr(UART_buffer, "LEDON") != NULL) {
            UART_clean_buffer();
            LED_1 = 1;
            status = (unsigned char)(status | (unsigned char)0b00000100);
        }
        if (strstr(UART_buffer, "LEDOFF") != NULL) {
            UART_clean_buffer();
            LED_1 = 0;
            status = (unsigned char)(status & (unsigned char)0b00001011);
        }

        if (AC_POWER) {
            status = (unsigned char)(status | (unsigned char)0b00001000);
        } else {
            status = (unsigned char)(status & (unsigned char)0b00000111);
        }

        if (old_status != status) {
            UART_Write_Text((unsigned char *)"STATUS:\r\n");

            /*-------------------------------------------------------*/
            if ((status & 0b00000001) == 0b00000001) {
                UART_Write_Text((unsigned char *)"MOTION 1 DETECTED\r\n");
            } else {
                UART_Write_Text((unsigned char *)"MOTION 1 NOT DETECTED\r\n");
            }
            /*-------------------------------------------------------*/
            if ((status & 0b00000010) == 0b00000010) {
                UART_Write_Text((unsigned char *)"MOTION 2 DETECTED\r\n");
            } else {
                UART_Write_Text((unsigned char *)"MOTION 2 NOT DETECTED\r\n");
            }
            /*-------------------------------------------------------*/
            if ((status & 0b00000100) == 0b00000100) {
                UART_Write_Text((unsigned char *)"LED ON\r\n");
            } else {
                UART_Write_Text((unsigned char *)"LED OFF\r\n");
            }
            /*-------------------------------------------------------*/
            if ((status & 0b00001000) == 0b00001000) {
                UART_Write_Text((unsigned char *)"AC_POWER ON\r\n");
            } else {
                UART_Write_Text((unsigned char *)"AC_POWER OFF\r\n");
            }
            /*-------------------------------------------------------*/
            UART_Write_Text((unsigned char *)"--------\r\n");
            old_status = status;
        }

    }

}
