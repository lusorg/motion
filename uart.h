/* 
 * File:   uart.h
 * Author: cardias
 *
 * Created on September 18, 2015, 12:39 PM
 */

#define UART_buf_size 8
char UART_buffer[UART_buf_size];
unsigned char UART_Buffer_Ptr = 0;
unsigned char received_char = 0;

//STATE
char Status_Alarm_Triggered;
char Status_Alarm_Enabled;
char Status_Ac_power;
char Status_Siren;
char Status_Extra;

char Status_Alarm_Triggered_old;
char Status_Alarm_Enabled_old;
char Status_Ac_power_old;
char Status_Siren_old;
char Status_Extra_old;
unsigned char allArmed = 0;

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
    unsigned char toSend;
    for (int i = 0; text[i] != '\0'; i++){
        toSend = text[i];
        UART_Write_byte(toSend);
    }
}

void UART_clean_buffer() {
    memset(UART_buffer, 45, sizeof (UART_buffer));
    UART_Buffer_Ptr = 0;
    received_char = 0;
    LED_BLUE = 0;
}
 void send_Status() {
    unsigned int adcValue;
    unsigned int batValue;
    unsigned char buffer[10];

    adcValue = ADC_Get();

    unsigned long temp = ((unsigned long) adcValue * (unsigned long) 5000);
    batValue = temp / 1023;
    itoa(buffer, batValue, 10);
    UART_Write_Text(buffer);

    if (Status_Alarm_Triggered == 0b1) {
        UART_Write_Text((uchar *) "|ON|");
    } else {
        UART_Write_Text((uchar *) "|OFF|");
    }

    if (Status_Alarm_Enabled == 0b1) {
        UART_Write_Text((uchar *) "ON|");
    } else {
        UART_Write_Text((uchar *) "OFF|");
    }

    if (Status_Ac_power == 0b1) {
        UART_Write_Text((uchar *) "AC|");
    } else {
        UART_Write_Text((uchar *) "DC|");
    }

    if (Status_Siren == 0b1) {
        UART_Write_Text((uchar *) "ON|");
    } else {
        UART_Write_Text((uchar *) "OFF|");
    }

    if (Status_Extra == 0b1) {
        UART_Write_Text((uchar *) "ON");
    } else {
        UART_Write_Text((uchar *) "OFF");
    }
}
 
void interrupt UART_add_buffer() {
    //char byte_rx = RCREG;
    // SHIFT ALL BUFFER
    LED_BLUE = 1;
    if (PIR1bits.RCIF) {
        UART_buffer[UART_Buffer_Ptr] = RCREG;
        received_char++;
        UART_Buffer_Ptr = (unsigned char)((unsigned char)UART_Buffer_Ptr + (unsigned char)1);
        if (UART_Buffer_Ptr == UART_buf_size)
            UART_Buffer_Ptr = (unsigned char)((unsigned char)UART_Buffer_Ptr - (unsigned char)1); // STATURATION
        
        PIR1bits.RCIF = 0;
    }
    
   
}