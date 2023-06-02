#include <detpic32.h>

void putc(char byte2send){
    while(U2STAbits.UTXBF == 1);
    U2TXREG = byte2send;
}

char getc(void){
    while(U2STAbits.URXDA == 0);
    return U2RXREG;
}

int main(void){
    U2BRG = 10;
    U2MODEbits.BRGH = 0;
    U2MODEbits.PDSEL = 0;
    U2MODEbits.STSEL = 0;

    U2STAbits.UTXEN = 1;
    U2STAbits.URXEN = 1;

    U2MODEbits.ON = 1;

    while(1){
        resetCoreTimer();
        while(readCoreTimer()<20000000);
        char c;
        c=getc();
        putc(c);

    }
}
