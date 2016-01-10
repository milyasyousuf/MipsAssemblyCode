#Implementation of float array in mips assembly language

.data
.align 3
f1: .space 32
string: .asciiz"Enter value: \n"
st: .asciiz"\n"

.text
.globl main
main:
la $t0,f1
li $t1,0
li $t2,4
loop:
beq $t1,$t2,print
li $v0,4
la $a0,string
syscall
li $v0,6
syscall
s.s $f0,0($t0)


addi $t0,$t0,8
addi $t1,$t1,1

j loop


print:
la $t0,f1
li $t1,0
li $t2,4
output:
beq $t1,$t2,exit
l.s $f12,0($t0)
li $v0,2
syscall
li $v0,4
la $a0,st
syscall
add $t1,$t1,1
add $t0,$t0,8
j output

exit:
li $v0,10
syscall
