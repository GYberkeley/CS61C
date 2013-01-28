StringLen:   
		lui $r0, 0      
loops:
		lw $r1, 0($r0)  
		sw $r3, 0($r0)  
		lui $r3, 0      
		addi $r0 $r0 1  
		zb $r2, $r1     
		beq $r2, $r3, loops
ZeroInUpperToo:
		ffo $r2, $r1
		lui $r3, 0
		ori $r3, $r3, 8    
		slt $r3, $r2, $r3
		lui $r1, 0      
		addi $r1 $r1 1  
		beq $r1, $r3, ZeroInLowerOnly
		addi $r0, $r0, -1   
		lui $r3, 0
		ori $r3, $r3, 1    
		sllv $r0, $r0, $r3
		j exit
ZeroInLowerOnly:
		lui $r3, 0
		ori $r3, $r3, 1   
		sllv $r0, $r0, $r3  
		addi $r0, $r0, -1  
exit:
		disp $r0, 0 
		lui $r3, 0
		ori $r3, $r3, 0    		
		lw $r3, 0($r3)  
		jr $r3   

		
		
		
