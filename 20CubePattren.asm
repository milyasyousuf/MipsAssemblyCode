.data 
string1: .asciiz "*"
string2: .asciiz "\n"

.text
.globl main
main:

li $t0,0	#i
li $t1,4
li $t2,0 	# j
li $t3,5 

loop1:
beq $t0,$t1,exit

add $t0,$t0,1
li $v0,4
la $a0,string2
syscall
li $t2,0
j loop2


loop2:
beq $t2,$t3,loop1

li $v0,4
la $a0,string1
syscall
add $t2,$t2,1

j loop2


exit:
li $v0,10
syscall

