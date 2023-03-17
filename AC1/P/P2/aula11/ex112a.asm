	.data
		# typedef struct {
	.eqv	a1,0	# char a1[14];
	.eqv	i,16	# int i;
	.eqv	a2,20	# char a2[17];
	.eqv	g,40	# double g;
		# } xyz		48
		
		
	.align	2	# static xyz s1 = {"Str_1", 2021, "Str_2", 2.718281828459045};
s1:	.asciiz "Str_1"
	.space	8
	.word	2021
	.asciiz "Str_2"
	.space	11
	.double 2.718281828459045
	
	.text
f1:
	la	$t0,s1
	l.d	$f0,g($t0)
	
	jr	$ra
	
	.globl	main
	
main:
	