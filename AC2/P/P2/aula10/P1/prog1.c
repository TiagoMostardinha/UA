#include <detpic32.h>

void delay(int ms){
    for(;ms>0;ms--){
        resetCoreTimer();
        while(readCoreTimer()<20000);
    }
}

void putc(char byte2send){
    while(U2STAbits.UTXBF ==1);
    U2TXREG = byte2send;
}

int main(void)
{
    // Configure UART2:
    U2BRG =  10;                // 1 - Configure BaudRate Generator ( U2BRG = (20Mhz / (16*115200))-1 ~ 10 )
    U2MODEbits.PDSEL = 0b00;    // 2 – Configure number of data bits, parity and number of stop bits (see U2MODE register)
    U2MODEbits.STSEL = 0;
    U2MODEbits.BRGH = 0;
        
    U2STAbits.UTXEN = 1;        // 3 – Enable the trasmitter and receiver modules (see register U2STA)
    U2STAbits.URXEN = 1;
    U2MODEbits.ON = 1;        // 4 – Enable UART2 (see register U2MODE)

    while(1){
        putc('+');
        delay(1000);
    }
    return 0;
}
