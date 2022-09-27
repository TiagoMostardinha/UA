	.data

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
	jal	max		# max(a, SIZE)
	
	mov.d	$f12,$f0
	li	$v0,print_double
	syscall			# print_double( average(a, SIZE) ); 
	
	lw	$ra,0($sp)	# Repor de $ra
	addiu	$sp,$sp,4	# Repor memoria
	
	li	$v0,0		# return 0; 
	
	jr	$ra		# }
	
##################################

max:	# double max(double *p, unsigned int n) { 
	move	$t0,$a0		# $t0 = *p
	move	$t1,$a1		# $t1 = n
	
	addi	$t1,$t1,-1	# $t1 = n -1
	sll	$t1,$t1,3	# $t1 = (n - 1) * 8
	addu	$t2,$t0,$t1	# double *u = p+n–1; 
 
	l.d	$f0,0($t0)	# 
	addiu 	$t0,$t0,8	# max = *p++; 

for1:	bgt	$t0,$t2,endf1	# for(; p <= u; p++) { 

	l.d	$f2,0($t0)	# $f2 = (double) *p
if:	c.le.d	$f2,$f0		# if(*p > max) 
	bc1t	endif
	
	mov.d	$f0,$f2		# max = *p; 

endif:	addiu	$t0,$t0,8
	j	for1
endf1:	
	jr	$ra		# } 
# }
