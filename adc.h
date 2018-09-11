/* 
 * File:   uart.h
 * Author: cardias
 *
 * Created on September 18, 2015, 12:39 PM
 */

#include "config.h"
#include "delay.h"


void ADC_Init()
 {
    //AN3 Channel Selection 
    ADCON0bits.CHS0 = 0b1;
    ADCON0bits.CHS1 = 0b1;
    
    //Enable ADC
    //ADCON0bits.ADON = 0b1;
    
    // VDD REF
    ADCON1bits.VCFG0 = 0b0;
    
    // A/D Port Configuration bit for RA6/AN3
    ADCON1bits.PCFG3 = 0b0;
    
    //Right justified 
    ADCON2bits.ADFM = 0b1;

    // 1us conversion
    ADCON2bits.ACQT2 = 0b1;
    ADCON2bits.ACQT1 = 0b0;
    ADCON2bits.ACQT1 = 0b0;
    
    //000 = FOSC/2
    ADCON2bits.ADCS2 = 0b0;
    ADCON2bits.ADCS1 = 0b0;
    ADCON2bits.ADCS0 = 0b0;
 }

unsigned int ADC_Get(){
    ADCON0bits.ADON = 0b1;
    delay_ms(1);
    ADCON0bits.GO_DONE = 1;
    while(ADCON0bits.GO_DONE == 1);
    unsigned int advalue = (unsigned int)(((unsigned char)ADRESH << 8) + (unsigned char)ADRESL);
    ADCON0bits.ADON = 0b0;
    return advalue;
}