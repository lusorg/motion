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
        if (strstr(UART_buffer, "0_STATUS") != NULL | strstr(UART_buffer, "ALL_STATUS") != NULL) {
            UART_clean_buffer();
            send_Status();
        } else if (strstr(UART_buffer, "0_ALA_ON") != NULL | strstr(UART_buffer, "ALL_ALA_ON") != NULL) {
            UART_clean_buffer();
            state = state | STS_3_ALARM_EN;
        } else if (strstr(UART_buffer, "0_ALA_OFF") != NULL | strstr(UART_buffer, "ALL_ALA_OFF") != NULL) {
            UART_clean_buffer();
            state = state & ~STS_4_ALARM_TRI;
            state = state & ~STS_3_ALARM_EN;
            state = state & ~STS_1_SIREN;
            allArmed = 0;
        } else if (strstr(UART_buffer, "0_SIREN_OFF") != NULL | strstr(UART_buffer, "ALL_SIREN_OFF") != NULL) {
            UART_clean_buffer();
            state = state & ~STS_1_SIREN;    
        } else if (strstr(UART_buffer, "0_SIREN_ON") != NULL | strstr(UART_buffer, "ALL_SIREN_ON") != NULL) {
            UART_clean_buffer();
            state = state | STS_1_SIREN;
        } else if (strstr(UART_buffer, "0_BEEP") != NULL | strstr(UART_buffer, "ALL_BEEP") != NULL) {
            UART_clean_buffer();
            SIREN = 0b1;
            delay_ms(250);
            SIREN = 0b0;
            delay_ms(250);
        } else if (strstr(UART_buffer, "0_EXTRA_ON") != NULL | strstr(UART_buffer, "ALL_EXTRA_ON") != NULL) {
            UART_clean_buffer();
            state = state | STS_0_EXTRA;
        } else if (strstr(UART_buffer, "0_EXTRA_OFF") != NULL | strstr(UART_buffer, "ALL_EXTRA_OFF") != NULL) {
            UART_clean_buffer();
            state = state & ~STS_0_EXTRA;
        }

        ///////////////////////////////////////////////////////////
        // State Processor 
        //////////////////////////////////////////////////////////

        if (AC_POWER != AC_POWER_OLD) {
            AC_POWER_OLD = AC_POWER;
            if (AC_POWER) {
                state = state | STS_2_AC_POWER;
            } else {
                state = state & ~STS_2_AC_POWER;
            }
        }

        if (MOTION_1 | MOTION_2 | ((state & STS_4_ALARM_TRI) == STS_4_ALARM_TRI) ) {
            LED_RED = 1;
            if ((state & STS_3_ALARM_EN) == STS_3_ALARM_EN) {
                if ((state & STS_4_ALARM_TRI) == STS_4_ALARM_TRI) {
                    if (TMR0IF) {
                        if(cycleAlarmCounter == cycleAlarm){
                            state = state | STS_1_SIREN;
                            state = state & ~STS_0_EXTRA;
                            if(allArmed == 0){
                                allArmed = 1;
                                UART_Write_Text((uchar *) "ALL_SIREN_ON");
                            }
                        }
                        else{
                            cycleAlarmCounter = cycleAlarmCounter + 1;
                            TMR0IF = 0;
                        }
                    }
                }
                else { // enter just one time after a motion is detected during alarm enabled
                    cycleAlarmCounter = 0;
                    state = state | STS_4_ALARM_TRI;
                    T0CONbits.TMR0ON = 0b0;
                    TMR0L = 0;
                    TMR0H = 0;
                    T0CONbits.T016BIT = 0b0;
                    T0CONbits.T0CS = 0b0;
                    T0CONbits.PSA = 0b0;
                    T0CONbits.T0PS = 0b111;
                    T0CONbits.TMR0ON = 0b1;
                    TMR0IF = 0;
                    SIREN = 0b1;
                    delay_ms(100);
                    SIREN = 0b0;
                    delay_ms(100);
                }
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
