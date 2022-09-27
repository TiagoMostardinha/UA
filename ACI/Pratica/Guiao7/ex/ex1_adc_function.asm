insert:		# int insert(int *array, int value, int pos, int size) { 
	move	$t0,$a0
	move	$t1, $a1	#	$t1 = value;
	move 	$t2, $a2	#	$t2 = pos;
	move	$t3, $a3	#	$t3 = size;
	
	ble	$t2,$t3,endif	# if(pos > size) 
	
	li	$v0,1		# return 1; 
	j	endif
	
else:				# else { 
	addi	$t4,$t3,-1	# i = size-1
	
for:	blt	$t4,$t2,endfor	# for(i = size-1; i >= pos; i--) 	
	
	sll	$t6,$t4,2	# $t6 = i* 4
	addu	$t0,$t0,$t6	# 
	
	lw	$t5,0($t0)	# $t5 = array[i]
	sw	$t5,4($t0)	# array[i+1] = array[i];
	
	addi	$t4,$t4,-1	# i--
	
	j	for
 
endfor:	
	sll	$t6,$t4,2
	addu	$t0,$t0,$t6
	sw	$t1,-4($t0)	# array[pos] = value; 
	li	$v0,0		# return 0;
	
endif:	jr	$ra