	.data
	.eqv	val_x,2
	.text
	.globl	main
main:				# y = 2x – 8
	ori	$t0,$0,8
	ori	$t1,$0,val_x
	add	$t1,$t1,$t1
	sub	$t2,$t1,$t0
	
	jr	$ra	