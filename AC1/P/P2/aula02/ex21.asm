	.data
	.eqv	val_1, 0x5C1B
	.eqv	val_2, 0xA3E4
	.text
	.globl	main
main:	ori	$t0,$0,val_1 	# substituir val_1 e val_2 pelos
	ori	$t1,$0,val_2	# valores de entrada desejados
	
	and	$t2,$t0,$t1	# $t2 = $t0 & $t1 (and bit a bit)
	or	$t3,$t0,$t1	# $t3 = $t0 | $t1 (or bit a bit)
	nor	$t4,$t0,$t1	# $t4 = ~($t0 | $t1)
	xor	$t5,$t0,$t1	# $t5 = $t0 ^ $t1
	
	li	$t0,0xE543
	li	$t1,0xffff
	
	# negacao bitwise
	xor	$t2,$t1,$t0	# $t7 = $t6 ^ 0xffff
	
	jr	$ra 		# fim do programa
	
	