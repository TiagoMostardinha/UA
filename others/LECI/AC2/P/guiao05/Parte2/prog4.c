#include <detpic32.h>

void send2displays(unsigned char value);
void delay(int ms);
unsigned char toBcd(unsigned char value);
void warningReset(int ms, unsigned char value);

int main(void) {
    int counter,i;                          // declare variables

    TRISB = (TRISB & 0x80FF) | 0x0001;      // initialize ports
    TRISD = TRISD & 0xFF9F;

    

    counter = 0;

    while (1) {
        PORTB = PORTB | 0x0001;

        i = 0;
        do {
            send2displays(toBcd(counter));
            delay(10);                      // freq 100 Hz 
        } while(++i < 100);

        if(PORTB == 1){
            counter++;
            delay(0.5);
        }
        else {
            counter--;
            delay(0.2);
        }

        if(counter >= 60){
            counter = 0;                    // increment counter (mod 60)
            warningReset(5000,counter);
        }
    }
    return 0;
}


void send2displays(unsigned char value)
{
    static const char display7Scodes[] = {
                                        0x3F, //0
                                        0x06, //1
                                        0x5B, //2
                                        0x4F, //3
                                        0x66, //4
                                        0x6D, //5
                                        0x7D, //6
                                        0x07, //7
                                        0x7F, //8
                                        0x6F, //9
                                        0x77, //A
                                        0x7C, //b
                                        0x39, //C
                                        0x5E, //d
                                        0x79, //E
                                        0x71  //F
                                        };
    static char displayFlag = 0;

    unsigned char dh = value >> 4;      // Get the index of the decimal part
    unsigned char dl = value & 0x0F;    // Get the index of the unitary part
    
    // Get the correct hex code for the number
    dh = display7Scodes[dh];
    dl = display7Scodes[dl];
    
    if (displayFlag == 0)
    {
        LATD = (LATD | 0x0040) & 0xFFDF;    // Dipslay High active and Display Low OFF
        LATB = (LATB & 0x80FF) | ((unsigned int)(dh)) << 8; // Clean the display and set the right value
    } else {
        LATD = (LATD | 0x0020) & 0xFFBF;    // Display High OFF and Display High active
        LATB = (LATB & 0x80FF) | ((unsigned int)(dl)) << 8; // Clean the display and set the right value
    }
    displayFlag = !displayFlag;
}

void delay(int ms) {
    for (; ms > 0; ms--) {
        resetCoreTimer();
        
        readCoreTimer();

        while (readCoreTimer() < 20000);
        ms--;
    }
}

unsigned char toBcd(unsigned char value) {
    return ((value / 10) << 4) + (value % 10);
}

void warningReset(int ms, unsigned char value) {   
    int cnt = 0;
    int i;
    while (cnt < 5)                 // Blink for 5 seconds
    {
        i = 1;
        while(i % 50 != 0)          // Light up both displays at freq 100Hz
        {
            send2displays(toBcd(value));
            delay(10);              
            i++;
        }
        LATB = (LATB & 0x80FF);     // Clean of both segments
        delay(500);                 // delay 500ms
        cnt++;
    }
}
