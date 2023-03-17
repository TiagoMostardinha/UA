	.data
	.eqv	TRUE,1
	.eqv	FALSE,0
	.eqv SIZE, 5
	.eqv print_string, 4
	.eqv print_double, 3
	.eqv read_double, 7
arr:	.space	40
str1:	.asciiz "\nIntroduza um número: "
str2:	.asciiz "\nValor mediano: "
str3:	.asciiz "\nArray ordenado: "
str4:	.asciiz ", "
	.text
# text #########
# $t0:	i
# $t1:	hT
# $t2:	nval-1
# $t3:	&array[i]
# $f2:	aux
median:		# double median(double *array, int nval){
	move	$t2,$a1		# $t2 = nval
m_do:				# do{
	li	$t1,FALSE	# houveTroca = FALSE;
	
	li	$t0,0		# i=0
	sll	$t2,$t2,3
	addi	$t2,$t2,-8	# (nval-1) *8
	
m_for:	bge	$t0,$t2,m_endf	# for( i = 0; i < nval-1; i++ ){
	addu	$t3,$t0,$a0	# &array[i]
	l.d	$f0,0($t3)	# $f0=array[i]
	l.d	$f2,8($t3)	# $f2=array[i+1]
m_if:	c.le.d	$f0,$f2		
	bc1t	m_endif		# if( array[i] > array[i+1] ){
	mov.d	$f4,$f0		# aux = arrau[i]
	s.d	$f2,0($t3)	# array[i] = array[i+1];
	s.d	$f4,8($t3)	# array[i+1] = aux;

	li	$t1,TRUE	# houveTroca = TRUE;
m_endif:			# }
	addiu	$t0,$t0,8	# i++
	j	m_for
m_endf:				# }

m_while:beq	$t1,TRUE,m_do	# } while( houveTroca == TRUE );
	rem	$t6,$t1,2	
if2:	beq	$t6, 0, endif2	# 	if (nval%2 != 0) {
	addi	$t1, $t1, 1	#		nval ++
endif2:				#	}
	sll	$t1,$t1,3
	srl	$t1,$t1,1
	addu	$t5,$a0,$t1
	l.d	$f0,0($t5)		# return array[nval / 2];
	jr	$ra		#}

.globl	main

main:					# int main(void) {
	addiu	$sp, $sp, -8		# 	poem espaco na pilha
	sw	$ra, 0($sp)		#	guarda o $ra
	sw	$s0, 4($sp)		#	guarda o $s0
	li	$t0, 0			#	i = 0;
	la	$t1, arr			#	$t1 = &arr;
	move	$s0, $t1			#	$s0 = &arr;
					# PREENCHER ARRAY
for:	bge	$t0, SIZE, endfor	#	for(i = 0; i < SIZE; i++) {
	la	$a0, str1		#		$a0 = str1;
	li	$v0, print_string	#		$v0 = 4;
	syscall				#		print_string(str1);
	li	$v0, read_double		#		$v0 = 7;		
	syscall				#		read_double();
	sll	$t3, $t0, 3		#		n = i*8
	addu	$t2, $t1, $t3		#		$t2 = &(arr[n])
	s.d	$f0, 0($t2)		#		arr[n] = read_double();
	addi	$t0, $t0, 1		#		i++;
	j	for			#	}
endfor:					# CALUCLO DA MEDIANA
	move	$a0, $t1			#	arg1 = &arr;
	li	$a1, SIZE		#	arg2 = SIZE;
	jal	median			#	median(arr, SIZE);
	la	$a0, str2		#	$a0 = str2;
	li	$v0, print_string	#	$v0 = 4;
	syscall				#	print_string(str2);
	mov.d	$f12, $f0		#	$f12 = return(median);
	li	$v0, print_double	#	$v0 = 3
	syscall				#	print_double(return(max));
					# ARRAY ORDENADO
	li	$t0, 0			#	i = 0;
	move	$t1, $s0			#
	la	$a0, str3		#	$a0 = str3;
	li	$v0, print_string	#	$v0 = 4;
	syscall				# 	print_string(str3);
for1:	bge	$t0, 80, endfor1		#	for(i = 0; i < SIZE; i++) {
	addu	$t4, $t1, $t0		#		%t4 = &(array[i]);
	l.d	$f12, 0($t4)		#
	li	$v0, print_double	#
	syscall				#		print_double(array[i]);
	la	$a0, str4		#		$a0 = str4
	li	$v0, print_string	#		$v0 = 4
	syscall				#		print_string(str4);
	addi	$t0, $t0, 8		#		i++;
	j	for1			#	}
endfor1:
	lw	$ra, 0($sp)		#	repoem o valor de $ra
	lw	$s0, 4($sp)		#	report valor de $s0
	addiu	$sp, $sp, 8		#	repoem o tamnhao da pilha
	li	$v0, 0			#	return 0;
	jr	$ra			# } fim do programa