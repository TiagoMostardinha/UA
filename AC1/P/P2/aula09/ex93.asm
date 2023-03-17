	.data
a:	.space	40
f0:	.double 0.0

	.eqv	SIZE,5
	.eqv	read_int,5
	.eqv	print_double,3
	.text
# average ###########
# $t0: i
# $f2: sum

average:	# double average(double *array, int n) {
	move	$t0,$a1		# int i = n;
	
	la	$t1,f0		
	l.d	$f2,0($t0)	# double sum = 0.0;
	
a_for:	ble	$t0,0,a_endf	# for(; i > 0; i--) {
	
	addi	$t1,$t0,1	# i - 1
	sll	$t1,$t1,3	# 8*(i-1)
	addu	$t2,$a0,$t1
	l.d	$f4,0($t2)	# array[i-1]
	
	add.d	$f2,$f2,$f4	# sum += array[i-1];
	
	addiu	$t0,$t0,-1	# i--
	j	a_for		# }
a_endf:	
	mtc1	$a1,$f6
	cvt.d.w	$f6,$f6
	
	div.d	$f0,$f2,$f6	# return sum / (double)n;
	jr	$ra		# }

	.globl main
# Mapa de Registos
# $t0:	*a
# $t1: 	i

main:	# int main(void) {
	addiu	$sp,$sp,-4	# reservar espaço
	sw	$ra,0($sp)	# salvaguardar $ra
	
	la	$a0,a		# static double a[SIZE];
	li	$t1,0		# i = 0
	
for:	bge	$t1,SIZE,endf	# for(i = 0; i < SIZE; i++) {
	
	li	$v0,read_int
	syscall
	mtc1	$v0,$f2
	cvt.d.w	$f2,$f2		# (double) read_int()
	
	sll	$t2,$t1,3
	addu	$t3,$a0,$t2
	s.d	$f2,0,($t3)	# a[i] = (double)read_int();
	
	addiu	$t1,$t1,1	# i++
	j	for		# }
endf:
	la	$a0,a
	li	$a1,SIZE
	jal	average		# average(a, SIZE)

	mov.d	$f12,$f0 	# print_double( average(a, SIZE) );
	li	$v0,print_double
	syscall

	li	$v0,0 		# return 0;
	lw	$ra,0($sp)
	addiu	$sp,$sp,4
	jr	$ra		# }
