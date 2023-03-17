    .data
    .equ    RESET_CORE_TIMER, 12
    .equ    READ_CORE_TIMER, 11
    .equ    inkey,1
    .equ putChar, 3
    .equ printInt, 6
    .text
    .globl main

main:
    addiu   $sp,$sp,-20     # reservar s e reservar
    sw      $ra,0($sp)
    sw      $s0,4($sp)      # cnt1
    sw      $s1,8($sp)      # cnt5
    sw      $s2,12($sp)     # cnt10
    sw      $s3,16($sp)     # t

    li      $s0,0
    li      $s1,0
    li      $s2,0           # cnt1,cnt5,cnt10 = 0

    li      $s3,100         # t = 100

while:
    li      $v0,inkey
    syscall

if1:
    bne     $v0,'A',if2     # if(c == 'A')
    div     $s3,$s3,2

if2:
    bne     $v0,'N',endif2   # if (c == 'N')
    li      $s3,100
endif2:

    move    $a0,$s3
    jal     delay           # delay(t)

if:
    rem     $t0,$s0,2           
    bne     $t0,0,endif        # if ($s0 % 2 != 0)

    addi     $s1,$s1,1          # cnt5++     
endif:

if3:
    rem     $t0,$s0,10         
    bne     $t0,0,endif3       # if ($s0 % 5 != 0)

    addi    $s2,$s2,1          # cnt10++
endif3:

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
    lw      $s3,16($sp)
    addiu   $sp,$sp,20         # libertar espaco

    jr  $ra

delay:                                  # void delay(int ms) {
        move    $t0, $a0                #       $t0 = ms;
        
for:    ble     $t0, 0, endfor          #       for(; ms > 0; ms--) {
        li      $v0, RESET_CORE_TIMER   #               
        syscall                         #               resetCoreTimer();
read:   li      $v0, READ_CORE_TIMER    #
        syscall                         #               readCoreTimer();
        blt     $v0, 20000, read        #               while(readCoreTimer() < K);
        addi    $t0, $t0, -1            #               ms--;
        j       for                     #       }
endfor:                                 #       
        jr      $ra                     # }
