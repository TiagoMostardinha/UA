	.data
str1:	.asciiz "Array"
str2:	.asciiz "de"
str3:	.asciiz "ponteiros"
	.align	2
array:	.word	str1, str2, str3
	.eqv	SIZE, 3
	.eqv	print_char, 11
	.eqv	print_string, 4
	.text
	.globl main
	
main:	la 	$t0,array 		# $t1 = p = &array[0] = array 
	li 	$t5,SIZE 		# 
 	sll 	$t5,$t5,2 		# 
 	addu 	$t1,$t0,$t5 		# $t2 = pultimo = array + SIZE 
 	
while:	bge	$t0, $t1, endw		#	while( p < pUltimo) {
	lw	$t2, 0($t0)		#		$t2 = *p;
	move	$a0, $t2		#		$a0 = $t2;
	li	$v0, print_string	#		
	syscall				#		print_string(*p);
	li	$a0, '\n'		#		$a0 = '\n';
	li	$v0, print_char		#
	syscall				#		print_char('\n');		
	addiu	$t0, $t0, 4		#		p++;
	j	while			#	}
endw:					#
	jr 	$ra			# } fim do programa
