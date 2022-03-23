.data
    one: .float 1.0
    negOne: .float -1.0

    .text
    .globl main
main: li $v0, 5
    syscall
    move $s0, $v0 # $s0 = p
    # allocate space
    sll $a0, $s0, 2
    li $v0, 9
    syscall
    move $s1, $v0 # $s1 = address of array
    add $t0, $zero, $s1 # $t0 = address of current position in array for 1st loop
    add $t5, $zero, $s1 # $t5 = address of current position in array for 2nd loop
    addi $t1, $zero, 0 # $t1 = counter for 1st loop
    addi $t2, $zero, 0 # $t2 = counter for 2nd loop
    # f5 = -1^i
    l.s $f5, one
    l.s $f6, negOne # f6 = -1
    mtc1 $zero, $f2 # $f2 = sum

loop: slt $t3, $t1, $s0
    beq $t3, $zero, exit

    li $v0, 6
    syscall
    mov.s $f1, $f0
    swc1 $f1, ($t0)
    addi $t0, $t0, 4
    addi $t1, $t1, 1
    j loop

exit: slt $t4, $t2, $s0
    beq $t4, $zero, exit2

    lwc1 $f3, ($t5)
    addi $t5, $t5, 4
    addi $t2, $t2, 1
    mul.s $f3, $f3, $f5
    mul.s $f5, $f5, $f6
    add.s $f2, $f2, $f3
    j exit

exit2: mov.s $f12, $f2
    li $v0, 2
    syscall

    li $v0, 10
    syscall



