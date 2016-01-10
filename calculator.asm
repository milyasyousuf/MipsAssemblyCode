# calculator 
# Written by Muhammad Ilyas
# CS3A


.data

string:  .asciiz"Enter var1:\n"
string1: .asciiz"Enter var2:\n"
string2: .asciiz"Select Case: \n1. Addition\n2. Subtraction\n3. Multiplication \n4. Division\n5. Quit\n\n\n"
result:  .asciiz"\nAdd = "
result1: .asciiz"\nSub = "
result2: .asciiz"\nMul = "
result3: .asciiz"\nDiv = "
exit: .asciiz"\nExit \n"

.text
.globl main
main:
########################### Input ###########################
#var1
li $v0,4
la $a0,string
syscall


li $v0,7
syscall
mov.d $f4,$f0

#var2
li $v0,4
la $a0,string
syscall

li $v0,7
syscall
mov.d $f6,$f0
########################### Selection Case ###########################
li $t1,1
li $t2,2
li $t3,3
li $t4,4
li $t5,5

SelecCase:
li $v0,4
la $a0,string2
syscall

li $v0,5
syscall
move $t0,$v0


beq $t0,$t1,addition
beq $t0,$t2,subtraction
beq $t0,$t3,multiplication
beq $t0,$t4,divide
beq $t0,$t5,Exit



addition:
add.d $f8,$f4,$f6

li $v0,4
la $a0,result
syscall


li $v0,3
mov.d $f12,$f8
syscall
j Exit

subtraction:
sub.d $f8,$f4,$f6

li $v0,4
la $a0,result1
syscall

li $v0,3
mov.d $f12,$f8
syscall

j Exit

multiplication:
mul.d $f8,$f4,$f6
li $v0,4
la $a0,result2
syscall

li $v0,3
mov.d $f12,$f8
syscall

j Exit


divide:
div.d $f8,$f4,$f6
li $v0,4
la $a0,result3
syscall

li $v0,3
mov.d $f12,$f8
syscall

j Exit
Exit:
li $v0,4
la $a0,exit
syscall


li $v0,10
syscall