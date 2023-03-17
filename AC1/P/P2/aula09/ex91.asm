	.data
f0:	.float	0.0
f25:	.float 	2.59375

	.eqv	read_int,5
	.eqv	print_float,2
	.text
	.globl main
# Mapa de Registos
# $f12: res
# $f4: (float) val

main:				# int main(void) {
	la	$t0,f0
	l.s	$f8,0($t0)	# $f8 = 0.0

do:				# do {
	li	$v0,read_int
	syscall	
	mtc1	$v0,$f4
	cvt.s.w	$f4,$f4		# (float)val = read_int();

	la	$t0,f25
	l.s	$f6,0($t0)	# $f6 = 2.59375

	mul.s	$f12,$f4,$f6	# res = (float)val * 2.59375;
	li	$v0,print_float	# print_float( res );
	syscall
	
while:	c.eq.s	$f12,$f8
	bc1f	do		# } while(res != 0.0);
	
	li	$v0,0		# return 0;
	jr	$ra		# }
