        .equ    RESET_CORE_TIMER, 12
        .equ    READ_CORE_TIMER, 11
        .data
        .text
        .globl main

delay:
        mul     $a0, $a0, K             # K -> final    :       ms * K

        li      $v0, RESET_CORE_TIMER   # $v0 = 12
        syscall

loop_delay: 
        li      $v0, READ_CORE_TIMER    # readCoreTimer()
        syscall
     
        blt     $v0, $a0, loop_delay    # while(readCoreTimer() < K * ms);

end_loop:
        jr  $ra