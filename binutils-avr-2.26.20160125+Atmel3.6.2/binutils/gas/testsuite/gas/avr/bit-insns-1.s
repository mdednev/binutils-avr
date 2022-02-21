	.file	"bit-insns-1.s"
.global	main
	.type	main, @function
main:
	sbi 0x1,1
	sbi 0x20,1
	ret
	.size	main, .-main

