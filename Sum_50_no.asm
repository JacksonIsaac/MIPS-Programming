# Title: Sum of 1st 50 numbers				# Filename: Sum_50_no.asm
# Author: Jackson Isaac
# Description: Program the sum of first 50 natural numbers
# Input: Null
# Output: Sum of 1st 50 natural numbers
#####################################Data Segment#######################################
.data
#####################################Code Segment#######################################
.text
.globl main
main:						# Main program entry
	li	$s0, 0				# Initialize $s0 (loop variable) with 0
	li	$s1, 0				# Initialize $s1, sum = 0
	li	$s2, 50				# max count = 50
	LOOP: 	add  $s1, $s0, $s1		# sum += i
		addi $s0, $s0, 1		# increment loop variable by 1
		bne  $s0, $s2, LOOP		# loop till 50 numbers read
	move	$a0, $s1			# $a0 = $s1 (move sum to $ao)
	li	$v0, 1				# Print sum
	syscall
	li	$v0, 10				# Exit the program
	syscall
