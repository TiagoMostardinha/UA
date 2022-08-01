	.data
k1:	.float	2.59375
k2:	.float	0.0
	.eqv	print_float,2
	.eqv	read_int,5
	.text
	.globl main
	
main:		# int main(void) { 
do:					# do { 
	li	$v0,read_int		# val = read_int();
	syscall
	
	la	$t0,k1			# $t0 = 2.59375
	
	l.s	$f4,0($t0)		# $f4 = 2.59375 (float)
	
	mtc1	$v0,$f6			# $f6 = val
	cvt.s.w	$f6,$f6			# $f6 = (float)val
	
	mul.s 	$f12,$f4,$f6		# res = (float)val * 2.59375; 
	li	$v0,print_float		# print_float( res );
	syscall
	
while:	
	la	$t0,k2			# $t0 = 0.0
	l.s	$f8,0($t0)		# $f8 = (float)$t0
	
	c.eq.s	$f12,$f8		# $f12 == $f8
					# } while(res != 0.0); 
	bc1f	do			# se for falso jump para o "do"
	
		
	li	$v0,0			# return 0; 
	
	jr	$ra			# }