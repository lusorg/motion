/* 
 * File:   uart.h
 * Author: cardias
 *
 * Created on September 18, 2015, 12:39 PM
 */

#define UART_buf_size  16
/*volatile unsigned*/ char UART_buffer[UART_buf_size];
unsigned char UART_Buffer_Ptr = 0;

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
    SPBRG = 51;
}

void UART_Write_byte(unsigned char data) {
    while (!TRMT);
    TXREG = data;
}

void UART_Write_Text(unsigned char *text) {
    for (int i = 0; text[i] != '\0'; i++)
        UART_Write_byte(text[i]);
}

void UART_clean_buffer() {
    memset(UART_buffer, 45, sizeof (UART_buffer));
    UART_Buffer_Ptr = 0;
}

void interrupt UART_add_buffer() {
    //char byte_rx = RCREG;
    // SHIFT ALL BUFFER
    
    if (PIR1bits.RCIF) {
        /*
        
        for (int i = 0; i < UART_buf_size - 1; i++) {
            UART_buffer[i] = (unsigned char)UART_buffer[i + 1];
        }
        UART_buffer[UART_buf_size - 1] = RCREG;
         */
        
        UART_buffer[UART_Buffer_Ptr] = RCREG;
        UART_Buffer_Ptr = (unsigned char)((unsigned char)UART_Buffer_Ptr + (unsigned char)1);
        if (UART_Buffer_Ptr == UART_buf_size)
            UART_Buffer_Ptr = (unsigned char)((unsigned char)UART_Buffer_Ptr - (unsigned char)1); // STATURATION
        
        PIR1bits.RCIF = 0;
         
    }
    
}