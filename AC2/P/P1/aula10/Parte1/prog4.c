#include <detpic32.h>
#include "delay.c"
#include "putc.c"

void putstr(char *str);

int main(void)
{

    // 600,N,8,1 - 1200,O,8,2 - 9600,E,8,1 - 19200,N,8,2 - 115200,E,8,1
    // U2BRG = (20MHz / (16 * 1920) - 1)

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
        delay(1000);
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
