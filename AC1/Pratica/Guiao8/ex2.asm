	.data
	.eqv	MAX_STR_SIZE,33		# define MAX_STR_SIZE 33 
	.eqv	read_int,5
	.eqv	print_string,4
	
str:	.space	MAX_STR_SIZE		# static char str[MAX_STR_SIZE]; 
str1:	.asciiz "\n"

	.text
	.globl	main
	
main:		# int main(void) { 
	addiu	$sp,$sp,-8
	sw	$ra,0($sp)
	sw	$s0,0($sp)

do:					# do { 
	li	$v0,read_int		
	syscall
	move	$s0,$v0			# val = read_int(); 
	
	move	$a0,$s0
	li	$a1,2
	la	$a2,str
	jal	itoa			# itoa(val, 2, str)
	
	move	$a0,$v0
	li	$v0,print_string	# print_string( itoa(val, 2, str) ); 
	syscall
	
	move	$a0,$s0
	li	$a1,8
	la	$a2,str
	jal	itoa			# itoa(val, 8, str)
	
	move	$a0,$v0
	li	$v0,print_string	# print_string( itoa(val, 8, str) );
	syscall
	
	move	$a0,$s0
	li	$a1,16
	la	$a2,str
	jal	itoa			# itoa(val, 16, str)
	
	move	$a0,$v0
	li	$v0,print_string	# print_string( itoa(val, 16, str) ); 
	syscall
	
############Desnecessario###########
	la	$a0,str1
	li	$v0,print_string
	syscall
######Apenas para separar com \n####

	bne	$s0,0,do		# } while(val != 0); 
	
	li	$v0,0			# return 0; 

	
	lw	$ra,0($sp)		# repor $ra e $s0
	lw	$ra,4($sp)
	
	addiu	$sp,$sp,8		# libertar espaco da stack
	
	jr	$ra			# } 
	
	
######################

itoa:					# char *itoa(unsigned int n, unsigned int b, char *s) {
	addiu	$sp, $sp, -20		#	meter espaco na pilha
	sw	$ra, 0($sp)		#	guardar o $ra na pilha
	sw	$s0, 4($sp)		#	guardar registos $sX na pilha
	sw	$s1, 8($sp)		#
	sw	$s2, 12($sp)		#
	sw	$s3, 16($sp)		#
					#	passa n, b e s para callee-saved
	move	$s0, $a0		# 	s0 = n
	move	$s1, $a1		#	s1 = b
	move	$s2, $a2		#	s2 = s
	move	$s3, $a2		#	s3 = s
	
do1:					#	do{
	rem	$t0, $s0, $s1		#		digit = n % b;
	div	$s0, $s1		#		n/b;
	mflo	$s0			#		n = n/b
	move	$a0, $t0		#		$a0 = digit
	jal	toascii			#		toascii(digit)
	sb	$v0, 0($s3)		#		*p = return toascii(digit)
	addiu	$s3, $s3, 1		#		p++;
while:	bgt	$s0, 0, do1		#	while(n > 0);
	sb	$0, 0($s3)		#	*p = '\0';
	move	$a0, $s2		#	$a0 = s;
	jal	strrev			#	strrev(s);
	move	$v0, $s2		#
					#
	lw	$ra, 0($sp)		#	ir buscar o $ra
	lw	$s0, 4($sp)		#	repor registos $sX na pilha
	lw	$s1, 8($sp)		#
	lw	$s2, 12($sp)		#
	lw	$s3, 16($sp)		#
	addiu 	$sp, $sp, 20		#	repor o tamanho da pilha
	jr	$ra			# } fim do programa
	
	
strcpy:					# char *strcpy(char *dst char *src) {
	li	$t0, -1			#	int i = 0;
	move	$t2, $a0			#
do2:					#	do {
	addi	$t0, $t0, 1		#		i++;
	addu	$a0, $a0, $t0		#		$a0 = &(dst[i]);
	lb	$t1, 0($a1)		#		$t1 = src[i];
	sb	$t1, 0($a0)		#		dts[i] = src[i];
while2:	bne	$t1, '\0', do2		#	} while(src[i] != '\0');
	move	$v0, $t2			#	return dst;
	jr	$ra			# }	fim do programa


strrev: 				# char * strrev(char *str) {
	addiu 	$sp, $sp, -16 		# 	reserva espaço na stack
 	sw 	$ra, 0($sp) 		# 	guarda endereço de retorno
	sw 	$s0, 4($sp) 		# 	guarda valor dos registos
	sw 	$s1, 8($sp) 		# 	$s0, $s1 e $s2
	sw 	$s2, 12($sp) 		#
	move 	$s0, $a0 		# 	registo "callee-saved"
	move 	$s1, $a0 		# 	p1 = str
	move 	$s2, $a0 		# 	p2 = str
while1: lb	$t1, 0($s2)		#	$t1 = *p2;
	beq	$t1, '\0', endw1	# 	while( *p2 != '\0' ) {
	addiu	$s2, $s2, 1 		# 		p2++;
	j 	while1 			# 	}
endw1:	addiu	$s2, $s2, -1 		# 	p2--;
while3: bge	$s1, $s2, endw3		# 	while(p1 < p2) {
	move 	$a0, $s1 		#
	move 	$a1, $s2		#
 	jal 	exchange 		# 		exchange(p1,p2);
 	addiu	$s1, $s1, 1
 	addiu	$s2, $s2, -1
	j 	while3 			# 	}
endw3:	move 	$v0, $s0 		# 	return str
	lw 	$ra, 0($sp) 		# 	repõe endereço de retorno
 	lw 	$s0, 4($sp) 		# 	repõe o valor dos registos
	lw 	$s1, 8($sp)		# 	$s0, $s1 e $s2
	lw 	$s2, 12($sp) 		#
	addiu 	$sp, $sp, 16		# 	liberta espaço da stack
	jr 	$ra 			# }	termina a sub-rotina
	
exchange:				# void cxchange(char *c1, char *c2) {
	lb	$t0, 0($a0)		#	$t0 = *c1:
	lb	$t1, 0($a1)		#	$t1 = *c2;
	sb	$t0, 0($a1)
	sb	$t1, 0($a0)
	jr	$ra			# } fim do programa
	
	
	
toascii:				# char toascii(char v) {
	addi	$v0, $a0, '0'		#	v += '0';
if:	ble	$v0, '9', endif		#	if (v > '9') {
	addi	$v0, $v0, 7		#		v += 7 // 'A' - '9' -1
endif:
	jr	$ra			# } fim do programa