#include <detpic32.h>

volatile char c;

void putc(char byte){
    while(U2STAbits.UTXBF == 1);
    U2TXREG = byte;
}

void putstr(char *str){
    while(*str != '\0'){
        putc(*str);
        str++;
    }
}


int main(void){
    U2BRG = 129;            //U2BRG = (20Mhz / (16*9600))-1 ~129
    U2MODEbits.BRGH = 0;
    U2MODEbits.PDSEL = 0b10;
    U2MODEbits.STSEL = 2;
    U2STAbits.UTXEN = 1;
    U2STAbits.URXEN = 1;

    // Configure UART2 interrupts, RX interrupts enabled and TX interrupts disabled: 
    IEC1bits.U2RXIE = 1;    // enable U2RXIE, disable U2TXIE (register IEC1) 
    IEC1bits.U2TXIE = 0;
    IPC8bits.U2IP = 6;      // set UART2 priority level (register IPC8) 
    IFS1bits.U2RXIF = 0;     // clear Interrupt Flag bit U2RXIF (register IFS1)
    U2STAbits.URXISEL = 0;                            // define RX interrupt mode (URXISEL bits) 

    U2MODEbits.ON = 1;
    
    TRISEbits.TRISE4 = 0;
    TRISB = TRISB & 0xFFE1;
    LATB = LATB & 0xFFE1;
    LATEbits.LATE4 = 0;

    EnableInterrupts();

    while (1);

    return 0;
}


void _int_(32) isr_uart2(void) {
    if (IFS1bits.U2RXIF == 1) {
        char c = U2RXREG;           // Read character from FIFO (U2RXREG)
        
        if(c == 'P'){
            putstr("DipSwitch=");
            putc('0' + PORTBbits.RB3);
            putc('0' + PORTBbits.RB2);
            putc('0' + PORTBbits.RB1);
            putc('0' + PORTBbits.RB0);
        }
        if(c == 'T'){
            LATEbits.LATE4 = !LATEbits.LATE4;
        }
    }
    IFS1bits.U2RXIF = 0;       // Clear UART2 Rx interrupt flag
}
