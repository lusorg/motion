/*
 * File:   main.c
 * Author: me
 *
 * Created on June 10, 2018, 11:36 PM
 */
#include <xc.h>
#include <p18f4520.h>
#include <string.h> 

#include "config.h"
#include "delay.h"
#include "uart.h"

void main(void) {
    
    TRISB=0;
    PORTB=0;
    UART_Init();
    UART_clean_buffer();
    
    PORTB=0x00;
    delay_ms(200);
    PORTB=0x0F;
    delay_ms(200);
    PORTB=0x00;
    delay_ms(200);
    PORTB=0x0F;
        
    while(1) {
        if (strstr(UART_buffer, "1") != NULL){
            UART_clean_buffer();
            UART_Write_Text("1 OK");
            PORTB=0x0E;
        }
        else if (strstr(UART_buffer, "2") != NULL){
            UART_clean_buffer();
            UART_Write_Text("2 OK");
            PORTB=0x0D;
        }
        else if (strstr(UART_buffer, "3") != NULL){
            UART_clean_buffer();
            UART_Write_Text("3 OK");
            PORTB=0x0B;
        }
        else if (strstr(UART_buffer, "4") != NULL){
            UART_clean_buffer();
            UART_Write_Text("4 OK");
            PORTB=0x07;
        }   
        else if (strstr(UART_buffer, "ALL") != NULL){
            UART_clean_buffer();
            UART_Write_Text("ALL OK");
            PORTB=0x00;
        }
        else if (strstr(UART_buffer, "OFF") != NULL){
            UART_clean_buffer();
            UART_Write_Text("OFF OK");
            PORTB=0x0F;
        }  


      }
  }
