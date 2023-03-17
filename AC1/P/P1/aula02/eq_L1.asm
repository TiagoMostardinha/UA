	.data
	
	.text
	.globl main
main:	ori	$t0,$0,0xE543	# subs. val_1 por um valor
	ori	$t1,$0,0xA3E4	# subs. val_2 por um valor
	ori	$t7,$0,0xffff	# 0x1111111111111111
	
	and	$t2,$t0,$t1	# $t2 = $t0 and $t1
	or	$t3,$t0,$t1	# $t3 = $t0 or $t1
	nor	$t4,$t0,$t1	# $t4 = $t0 nor $t1
	xor	$t5,$t0,$t1	# $t5 = $t0 xor $t1
	
	#not bitwise
	xor $t6,$t0,$t7
	
	
	jr $ra
