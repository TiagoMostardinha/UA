    .data
    .equ    printInt,6
    .equ    putChar,3
    .text
    .globl  main

main:
    addiu   $sp,$sp,-16         # reservar espaco
    sw      $ra,0($sp)          # salvaguardar s e ra
    sw      $s0,4($sp)
    sw      $s1,8($sp)
    sw      $s2,12($sp)

    li      $s0,0               # cnt1  = 0
    li      $s1,0               # cnt5  = 0
    li      $s2,0               # cnt10 = 0

while:

    li      $a0,100             # 0.1s
    jal     delay

    addi    $s0,$s0,1           # cnt1++

if:
    rem     $t0,$s0,2           
    bne     $t0,0,endif        # if ($s0 % 2 != 0)

    addi     $s1,$s1,1          # cnt5++     
endif:

if2:
    rem     $t0,$s0,10         
    bne     $t0,0,endif2       # if ($s0 % 5 != 0)

    addi    $s2,$s2,1          # cnt10++
endif2:

    move    $a0,$s0     
    li      $a1,0x0005000A
    li      $v0,printInt
    syscall

    li      $a0,'\t'
    li      $v0,putChar
    syscall

    move    $a0,$s1     
    li      $a1,0x0005000A
    li      $v0,printInt
    syscall
    
    li      $a0,'\t'
    li      $v0,putChar
    syscall
    move    $a0,$s2    
    li      $a1,0x0005000A
    li      $v0,printInt
    syscall
    
    li      $a0,'\r'
    li      $v0,putChar
    syscall

    j   while
endw:                           # }

    li      $v0,0               # return 0

    lw      $ra,0($sp)          # salvaguardar s e ra
    lw      $s0,4($sp)
    lw      $s1,8($sp)
    lw      $s2,12($sp)
    addiu   $sp,$sp,16         # libertar espaco

    jr  $ra


# delay
delay:                                  # void delay(int ms) {
        move    $t0, $a0                #       $t0 = ms;
        
for:    ble     $t0, 0, endfor          #       for(; ms > 0; ms--) {
        li      $v0, 12   #               
        syscall                         #               resetCoreTimer();
read:   li      $v0, 11    #
        syscall                         #               readCoreTimer();
        blt     $v0, 20000, read        #               while(readCoreTimer() < K);
        addi    $t0, $t0, -1            #               ms--;
        j       for                     #       }
endfor:                                 #       
        jr      $ra                     # }
