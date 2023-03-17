#include <detpic32.h>

void send2display(unsigned char value){
    static const char display7Scodes[] = {0x3F, 0x06, 0x5B, 0x4F, 0x66, 0x6D, 0x7D, 0x07, 0x7F, 0x6F, 0x77, 0x7C, 0x39, 0x5E, 0x79, 0x71};

    unsigned char dh = value >> 4;
    unsigned char dl = value & 0x0F;

    dh = display7Scodes[dh];
    dl = display7Scodes[dl];

    LATD = (LATD | 0x0040) & 0xffdf;
    LATB = (LATB | 0x80ff) | ((unsigned int) dh ) << 8;

    delay(2);               // 1/0.002s = 500Hz

    LATD = (LATD | 0x0040) & 0xffbf;
    LATB = (LATB | 0x80ff) | ((unsigned int) dl ) << 8;
}
