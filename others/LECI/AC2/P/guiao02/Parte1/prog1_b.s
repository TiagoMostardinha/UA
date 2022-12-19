# int main(void){
# int counter = 0;
# while(1) {
#    resetCoreTimer();
#    while(readCoreTimer() < 200000);
#    printInt(counter++, 10 | 4 << 16); // Ver nota1
#    putChar('\r'); // cursor regressa ao inicio da linha
# }
# return 0;
# } 


        .equ READ_CORE_TIMER, 11
        .equ RESET_CORE_TIMER, 12
        .equ putChar, 3
        .equ printInt, 6

        .data
        .text
        .globl main

main:   li      $t0, 0                  # int counter = 0;

while:  li      $v0, READ_CORE_TIMER    # while(1) {
        syscall

        blt     $v0, 200000, while      #    while(readCoreTimer() < 200000);

        li      $v0, RESET_CORE_TIMER   #       $v0 = 12
        syscall

        addi    $t0, $t0, 1             #       $a0 = ++counter
        move    $a0, $t0                
        li      $a1, 0x0004000A         #       $a1 = 10 | 4 << 16

        li      $v0, printInt           #       printInt($a0)
        syscall

        li      $a0, '\r'
        li      $v0, putChar  
        syscall

endw:   j       while


        li  $v0, 0                      # return 0
        jr  $ra