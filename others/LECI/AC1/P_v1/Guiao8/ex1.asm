	.data
str:	.asciiz	"2020 e 2024 sao anos bissextos"	# static char str[]="2020 e 2024 sao anos bissextos"; 
	.eqv	print_int10,1
	.text
	.globl main
	
main:		# int main(void) { 
	addiu	$sp,$sp,-4		# salvaguardar $ra
	sw	$ra,0($sp)		# reservar espaco para stack
	
	la	$a0,str			
	jal	atoi			# chamar a sub-rotina atoi
	
	move	$a0,$v0
	li	$v0,print_int10		# print_int10( atoi(str) ); 
	syscall	
	
	lw	$ra,0($sp)
	addiu	$sp,$sp,4
	
	li	$v0,0			# return 0; 
	jr	$ra
# }


##############################

# Mapa de registos
# res: $v0
# s: $a0
# *s: $t0
# digit: $t1
# Sub-rotina terminal: n?o devem ser usados registos $sx 

atoi:		# unsigned int atoi(char *s) { 
	li	$v0,0		# unsigned int digit, res = 0; 
	
while:	lb	$t0,0($a0)	# $t0 = s[0]
	blt	$t0,'0',endw	
	bgt	$t0,'9',endw	# while( (*s >= '0') && (*s <= '9') ) { 
	
	addi	$t1,$t0,-0x30	# digit = *s++ - '0'; 
	addiu	$a0,$a0,1	#*s++
	
	mul	$v0,$v0,10	# res = res*10
	add	$v0,$v0,$t1	# res = 10 * res + digit; 
	
	j	while		# } 
endw:
	jr	$ra		# return res; 
# } 