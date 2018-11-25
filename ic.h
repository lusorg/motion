
void IC_Init(){
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
    
    T0CONbits.TMR0ON = 0;
    
    //SET RF
    RF_M0 = 0b0;
    RF_M1 = 0b0;
    
    SIREN = 0b0;
    EXTRA = 0b0;
}