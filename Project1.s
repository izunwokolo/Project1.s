.data
  user_input: .space 11 #make space for characters
  
 .text
 
 main:
   li $v0, 8              #Read the user input
   la $a0, input 
   li $a1, l1
   syscall
   li $t0, 0
   li $t3, 0
   li $t4, 0
   li $t5, 10
   li $t6, 88           #My ACII value for W
   li $t7, 120          #My ACII value for w
   li $t8, 9
   
 firstloop:             # loop through the values
  beq $t4, $t5, Final
  lbu $t1, input($t0)
  beq $t1, $t6, X_test
  beq $t1, $t7, x_test
  slt, $t9, $t1, 0
  bne $t9, 0, condition1
  slt, $t9, $t1, 9
  bne $t9, 0, condition2
  addi $t9, 0, 97
  bge $t1, $t9, add1
  addi $t9, 0, 65
  bge $t1, $t9, add2
  addi $t9, 0, 48
  bge $t1, $t9, add3
  addi $t0, $t0, 1
  addi $t4, $t4, 1
  j firstloop
  
  Final:
    	
    		li $v0, 1
    		addi $a0, $t4, 0 #print sum
    		syscall
    
   
   
  
    
    
    
    
   
   
