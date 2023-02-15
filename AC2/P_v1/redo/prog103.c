#include <detpic32.h>
void putc(char byte);
void delay(int ms);
void putstr(char *str);

int main(void)
{

    // Configure UART2 (115200, N, 8, 1)
    U2BRG = 10;              // 1 - Configure BaudRate Generator : ( U2BRG = (20Mhz / (16*115200))-1 ~ 10 )
    U2MODEbits.PDSEL = 0b00; // 2 – Configure number of data bits, parity and number of stop bits
    U2MODEbits.STSEL = 0;    // only 1 stop bit
    U2MODEbits.BRGH = 0;     // divide by 16
                             // 3 – Enable the trasmitter and receiver modules (see register U2STA)
    U2STAbits.URXEN = 1;     // Enable Receiver
    U2STAbits.UTXEN = 1;     // Enable Trasnmiter

    U2MODEbits.ON = 1;       // 4 – Enable UART2 (see register U2MODE)

    while (1)
    {
        putstr("String de teste\n");
        delay(2000);
    }
    return 0;
}

void putstr(char *str)
{
    while(*str != '\0'){
        putc(*str);          // use putc() function to send each charater ('\0' should not be sent)
        str++;
    }
}
// ------------------------
void delay(int ms){
    for(;ms > 0; ms--){
        resetCoreTimer();

        readCoreTimer();

        while(readCoreTimer() < 20000);
    }
}

void putc(char byte){
    while(U2STAbits.UTXBF == 1);
    U2TXREG = byte;
}

/*void putstr(char *str) { 
    while(*str != '\0'){
        putc(*str);          // use putc() function to send each charater ('\0' should not
        str++;              // be sent)
    }
}*/
