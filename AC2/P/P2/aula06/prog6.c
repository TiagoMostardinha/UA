#include <detpic32.h>

int main(void)
{
    // Configure all (digital I/O, analog input, A/D module)
    i = 0;
    while (1)
    {
        if (i == 0) // 0, 200ms, 400ms, 600ms, ...
        {
            // Convert analog input (4 samples)
            // Read samples and calculate the average
            // Calculate voltage amplitude
            // Convert voltage amplitude to decimal
        }
        // Send voltage value to displays
        // Wait 10 ms (using the core timer)
        i = (i + 1) % ? ? ;
    }
    return 0;
}