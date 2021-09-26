.data # make the datas; in this area, variables and string labels are created
.align 4 # 4B align
value: .asciiz "Value: " # asciiz -> string label
printValue: .asciiz "Print a value\n"
.text # code development
	# print 1st string
	li $v0, 4 # load immediate 4 in $v0
	la $a0, value # load address value in $a0
	syscall
	
	# read an integer value
	li $v0, 5 # 5 -> integer read
	syscall
	move $t0, $v0 # move the $v0 value to $t0
	
	# print 2nd string
	li $v0, 4
	la $a0, printValue
	syscall
	
	# print an integer value
	li $v0, 1 # 1 -> show a integer value
	move $a0, $t0
	syscall
	
	# end
	li $v0, 10 # 10 -> end
	syscall
	