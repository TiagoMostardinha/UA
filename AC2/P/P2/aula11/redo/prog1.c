#include <detpic32.h>

void putc(char byte2send)
{
    while (U2STAbits.UTXBF == 1)
        ;
    U2TXREG = byte2send;
}

void _int_(32) isr_uart2(void)
{
    if (IFS1bits.U2RXIF == 1)
    {
        char c;
        c = U2RXREG; // Read character from FIFO (U2RXREG)
        putc(c);     // Send the character using putc()
        if (c == 't'){
        LATCbits.LATC14 = 1;
        }else {
            LATCbits.LATC14 = 0;
        }
        
    }
    IFS1bits.U2RXIF = 0;           // Clear UART2 Rx interrupt flag
}

int main(void)
{
    TRISCbits.TRISC14 = 0;
    U2BRG = 10;
    U2MODEbits.BRGH = 0;
    U2MODEbits.PDSEL = 0b00;
    U2MODEbits.STSEL = 0;

    U2STAbits.UTXEN = 1;
    U2STAbits.URXEN = 1;

    U2MODEbits.ON = 1;

    IEC1bits.U2RXIE = 1;
    IEC1bits.U2TXIE = 0;
    IPC8bits.U2IP = 6;
    IFS1bits.U2RXIF = 0;
    U2STAbits.URXISEL = 0;

    EnableInterrupts();

    while (1)
        ;
    return 0;
}
