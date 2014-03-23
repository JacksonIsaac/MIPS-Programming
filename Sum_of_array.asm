# Title: Sum of array elements			#Filename: Sum_of_array.asm
# Author: Jackson Isaac
# Description: Program print sum of 10 array elements.
# Input: Array of 10 integers
# Output: Sum of the array elements.
################################Data Segment###########################################
.data
	str1: 	.asciiz 		"Enter 10 numbers: \n"
	str2: 	.asciiz 		"Sum of the array elements is: \n"
################################Code Segment###########################################
.text
.globl main
main:						# Main program entry
	li	$s0,0				# Initialize $s0 with 0 (array index)
	li 	$s1,0				# Initialize $s1 with 0 (store Sum)
	li	$s2,10				# Size of the array
	la 	$a0, str1			# Load str1 address to $a0 register
	li 	$v0, 4				# Print str1
	syscall
	
	LOOP: 	li 	$v0, 5			# Read Integer
		syscall
		add	$s0,$s0, $v0		# Add the read integer with sum
		addi	$s1,$s1,1		# Increment array index
		bne	$s1,$s2,LOOP		# Repeat will 10 elements are read

	
	la 	$a0, str2			# Load str2 address to $ao register
	li 	$v0, 4				# Print str2
	syscall
	move 	$a0, $s0			# Move the contect to $s0 (sum) $a0
	li 	$v0, 1				# Print the sum
	syscall
	li 	$v0, 10				# Exit the program
	syscall
