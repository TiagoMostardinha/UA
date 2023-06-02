#include <detpic32.h>

void putc(char byte2send)
{
    while (U2STAbits.UTXBF == 1)
        ;
    U2TXREG = byte2send;
}

void putstr(char *str)
{
    while (*str != '\0')
    {
        putc(*str);
        str++;
    }
}

void delay(int ms)
{
    for (; ms > 0; ms--)
    {
        resetCoreTimer();
        while (readCoreTimer() < 20000)
            ;
    }
}

int main(void)
{
    U2BRG = 10; // 20MHz/(16*115200-1)
    U2MODEbits.BRGH = 0;
    U2MODEbits.PDSEL = 0;
    U2MODEbits.STSEL = 0;

    U2STAbits.UTXEN = 1;
    U2STAbits.URXEN = 1;

    U2MODEbits.ON = 1;


    while (1)
    {
        putstr("String de teste\n");
        delay(1000);
    }
    return 0;
}
