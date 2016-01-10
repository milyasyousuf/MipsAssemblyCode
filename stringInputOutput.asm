#Simpe Implementation of String input output in assembly
#Written by Muhammad Ilyas

.data
string: .space 15
 
.text
.globl main
main:
li $v0,8
la $a0,string
li $a1,15
syscall



li $v0,4
la $a0,string
syscall
li $v0,10
syscall