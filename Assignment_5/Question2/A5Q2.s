# assembly code for insertion sort of 10 integers given input by the user in the console

    .data
space: .asciiz " "
array: .word 0 : 10
length: .word 10
    .text
    .globl main
main:
    li $t0, 10            # $to = number of elements = 10
    li $t1, 0             # $t1 = index of the array
    la $t2, array         # $t2 = address of array
input_loop:
    beq $t1, $t0, insertion_sort  # while($t1 < $t0)
    li $v0, 5             # read_int
    syscall               # call read_int
    sw $v0, 0($t2)        # store the read integer in the array
    addi $t2, $t2, 4      # increment the address of the array
    addi $t1, $t1, 1      # increment the index of the array
    j input_loop
insertion_sort:
    li $t1, 1             # $t1 = index of the array
    la $t2, array         # $t2 = address of array
outer_loop:
    la $t2, array         # $t2 = address of array
    bge $t1, $t0, print   # if($t1 >= $t0) -> print
    move $t3, $t1         # $t3 = $t1
inner_loop:
    la $t2, array         # $t2 = address of array
    sll $t4, $t3, 2       # $t4 = $t1 * 4
    add $t2, $t2, $t4     # $t2 = $t2 + $t4
    ble $t3, $zero, end_inner_loop  # while ($t3 > 0)
    lw $t5, 0($t2)        # $t5 = a[$t3]
    lw $t6, -4($t2)       # $t6 = a[$t3-1]
    bge $t5, $t6, end_inner_loop  # while ($t5 < $t6)
    lw $t7, 0($t2)        # $t7 = a[$t3]
    sw $t6, 0($t2)        # a[$t3] = a[$t3-1]
    sw $t7, -4($t2)       # a[$t3-1] = $t7
    li $t8, 1             # $t8 = 1
    sub $t3, $t3, $t8     # $t3 = $t3 - 1
    j inner_loop
end_inner_loop:
    addi $t1, $t1, 1      # $t1 = $t1 + 1
    j outer_loop
print:
    li $t1, 0             # $t1 = index of the array
    la $t2, array         # $t2 = address of array
print_loop:
    bge	$t1, $t0, exit    # while($t1 < $t0)
	li	$v0, 1            # print_int
	lw	$a0, 0($t2)       # $a0 = a[$t1]
	syscall               # call print_int
	li	$v0, 4
	la	$a0, space
	syscall
	addi	$t2, $t2, 4
	addi	$t1, $t1, 1
	j	print_loop
exit:
	li	$v0, 10			# exit
	syscall				# exit program
