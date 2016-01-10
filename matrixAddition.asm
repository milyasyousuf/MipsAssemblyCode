.data
string: .asciiz"hello world\n"
st: .asciiz"\n"
.align 2
var1: 	.word 2,3
		.word 4,5
var2: 	.word 4,6
		.word 6,8
	
result: .word 0,0
		.word 0,0
	
.text
.globl main
main:
la $t0,var1
la $t1,var2
la $t3,result
li $t4,0
li $t5,4



addition:
beq $t4,$t5,print
lw $s0,($t0)
lw $s1,($t1)
add $t6,$s1,$s0
sw $t6,($t3)
addi $t0,$t0,4
addi $t1,$t1,4
addi $t3,$t3,4
addi $t4,$t4,1



j addition

print: 
la $t0,result
li $t4,0
li $t5,4

end: 
beq $t4,$t5,exit
la $a0,st
li $v0,4
syscall


lw $a0,0($t0)
li $v0,1
syscall

addi $t0,$t0,4
addi $t4,$t4,1

j end



exit:
li $v0,10
syscall