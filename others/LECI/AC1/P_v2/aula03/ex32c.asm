# Mapa de registos:
# $t0 � value
# $t1 � bit
# $t2 - i
	.data
str1:	.asciiz	"Introduza um numero: "
str2:	.asciiz "\nO valor em bin�rio e': "
	.eqv	print_string,4
	.eqv	read_int,5
	.eqv	print_char,11
	.text
	.globl	main
main: 	la	$a0,str1
	li	$v0,print_string 	# (instru��o virtual)
	syscall 			# print_string(str1);
	
	li	$v0,read_int		# value=read_int();
	syscall
	move	$t0,$v0

	la	$a0,str2		# print_string("...");
	li	$v0,print_string
	syscall
	
	li 	$t2,0			# i = 0
	
for:	bge	$t2,32,endfor		# while(i < 32) {

	rem	$t4,$t2,4		# if((i % 4) == 0) // resto da divis�o inteira
	bne	$t4,$0,endif2
	
	li	$a0,' '			#print_char(' ');
	li	$v0,print_char
	syscall
endif2:

	andi	$t4,$t0,0x80000000
	srl	$t1,$t4,31
	
	addi	$a0,$t1,0x30
	li	$v0,print_char
	syscall
	
	sll	$t0,$t0,1		# value = value << 1;

	addi	$t2,$t2,1		# i++;
	
	j	for			# }
endfor: 
	jr	$ra
