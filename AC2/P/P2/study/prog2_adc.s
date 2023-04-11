    .data
    .equ SFR_BASE_HI, 0xBF88        # 16 MSbits of SFR area
    .equ TRISE, 0x6100              # TRISE address is 0xBF886100
    .equ PORTE, 0x6110              # PORTE address is 0xBF886110
    .equ LATE,  0x6120              # LATE address is 0xBF886120
    .equ TRISB, 0x6040
    .equ PORTB, 0x6050
    .equ LATB,  0x6060
    .equ getChar,2  
    .data
    .text
    .globl main

main:
    lui     $t0,SFR_BASE_HI

    lw      $t1,TRISE($t0)
    andi    $t1,$t1,0xFFF0
    sw      $t1,TRISE($t0)

    addiu   $sp,$sp,-4
    sw      $ra,0($ra)

loop:
    lw      $t1,LATE($t0)
    andi    $t1,$t1,0xFFF0
    
    li      $v0,getChar
    syscall

if0:    
    bne     $v0,'0',if1
    or      $t1,$t1,0x0001
    sw      $t1,LATE($t0)
    
    j       end
if1:
    bne     $v0,'0',if2
    or      $t1,$t1,0x0002
    sw      $t1,LATE($t0)
    
    j       end
if2:
    bne     $v0,'0',if3
    or      $t1,$t1,0x0004
    sw      $t1,LATE($t0)
    
    j       end
if3:
    bne     $v0,'0',else
    or      $t1,$t1,0x0008
    sw      $t1,LATE($t0)
    
    j       end
else:
    or      $t1,$t1,0x000F
    sw      $t1,LATE($t0)

    li      $a0,1
    jal     delay

    andi    $t1,$t1,0xFFF0
    sw      $t1,LATE($t0)

end:


    j       loop

end_loop:

    lw      $ra,0($sp)
    addiu   $sp,$sp,4

    li      $v0,0
    jr      $ra




delay:
    li      $v0,12
    syscall
loop_delay:
    li      $v0,11
    syscall

    mul     $a0,$a0,1000
    blt     $v0, $a0,end_delay

    j       loop_delay
end_delay:
    jr      $ra
    