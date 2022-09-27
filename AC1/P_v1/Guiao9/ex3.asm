	.data
x0:	.double	0.0

	.eqv	SIZE,10

	.eqv	print_double,3
	.eqv	read_int,5

a:	.space	80		# a[SIZE] => SIZE = 10 * 8bytes
	
	.text
	.globl main

# Mapa de registos
# $t0 - i
# $t1 - &a;
# $t2 - aux;
# $t3 = &(a[i]);

main:		# int main(void) { 
	addiu	$sp,$sp,-4	# Reservar espaco para a Stack
	sw	$ra,0($sp)	# Salvaguardar $ra
	
	li	$t0,0		# i = 0 
	la	$t1,a		# $t1 = &a;

for:	bge	$t0,SIZE,endf	# for(i = 0; i < SIZE; i++) { 
	
	sll	$t2,$t0,3	# aux = i*8
	addu	$t3,$t1,$t2	# $t3 = &(a[i]);
	
	li	$v0,read_int
	syscall			# $v0 = read_int();
	mtc1	$v0,$f2		# $f2 = $v0
	cvt.d.w	$f2,$f2		# $f2 = (double) $f2
	
	s.d	$f2,0($t3)	# a[i] = (double)read_int(); 
	
	addi	$t0,$t0,1	# i++
	
	j for

endf:	# } 
	la	$a0,a
	li	$a1,SIZE
	jal	average		# average(a, SIZE)
	
	mov.d	$f12,$f0
	li	$v0,print_double
	syscall			# print_double( average(a, SIZE) ); 
	
	lw	$ra,0($sp)	# Repor de $ra
	addiu	$sp,$sp,4	# Repor memoria
	
	li	$v0,0		# return 0; 
	
	jr	$ra		# }
	
#########################

average:	# double average(double *array, int n) { 
	la	$t0, x0		# double sum = 0.0; 
	l.d	$f0,0($t0)
	
	move	$t0,$a0		# $t1 = &(array)
	move	$t1,$a1		# $t2 = n
	
for1:	ble	$t1,$0,endf1	# for(; i > 0; i--) { 

	addi	$t3,$t1,-1	# $t3 = i-1
	sll	$t3,$t3,3	# aux = (i-1)*8  	double => 8 bytes
	addu	$t2, $t0, $t3	# $t2 = &(array[i-1]);
	
	l.d	$f2,0($t2)	# $f2 = (double)array[i-1];
	
	add.d	$f0,$f0,$f2	# sum += array[i-1]; 
	
	addi	$t1,$t1,-1	# i--
	
	j	for1
	
endf1:	mtc1	$a1,$f4		# } 
	cvt.d.w	$f4,$f4		
	div.d	$f0,$f0,$f4	# $f0 = sum / (double)n; ==  return sum / (double)n; 
	
	jr	$ra		# } 
