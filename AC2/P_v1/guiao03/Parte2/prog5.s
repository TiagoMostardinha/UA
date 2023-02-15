        .equ SFR_BASE_HI, 0xBF88        # 16 MSbits of SFR area
        .equ TRISE, 0x6100              # TRISE address is 0xBF886100
        .equ PORTE, 0x6110              # PORTE address is 0xBF886110
        .equ LATE,  0x6120              # LATE address is 0xBF886120
        .equ TRISB, 0x6040
        .equ PORTB, 0x6050
        .equ LATB,  0x6060
        .equ RESET_CORE_TIMER, 12
        .equ READ_CORE_TIMER, 11
        .data
        .text
        .globl main

main:
        addiu   $sp,$sp,-12             # abrir espaco para stack
        sw      $ra,0($sp)              # salvagurdar $ra e $sx
        sw      $s0,4($sp)              
        sw      $s1,8($sp)   

        li      $s0,SFR_BASE_HI

        lw      $t1,TRISE($s0)          # configurar RE[3..0] como saida
        andi    $t1,$t1,0xFFF0
        sw      $t1,TRISE($s0)

        li      $s1,0x0000              # count = 0x0000

loop:                                   # while(1){
        lw      $t1,LATE($s0)           #       $t1 = [LATE]
        andi    $t1,$t1,0xFFF0          #       RE[3..0] = 0
        or      $t1,$t1,$s1             #       RE[3..0] = count
        sw      $t1,LATE($s0)           #       WRITE LATE REGISTER

        li      $a0,666
        jal     delay

        andi    $t2,$t1,0x0008          #       $t2 = RE3
        srl     $t2,$t2,3               #       x000 to 000x
        sll     $s1,$s1,1               #       count << 1
        xori    $t2,$t2,0x0001          #       $t2 = RE3\
        or      $s1,$s1,$t2             #       first bit of count = RE3\

        andi    $s1,$s1,0x000F          #       count &= 0x000F

        j       loop                    # }
end_loop:

        lw      $ra,0($sp)              # repor $ra e $sx
        lw      $s0,4($sp)
        lw      $s1,8($sp)
        addiu   $sp,$sp,12              # libertar a stack

        li      $v0,0                   # return 0
        jr      $ra





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
        