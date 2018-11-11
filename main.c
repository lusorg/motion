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
#include "defines.h"
#include "delay.h"
#include "uart.h"
#include "adc.h"
#include "ic.h"

char state = 0;
char old_state = 0b10000000;
bit AC_POWER_old = 0b0;

void send_Status() {

        unsigned char buffer[10];
    unsigned int adcValue;
    unsigned int batValue;
    adcValue = ADC_Get();

    unsigned long temp = ((unsigned long) adcValue * (unsigned long) 5000);
    batValue = temp / 1023;
    itoa(buffer, batValue, 10);
    UART_Write_Text(buffer);
    
    if ((state & STS_4_ALARM_TRI) == STS_4_ALARM_TRI) {
        UART_Write_Text((uchar *) "|ON|");
    } else {
        UART_Write_Text((uchar *) "|OFF|");
    }

    if ((state & STS_3_ALARM_EN) == STS_3_ALARM_EN) {
        UART_Write_Text((uchar *) "ON|");
    } else {
        UART_Write_Text((uchar *) "OFF|");
    }

    if ((state & STS_2_AC_POWER) == STS_2_AC_POWER) {
        UART_Write_Text((uchar *) "AC|");
    } else {
        UART_Write_Text((uchar *) "DC|");
    }

    if ((state & STS_1_SIREN) == STS_1_SIREN) {
        UART_Write_Text((uchar *) "ON|");
    } else {
        UART_Write_Text((uchar *) "OFF|");
    }

    if ((state & STS_0_EXTRA) == STS_0_EXTRA) {
        UART_Write_Text((uchar *) "ON");
    } else {
        UART_Write_Text((uchar *) "OFF");
    }

       
    //UART_Write_Text("4100");

}

void main(void) {

    // READ FROM PORT
    // Write to LAT

    IC_Init();
    UART_Init();
    ADC_Init();
    
    SIREN = 1;
    delay_ms(50);
    SIREN = 0;

    LED_BLUE = 1;
    LED_RED = 0;
    EXTRA = 1;
    delay_s(1);
    LED_BLUE = 0;
    LED_RED = 1;
    EXTRA = 0;
    delay_s(1);
    LED_BLUE = 1;
    LED_RED = 0;
    delay_s(1);
    LED_BLUE = 0;
    LED_RED = 1;
    delay_s(1);
    LED_BLUE = 0;
    LED_RED = 0;

     UART_Write_Text((unsigned char *) "Hello World1\n");
     UART_Write_Text((unsigned char *) "Hello World2\n");
     UART_Write_Text((unsigned char *) "Hello World31\n");

     unsigned char counter;
    while (1) {

        ///////////////////////////////////////////////////////////
        // Request Processor 
        //////////////////////////////////////////////////////////
        if (strstr(UART_buffer, "STATUS") != NULL) {
            UART_clean_buffer();
            send_Status();
        } else if (strstr(UART_buffer, "ALA_ON") != NULL) {
            UART_clean_buffer();
            state = state | STS_3_ALARM_EN;
        } else if (strstr(UART_buffer, "ALA_OFF") != NULL) {
            UART_clean_buffer();
            state = state & ~STS_4_ALARM_TRI;
            state = state & ~STS_3_ALARM_EN;
            state = state & ~STS_1_SIREN;
        } else if (strstr(UART_buffer, "BEEP") != NULL) {
            UART_clean_buffer();
            SIREN = 0b1;
            delay_ms(250);
            SIREN = 0b0;
            delay_ms(250);
        } else if (strstr(UART_buffer, "EXTRA_ON") != NULL) {
            UART_clean_buffer();
            state = state | STS_0_EXTRA;
        } else if (strstr(UART_buffer, "EXTRA_OFF") != NULL) {
            UART_clean_buffer();
            state = state & ~STS_0_EXTRA;
        }

        ///////////////////////////////////////////////////////////
        // State Processor 
        //////////////////////////////////////////////////////////

        if (AC_POWER != AC_POWER_old) {
            AC_POWER_old = AC_POWER;
            if (AC_POWER) {
                state = state | STS_2_AC_POWER;
                state = state | STS_0_EXTRA;
            } else {
                state = state & ~STS_2_AC_POWER;
                state = state & ~STS_0_EXTRA;
            }
        }

        if (MOTION_1 | MOTION_2) {
            LED_RED = 1;
            if ((state & STS_3_ALARM_EN) == STS_3_ALARM_EN) {
                state = state | STS_4_ALARM_TRI;
                state = state | STS_1_SIREN;
                state = state & ~STS_0_EXTRA;
            }
        } else {
            LED_RED = 0;
        }

        if ((state & STS_1_SIREN) == STS_1_SIREN) {
            SIREN = 0b1;
        } else {
            SIREN = 0b0;
        }

        if ((state & STS_0_EXTRA) == STS_0_EXTRA) {
            EXTRA = 0b1;
        } else {
            EXTRA = 0b0;
        }

         if (state != old_state) {
            if ((state & STS_2_AC_POWER) != (old_state & STS_2_AC_POWER)) {
                SIREN = 1;
                delay_ms(50);
                SIREN = 0;
            }
            old_state = state;
            send_Status();
        }

    }

}
