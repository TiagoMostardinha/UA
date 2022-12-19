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

main:                                   # void main(void) {
                                        #
        addiu   $sp,$sp,-12             # abrir espaco na stack
        sw      $ra,0($sp)              # salvaguardar $ra e $sx 
        sw      $s0,4($sp)              #
        sw      $s1,8($sp)              #
                                        #
        lui     $s1,SFR_BASE_HI         #
                                        #
        li      $s0,0                   #   int v = 0;
                                        #
        lw      $t1,TRISE($s1)          #   TRISE0 = 0; // Configura o porto RE0 como saída
        andi    $t1,$t1,0xFFFE          #
        sw      $t1,TRISE($s1)         #
                                        #
loop:                                   #   while(1) {
        lw      $t1,LATE($s1)           #
        andi    $t1,$t1,0xFFFE          #       $t1 = [LATE0]
                                        #
        or      $t2,$t1,$s0             #       LATE0 = v; // Escreve v no bit 0 do porto E
                                        #
        sw      $t2,LATE($s1)           #
                                        #  
        li      $a0,500                 #                                        
        jal     delay                   #       delay(500); // Atraso de 500ms
                                        #
        xor     $s0,$s0,1               #       v ^= 1; // complementa o bit 0 de v (v = v xor 1)
                                        #
        j       loop                    #   }
                                        #
        lw      $ra,0($sp)              #
        lw      $s0,4($sp)              #
        lw      $s1,8($sp)              #
        addiu   $sp,$sp,12               #
                                        #
        li      $v0,0                   #
        jr      $ra                     # }



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