    .equ        UP,1
    .equ        DOWN,0
    .equ        inkey,1
    .equ        putChar,3
    .equ        printInt,6
    .data
    .globl main
main:
    addu    $sp,$sp,-12
    sw      $ra,0($sp)
    sw      $s0,4($sp)
    sw      $s1,8($sp)

    li      $s0,0           #cnt=0
    li      $s1,0           #state =0

do:
    li      $a0,'\r'
    li      $v0,putChar
    syscall

    move    $a0,$s0
    li      $a1,0x0003000A
    li      $v0,printInt
    syscall

    li      $a0,'\t'
    li      $v0,putChar
    syscall
     
    move    $a0,$s0
    li      $a1,0x00080002
    li      $v0,printInt
    syscall

    li      $a0,5
    jal     wait

    li      $v0,inkey
    syscall
    
if:
    bne     $v0,'+',if1
    li      $s1,UP
    j       endif
if1:
    bne     $v0,'-',endif
    li      $s1,DOWN
endif:


if2:
    bne     $s1,UP,else
    addi    $s0,$s0,1
    andi    $s0,$s0,0xff
    j       endif1
else:
    addi    $s0,$s0,-1
    andi    $s0,$s0,0xff
    
endif1:

while:
    bne     $v0,'q',do

    li      $v0,0
    jr      $ra

wait:
    mul     $a0,$a0,515000
    li      $t0,0
for:
    bge     $t0,$a0,endfor

    addi    $t0,$t0,1
    j       for
endfor:
    jr      $ra



