/* 
 * File:   uart.h
 * Author: cardias
 *
 * Created on September 18, 2015, 12:39 PM
 */

//#include <xc.h>

#define UART_buf_size  32
unsigned char UART_buffer[UART_buf_size] = "--------------------------------";

void UART_Init()
 {
    // Enable interrupt
    PIE1bits.RCIE   = 0b1; // uart receive interrupt
    INTCONbits.PEIE = 0b1; // periperial interrupt enable
    INTCONbits.GIE  = 0b1; // Global interupt enable
    
    // Serial Interface        
    TRISCbits.RC6 = 0b1;
    TRISCbits.RC7 = 0b1;
    
    RCSTAbits.SPEN = 0b1; // ENABLE IO PIN
    RCSTAbits.RX9 = 0b0; // 8 bit communication
    RCSTAbits.CREN = 0b1; // Enable receiver
    
    TXSTAbits.TX9 = 0b0; // 8 bit mode
    TXSTAbits.SYNC = 0b0; // Async
    TXSTAbits.BRGH = 0b0; // HIGH BAUD RATE GENERATOR
    TXSTAbits.TXEN = 0b1;
    
    BAUDCONbits.BRG16 = 0b0; // 8 bit generator baud
    BAUDCONbits.ABDEN = 0b0; // Disable auto baud
    SPBRG  = 25;
 }


 void UART_Write_byte(char data)
{
  while(!TRMT);
  TXREG = data;
}
 
 void UART_Write_Text(char *text)
{
  int i;
  
  for(i=0;text[i]!='\0';i++)
    UART_Write_byte(text[i]);
}
 
  void UART_clean_buffer(){
    int i = 0;
    for(i=0; i < UART_buf_size ; i++)
        UART_buffer[i] = "-";
  }
  
void interrupt UART_add_buffer()
{
     int i = 0;
     char byte_rx = RCREG;
     PORTB=0x00;
     // SHIFT ALL BUFFER  
     if ((byte_rx != '\r') && (byte_rx != '\n')) {
         for(i=0; i < UART_buf_size-1; i++){
             UART_buffer[i]=UART_buffer[i+1];
         }
         UART_buffer[UART_buf_size-1] = byte_rx;
     }
     PORTB=0x0F;
}