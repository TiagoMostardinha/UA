    .equ    inkey,1
    .equ    putChar,3
    .data
    .text
    .globl  main

main:                       # int main(void){
                            # char c; -> $t0
do:                         # do {
    li      $v0,inkey       # 
    syscall                 #
    move    $t0,$v0         # c = inkey();

if: beq     $t0,0,else      # if( c != 0 )

    move    $a0,$t0
    li      $v0,putChar     # putChar( c );
    syscall
else:                       # else
    li      $a0,'.'         # putChar('.');
    li      $v0,putChar     
    syscall 
while:  bne $t0,'\n',do     # } while( c != '\n' );
    li  $v0,0               # return 0;
    jr  $ra                 # }