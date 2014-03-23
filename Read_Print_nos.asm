# Title: Read and Print sequence of numbers	#Filename: Read_Print_nos.asm
# Author: Jackson Isaac
# Description: Program to Read and Print sequence of numbers.
# Input: Sequence of Numbers
# Output: Sequence of numbers given by the user.
#####################################Data Segment#######################################
.data
	str1: 	.ASCIIZ 		"Enter the sequence of numbers: \n"
	str2: 	.ASCIIZ		"The sequence you entered is: \n"
#####################################Code Segment#######################################
.text
.globl main
main:						# Main program entry
	la	$a0, str1			# Load $a0 with str1 address
	li	$v0, 4				# Print str1
	syscall
	li	$v0, 5				# Read Integer
	syscall
	move	$t0, $v0			# Move the read integer to $t0
	li	$v0, 5				# Read Integer
	syscall
	move	$t1, $v0			# Move the read integer to $t1
	li	$v0, 5				# Read Integer
	syscall
	move	$t2, $v0			# Move the read integer to $t2
	li	$v0, 5				# Read Integer
	syscall
	move	$t3, $v0			# Move the read integer to $t3
	li	$v0, 5				# Read Integer
	syscall
	move	$t4, $v0			# Move the read integer to $t4
	la	$a0, str2			# Print Output
	li	$v0, 4
	syscall
	move	$a0, $t0			# Move $t0 contents to $a0
	li	$v0, 1				# Print Integer
	syscall
	move	$a0, $t1			# Move $t1 contents to $a0
	li 	$v0, 1				# Print Integer
	syscall
	move 	$a0, $t2			# move $t2 content to $a0
	li 	$v0, 1				# Print Integer
	syscall
	move 	$a0, $t3			# move $t3 content to $a0
	li 	$v0, 1				# Print Integer
	syscall
	move 	$a0, $t4			# move $t4 content to $a0
	li 	$v0, 1				# Print Integer
	syscall
	li 	$v0, 10				# Exit the program
	syscall
