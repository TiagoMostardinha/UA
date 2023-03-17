#include <detpic32.h>
void putc(char byte);
void delay(int ms);
void putstr(char *str);
void configureUART(unsigned int baud, char parity, unsigned int stopbits);

int main(void)
{

    configureUART(600,'N',1);
    //configureUART(1200,'O',2);
    //configureUART(9600,'E',1);
    //configureUART(19200,'N',2);
    //configureUART(115200,'E',1)

    while (1)
    {
        putstr("String de teste\n");
        delay(2000);
    }
    return 0;
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

void putstr(char *str){
    while(*str != '\0'){
        putc(*str);
        str++;
    }
}

void configureUART(unsigned int baud, char parity, unsigned int stopbits){
    if(baud >= 600 || baud <= 115200){
        U2BRG = ((PBCLK + 8 * baud) / (16 * baud)) - 1;    // Aproximate to closest baudrate
    } else{
        U2BRG = 10;
    }

    if(parity == 'N'){
        U2MODEbits.PDSEL = 0b00;    // 00 = 8-bit data, no parity
    } else if(parity == 'E'){
        U2MODEbits.PDSEL = 0b01;        // 01 = 8-bit data, even parity
    } else if(parity == 'O'){
        U2MODEbits.PDSEL = 0b10;        // 10 = 8-bit data, odd parity
    } else{
        U2MODEbits.PDSEL = 0b00;        // DEFAULT NO PARITY 8 BITS
    }

    if (stopbits == 1 || stopbits == 2){  
        U2MODEbits.STSEL = stopbits - 1;// Number of stopbits
    }
    else{
        U2MODEbits.STSEL = 0;           // DEFAULT 1 STOPBIT
    }

    U2MODEbits.BRGH = 0;                // Divide by 16
    U2STAbits.URXEN = 1;                // Enable Receiver
    U2STAbits.UTXEN = 1;                // Enable Transmitter
    U2MODEbits.ON = 1;                  // Enable UART2
}
