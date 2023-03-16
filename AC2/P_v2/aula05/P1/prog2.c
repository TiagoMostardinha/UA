#include <detpic32.h>

void delay(int ms){
    for(;ms > 0;ms--){
        resetCoreTimer();
        while(readCoreTimer() < 20000);
    }
}

void send2display(unsigned char value){
    static const char display7Scodes[] = {0x3F, 0x06, 0x5B, 0x4F, 0x66, 0x6D, 0x7D, 0x07, 0x7F, 0x6F, 0x77, 0x7C, 0x39, 0x5E, 0x79, 0x71};

    unsigned char dh = value >> 4;
    unsigned char dl = value & 0x0F;

    dh = display7Scodes[dh];
    dl = display7Scodes[dl];
    
    LATD = (LATD | 0x0040) & 0xffdf;
    LATB = (LATB & 0x80ff) | ((unsigned int) (dh) ) << 8;

    delay(10);

    LATD = (LATD | 0x0020) & 0xffbf;
    LATB = (LATB & 0x80ff) | ((unsigned int) (dl) ) << 8;
}

int main(void){
    TRISB = TRISB & 0x80FF;
    TRISD = TRISD & 0xff9f;
    
    while (1){
        send2display(0x12);
  
    }
    return 0;
}
