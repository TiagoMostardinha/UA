	.data
	.eqv	read_int, 5
	.text
	.globl	main
main:	li	$t0,0x12345678	# instrução virtual (decomposta
				# em duas instruções nativas)
	sll	$t2,$t0,1 #
	srl 	$t3,$t0,1 #
	sra	$t4,$t0,1 #
	
	sll	$t2,$t0,4 #
	srl	$t3,$t0,4 #
	sra 	$t4,$t0,4 #
	
	sll 	$t2,$t0,16 #
	srl 	$t3,$t0,16 #
	sra 	$t4,$t0,16 #
	
	li	$t0,0x862A5C1B
	
	sll 	$t2,$t0,2 #
	srl 	$t3,$t0,2 #
	sra 	$t4,$t0,2 #
	
	sll 	$t2,$t0,4 #
	srl 	$t3,$t0,4 #
	sra 	$t4,$t0,4 #
	
	# bin to Gray Code	
	# gray = bin ^ (bin >> 1);
	li	$v0,read_int
	syscall
	move	$t0,$v0
	
	srl	$t1,$t0,1
	xor	$t1,$t1,$t0
	
	# Gray Code to bin
	li	$v0,read_int
	syscall
	move	$t0,$v0		# num = gray;
	srl	$t1,$t0,4	# num = num ^ (num >> 4);
	xor	$t0,$t0,$t1
	srl	$t1,$t0,2	# num = num ^ (num >> 2);
	xor	$t0,$t0,$t1
	srl	$t1,$t0,1	# num = num ^ (num >> 1);
	xor	$t0,$t0,$t1
	move	$t2,$t1		# bin = num;
	
	jr 	$ra # fim do programa
