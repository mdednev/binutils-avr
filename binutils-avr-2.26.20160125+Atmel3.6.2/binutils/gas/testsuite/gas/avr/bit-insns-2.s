	.file	"bit-insns-2.s"
.global	main
	.type	main, @function
main:
	sbi 0x1,1
	cbi 0x2,1
	sbi IOREG3,1
	ret
	.size	main, .-main

