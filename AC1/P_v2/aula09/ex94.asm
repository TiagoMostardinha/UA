	.data
	.eqv	SIZE,10

	.eqv	print_double,3
	.eqv	read_double,7

a:	.space	80		# a[SIZE] => SIZE = 10 * 8bytes
	
	.text
	
# max ################################
# $f2:	max
# $f4:	u
max:		# double max(double *p, unsigned int n) {
	addiu	$t0,$a1,-1	# n-1
	sll	$t0,$t0,3	# 8*(n-1)
	addu	$t0,$t0,$a0	# double *u = p+n–1;
	
	l.d	$f2,0($a0)	# max = *p
	addiu	$a0,$a0,1	# p++
	
m_for:	bgt	$a0,$t0,m_endf	# for(; p <= u; p++) {

m_if:	l.d	$f4,0($a0)
	c.le.d	$f4,$f2		
	bc1t	m_endif		# if(*p > max)
	
	mov.d	$f2,$f4		# max = *p;
m_endif:
	addiu	$a0,$a0,8
	j	m_for
m_endf:				# }
	mov.d	$f0,$f2		# return max;
	jr	$ra		# }

	.globl main
	
# Mapa de Registos
#
main:		# int main(void) { 
	addiu	$sp,$sp,-4	# Reservar espaco para a Stack
	sw	$ra,0($sp)	# Salvaguardar $ra
	 
	li	$t0,0		# i = 0 
	la	$t1,a		# $t1 = &a;

for:	bge	$t0,SIZE,endf	# for(i = 0; i < SIZE; i++) { 
	
	sll	$t2,$t0,3	# aux = i*8
	addu	$t3,$t1,$t2	# $t3 = &(a[i]);
	
	li	$v0,read_double
	syscall			# $v0 = read_int();
	mov.d	$f0,$f2		# $f2 = $v0
	
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
