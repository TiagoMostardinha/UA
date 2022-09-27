	.data
str:	.asciiz	"Hello World"
	.eqv	print_int10,1
	.text
	.globl main

main:
	addiu	$sp,$sp,-4	# para salvaguardar o $ra
	sw	$ra,0($sp)
	
	la	$a0,str		# static char str[]="Arquitetura de Computadores I";
	jal	strlen		# chamar a funcao
	
	move	$a0,$v0		# copia o resultado da funcao strlen
	li	$v0,print_int10	# print_int10(strlen)
	syscall
 
	li	$v0,0		# return 0; 
	
	lw	$ra,0($sp)	# repor o valor de $ra
	addiu	$sp,$sp,4	# limpar a memoria alocada para a stack
	
	jr	$ra		# }


	# O argumento da função é passado em $a0 
	# O resultado é devolvido em $v0 
	# Sub-rotina terminal: não devem ser usados registos $sx 
strlen:	li	$t1,0		# len = 0; 
while:	lb	$t0,0($a0) 	# while(*s++ != '\0') 
	addiu	$a0,$a0,1 	# 
	beq 	$t0,'\0',endw	# { 
	addi	$t1,$t1,1	# len++; 
	j	while		# } 
endw:	move	$v0,$t1		# return len; 
 	jr 	$ra