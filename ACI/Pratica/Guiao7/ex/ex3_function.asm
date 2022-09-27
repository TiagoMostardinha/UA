strcpy:		# char *strcpy(char *dst, char *src)
	move	$t2,$a0		# registo "callee-saved"

do:				# do { 	
	
	lb	$t1,0($a1)	# $t1 = src[i]
	sb	$t1,0($a0)	# dst[i] = src[i]; 
	
	addiu	$a0,$a0,1	# $a0[i + 1]
	addiu	$a1,$a1,1	# $a1[i + 1]
	
	bne	$t1,'\0',do	# } while(src[i++] != '\0'); 

endw:
	move	$v0,$a0		# return dst; 	
	jr	$ra		# }
