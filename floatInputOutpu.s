#Float input output
#Written by Muhammad Ilyas

.data
f1: .float 4.2
f2: .float 5.2

.text


.globl main
main:

l.s $f4,f1
l.s $f6,f2

li $v0,6
syscall
mov.s $f4,$f0

li $v0,6
syscall
mov.s $f6,$f0


add.s $f8,$f4,$f6
mov.s $f12,$f8
li $v0,2
syscall


end:
li $v0,10
syscall