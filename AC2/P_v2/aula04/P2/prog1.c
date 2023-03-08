#include <detpic32.h>

int main(void)
{
    TRISB = TRISB & 0x80FF; // Configure RB8-RB14 as outputs
    TRISD = TRISD & 0xFF9F; // Configure RD5-RD6 as outputs

    LATB = LATB & 0x80FF; // Reset RB8-RB14
    LATD = LATD & 0xFFBF; // Reset RD5-RD6

    while (1)
    {
        char in = getChar();
        if(in >= 'a' && in <= 'g') in -= 0x20;      // Convert to uppercase
        if (in >= 'A' && in <= 'G')
        {
            in -= 'A';                              // Get the index of the leter A->0, G->6
            int val = (0x100 << in);
            LATB = (LATB & 0x00FF) | val;
        }
        else
        {
            LATB = (LATB & 0x00FF);                 // Clear display
        }
    }
    return 0;
}
