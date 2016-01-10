# This float implementation in three number addition
 
################### Data segment ###################
.data

prompt: .asciiz "Please enter three numbers: \n"
sum_msg: .asciiz "The sum is: "
newline: .asciiz "\n"

################### Code segment ###################
.text
.globl main
main:

# data input phase
la $a0,prompt # prompt user for input
li $v0,4
syscall

li $v0,7 # read 1st double into $f4
syscall

mov.d $f4,$f0

li $v0,7 # read 2nd double into $f6
syscall
mov.d $f6,$f0

li $v0,7 # read 3rd double into $f8
syscall
mov.d $f8,$f0

# addition phase
add.d $f4,$f4,$f6
add.d $f4,$f4,$f8 # $f4 = sum

# result output phase
la $a0,sum_msg # write sum message
li $v0,4
syscall

mov.d $f12,$f4 # output sum
li $v0,3
syscall

la $a0,newline # write newline
li $v0,4
syscall

li $v0,10 # exit

syscall