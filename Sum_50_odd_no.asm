# Title: Sum of 1st 50 odd numbers		# Filename: Sum_50_odd_no.asm
# Author: Jackson Isaac
# Description: Program the sum of first 50 odd numbers
# Input: Null
# Output: Sum of 1st 50 odd numbers
#####################################Data Segment#######################################
.data
#####################################Code Segment#######################################
.text
.globl main
main:						# Main program entry
	li	$s0, 0				# Initialize $s0 (loop variable) with 0
	li	$s1, 0				# Initialize $s1, sum = 0
	li	$s2, 50				# max count = 50
	li	$s3, 1				# Value of Odd numbers
	LOOP: 	add  $s1, $s3, $s1		# sum += i
		addi $s0, $s0, 1		# increment loop variable by 1
		addi $s3, $s3, 2		# Increment Odd numbers
		bne  $s0, $s2, LOOP		# loop for 50 times
	move	$a0, $s1			# $a0 = $s1 (move sum to $ao for output)
	li	$v0, 1				# Print sum
	syscall
	li	$v0, 10				# Exit the program
	syscall
