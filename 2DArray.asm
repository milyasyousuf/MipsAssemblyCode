#This is 2D array simple implementation in mips assembly
#Written by Muhammad Ilyas

.data 
array: 	.word 20,30,40,50,70,20,80,90,59,30
		.word 30,50,59,30,30,40,50,70,20,80
		.word 50,10,60,20,70,20,80,90,20,80
		.word 70,20,80,90,50,59,30,30,40,50
string: .asciiz"\n"
string1: .asciiz"  "
string2: .asciiz"\n--------------- \n "

.text 
.globl main
main:

la $t0,array	#for array position 0 = $t0 <- array

la $t1,array	#for array position 1 = $t1 <- array+4
addi $t1,$t1,4

la $t2,array	#for array position 2 = $t2 <- array+8
addi $t2,$t2,8

la $t3,array	#for array position 3 = $t3 <- array+12
addi $t3,$t3,12

li $t4,0
li $t5,10
Loop:
#branch t4!=t5
beq $t4,$t5,EXIT	
#===================================
#array value print t0
li $v0,1			#test1 print 
lw $a0,0($t0)
syscall

add $t6,$t6,$a0 	#for addition of table1

li $v0,4			#spaces between nu
la $a0,string1
syscall

#===================================
li $v0,1			#test2 print 
lw $a0,0($t1)
syscall

#for addition of table2
add $t7,$t7,$a0 	

#spaces between num
li $v0,4			
la $a0,string1
syscall
#===================================

#array value print t2
li $v0,1
lw $a0,0($t2)
syscall
add $s0,$s0,$a0 

#spaces between num
li $v0,4			
la $a0,string1
syscall

#===================================
 
li $v0,1
lw $a0,0($t3)
syscall

add $s1,$s1,$a0
#===================================

addi $t0,$t0,16
addi $t1,$t1,16
addi $t2,$t2,16
addi $t3,$t3,16
addi $t4,$t4,1

li $v0,4
la $a0,string
syscall

j Loop

EXIT:
li $v0,4
la $a0,string2
syscall

#table 0 print
#----------------
move $a0,$t6
li $v0,1
syscall

#spaces between num
li $v0,4			
la $a0,string1
syscall

#table 1 print
#-----------
move $a0,$t7
li $v0,1
syscall

#spaces between num
li $v0,4			
la $a0,string1
syscall

#-----------
#table 2 print
move $a0,$s0
li $v0,1
syscall

#spaces between num
li $v0,4			
la $a0,string1
syscall

#-----------
#table 3 print
move $a0,$s1
li $v0,1
syscall

#spaces between num
li $v0,4			
la $a0,string1
syscall



li $v0,10
syscall

