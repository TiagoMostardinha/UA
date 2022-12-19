	.data
	
	.text
	.globl main
main:	li	$t0,0x1234	# declaracao de $t0
	or	$t1,$0,$t0	# copia de $t0 para $t1
	
	# Bin to Gray
	srl	$t2,$t1,1	# srl de $t1 e guarda em $t2
	xor	$t2,$t0,$t2	# XOR entre $t0 e $t2 e guarda em $t7

# Gray to Bin
	or	$t3,$0,$t2	# copia
	srl	$t4,$t3,4	# srl coloca em $t4
	xor	$t5,$t3,$t4	# XOR entre $t3 e $t4 e guarda em $t5
	
	srl	$t4,$t3,2	# srl atualiza $t4
	xor	$t6,$t3,$t4	# XOR entre $t3 e $t4 e guarda em $t6
	
	srl	$t4,$t3,1	# srl atualiza $t4
	xor	$t7,$t3,$t4	# XOR entre $t3 e $t4 e guarda em $t7
	
	
	jr $ra