#include <detpic32.h>
void putc1(char byte);
void delay(int ms);

int main(void)
{
    U1BRG = 10;              // 1 - Configure BaudRate Generator : ( U2BRG = (20Mhz / (16* Braut))-1  )
    U1MODEbits.PDSEL = 0b00; // 2 – Configure number of data bits, parity and number of stop bits
    U1MODEbits.STSEL = 0;    // only 1 stop bit
    U1MODEbits.BRGH = 0;     // divide by 16
                             // 3 – Enable the trasmitter and receiver modules (see register U2STA)
    U1STAbits.URXEN = 1;     // Enable Receiver
    U1STAbits.UTXEN = 1;     // Enable Trasnmiter

    U1MODEbits.ON = 1;       // 4 – Enable UART1 (see register U2MODE)

    while (1)
    {
        putc1(0x5A);
        delay(10);
    }
    return 0;
}


void putc1(char byte){
    while(U1STAbits.UTXBF == 1);
    U1TXREG = byte;
}

void delay(int ms){
    for(;ms > 0; ms--){
        resetCoreTimer();

        readCoreTimer();

        while(readCoreTimer() < 20000);
    }
}
