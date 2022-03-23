    .data
newLine: .asciiz "\n"
    .text
    .globl main
main: addi $s0, $zero, 0 # $s0 = prev num
    addi $s1, $zero, 1 # $s1 = current fibonacci num

while: slti $t0, $s1, 500
    beq $t0, $zero, exit
    add $a0, $zero, $s1
    li $v0, 1
    syscall
    la $a0, newLine
    li $v0, 4
    syscall
    add $t1, $zero, $s1
    add $s1, $s1, $s0
    add $s0, $zero, $t1
    j while

exit: li $v0, 10
    syscall
    