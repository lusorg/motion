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

#include "adc.h"
#include "ic.h"
#include "uart.h"

unsigned char cycleAlarm = 10;
unsigned char cycleAlarmCounter = 0;

char trash;

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

    for(int i=0;i<100;i++){
        trash = RCREG;
        UART_clean_buffer();
    }
        
    unsigned char counter;
    while (1) {
        ///////////////////////////////////////////////////////////
        // Request Processor 
        //////////////////////////////////////////////////////////
        if (strstr(UART_buffer, "0_STATUS") != NULL | strstr(UART_buffer, "1_STATUS") != NULL) {
            UART_clean_buffer();
            send_Status();
        } else if (strstr(UART_buffer, "0_ALAR_1") != NULL | strstr(UART_buffer, "1_ALAR_1") != NULL) {
            UART_clean_buffer();
            Status_Alarm_Enabled = 0b1;
        } else if (strstr(UART_buffer, "0_ALAR_0") != NULL | strstr(UART_buffer, "1_ALAR_0") != NULL) {
            UART_clean_buffer();
            Status_Alarm_Enabled = 0b0;
            Status_Alarm_Triggered = 0b0;
            Status_Siren = 0b0;
            allArmed = 0;
        } else if (strstr(UART_buffer, "0_SIRN_0") != NULL | strstr(UART_buffer, "1_SIRN_0") != NULL) {
            UART_clean_buffer();
            Status_Siren = 0b0;
        } else if (strstr(UART_buffer, "0_SIRN_1") != NULL | strstr(UART_buffer, "1_SIRN_1") != NULL) {
            UART_clean_buffer();
            Status_Siren = 0b1;
        } else if (strstr(UART_buffer, "0_BEEPER") != NULL | strstr(UART_buffer, "1_BEEPER") != NULL) {
            UART_clean_buffer();
            SIREN = 0b1;
            delay_ms(250);
            SIREN = 0b0;
            delay_ms(250);
        } else if (strstr(UART_buffer, "0_XTRA_1") != NULL | strstr(UART_buffer, "1_XTRA_1") != NULL) {
            UART_clean_buffer();
            Status_Extra = 0b1;
        } else if (strstr(UART_buffer, "0_XTRA_0") != NULL | strstr(UART_buffer, "1_XTRA_0") != NULL) {
            UART_clean_buffer();
            Status_Extra = 0b0;
        }

        ///////////////////////////////////////////////////////////
        // State Processor 
        //////////////////////////////////////////////////////////

        if (AC_POWER) {
            Status_Ac_power = 0b1;
        } else {
            Status_Ac_power = 0b0;
        }

        if (MOTION_1 | MOTION_2 | (Status_Alarm_Triggered == 0b1)) {
            LED_RED = 1;
            if (Status_Alarm_Enabled == 0b1) {
                Status_Extra = 0b0;
                if (Status_Alarm_Triggered == 0b1) {
                    if (TMR0IF) {
                        if (cycleAlarmCounter == cycleAlarm) {
                            Status_Siren = 0b1;
                            if (allArmed == 0) {
                                allArmed = 1;
                                UART_Write_Text((uchar *) "ALL_SIREN_ON");
                            }
                        } else {
                            cycleAlarmCounter ++;
                            TMR0IF = 0;
                        }
                    }
                } else { // enter just one time after a motion is detected during alarm enabled
                    cycleAlarmCounter = 0;
                    Status_Alarm_Triggered = 0b1;
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
        }
        else {
            LED_RED = 0;
        }

        if (Status_Siren == 0b1) {
            SIREN = 0b1;
        } else {
            SIREN = 0b0;
        }

        if (Status_Siren == 0b1) {
            EXTRA = 0b1;
        } else {
            EXTRA = 0b0;
        }

        if (Status_Ac_power != Status_Ac_power_old |
                Status_Alarm_Enabled != Status_Alarm_Enabled_old |
                Status_Alarm_Triggered != Status_Alarm_Triggered_old |
                Status_Extra != Status_Extra_old |
                Status_Siren != Status_Siren_old) {
            if (Status_Ac_power != Status_Ac_power_old) {
                SIREN = 1;
                delay_ms(50);
                SIREN = 0;
            }
            Status_Ac_power_old = Status_Ac_power;
            Status_Alarm_Enabled_old = Status_Alarm_Enabled;
            Status_Alarm_Triggered_old = Status_Alarm_Triggered;
            Status_Extra_old = Status_Extra;
            Status_Siren_old = Status_Siren;
            send_Status();
        }

    }
}
