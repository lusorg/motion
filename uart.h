/* 
 * File:   uart.h
 * Author: cardias
 *
 * Created on September 18, 2015, 12:39 PM
 */

#include "config.h"



#define UART_buf_size  16
unsigned char UART_buffer[UART_buf_size] = {"1234567890123456"};

void UART_Init() {
    // Enable interrupt
    PIE1bits.RCIE = 0b1; // uart receive interrupt
    INTCONbits.PEIE = 0b1; // periperial interrupt enable
    INTCONbits.GIE = 0b1; // Global interupt enable

    // Serial Interface            
    RCSTAbits.SPEN = 0b1; // ENABLE IO PIN
    RCSTAbits.RX9 = 0b0; // 8 bit communication
    RCSTAbits.CREN = 0b1; // Enable receiver

    TXSTAbits.TX9 = 0b0; // 8 bit mode
    TXSTAbits.SYNC = 0b0; // Async
    TXSTAbits.BRGH = 0b0; // HIGH BAUD RATE GENERATOR
    TXSTAbits.TXEN = 0b1;

    BAUDCONbits.BRG16 = 0b0; // 8 bit generator baud
    BAUDCONbits.ABDEN = 0b0; // Disable auto baud
    SPBRG = 12;
}

void UART_Write_byte(unsigned char data) {
    while (!TRMT);
    TXREG = data;
}

void UART_Write_Text(unsigned char *text) {
    int i;

    for (i = 0; text[i] != '\0'; i++)
        UART_Write_byte(text[i]);
}

void UART_clean_buffer() {
    /*int i = 0;
    for (i = 0; i < UART_buf_size; i++)
        UART_buffer[i] = (unsigned char) "-";
    */
    memset(UART_buffer,0,sizeof(UART_buffer));
}

void interrupt UART_add_buffer() {
    //char byte_rx = RCREG;
    // SHIFT ALL BUFFER  
    for (int i = 0; i < UART_buf_size - 1; i++) {
        UART_buffer[i] = UART_buffer[i + 1];
    }
    UART_buffer[UART_buf_size - 1] = RCREG;
}