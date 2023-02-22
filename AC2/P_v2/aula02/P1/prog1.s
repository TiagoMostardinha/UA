# 20 000 000 Hz	- 	1s
# 5 Hz		    -	(1/x)s

    .data
    .equ    putChar,3
    .equ    printInt,6
    .equ    readCoreTimer,11
    .equ    resetCoreTimer,12
    .text
    .globl  main

main:
        li      $t0,0               # counter = 0

while:                              # while(1){
        li      $v0,readCoreTimer   
        syscall

        blt     $v0,200000,while    # while(readCoreTimer<200000)
        #blt     $v0,2000000,while  # 10 Hz
        #blt     $v0,20000000,while # 1 Hz
        #blt     $v0,4000000,while  # 5 Hz

        li      $v0,resetCoreTimer  # resetCoreTimer()
        syscall

        addi    $t0,$t0,1           # counter++

        move    $a0,$t0
        li      $a1,0x0004000A      # $a1 = 0x0004000A
        li      $v0,printInt        # printInt(counter++, 10 | 4 << 16)
        syscall

        li      $a0,'\r'            
        li      $v0,putChar         # putChar('\r')
        syscall
        
        j       while               # }

endw:
        li      $v0,0               # return 0
        jr      $ra

