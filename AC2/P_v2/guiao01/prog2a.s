
    .equ    getChar,2
    .equ    putChar,3
    .data
    .text
    .globl  main        # int main(void) {
main:                        # char c; -> $t0
do:                     # do{
    li  $v0,getChar     
    syscall
    move    $t0,$v0     # c = getChar();
    
    move    $a0,$t0     # putChar( c );
    li      $v0,putChar
    syscall

while:  bne $t0,'\n',do # } while( c != '\n' );
        li  $v0,0       # return 0;
        jr  $ra         # }