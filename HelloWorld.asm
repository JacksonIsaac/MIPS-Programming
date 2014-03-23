# Title: Hello World					# Filename: HelloWorld.asm
# Author: Jackson Isaac
# Description: Program to print Hello World
# Input: Null
# Output: Hello World
###########################Data Segment###########################
.DATA
    str:	.asciiz 		"Hello World \n"
###########################Code Segment###########################
.text
.globl main
main:				# Main program entry
	la	$a0,  str	# $a0 = address of str	
	li	$v0, 4		# Print string ?str
	syscall
	li	$v0, 10		# Exit Program
	syscall
