#name: AVR check disassembly if symbolic name present
#as:
#ld:
#source: lds-mega.s
#objdump: -d
#target: avr-*-*

.*:     file format elf32-avr


Disassembly of section .text:

00000000 <main>:
   0:	[0-9a-z ]+\s+lds	r24, 0x[0-9a-f]+00	; 0x800100.*
   [0-9a-z]+:\s+48 2f       	mov	r20, r24
   [0-9a-z]+:\s+44 0f       	add	r20, r20
   [0-9a-z]+:\s+99 0b       	sbc	r25, r25
   [0-9a-z]+:\s+[0-9a-z ]+ 	sts	0x[0-9a-f]+03, r25	; 0x[0-9a-f]+03 <myvar2\+0x1>
   [0-9a-z]+:\s+[0-9a-z ]+ 	sts	0x[0-9a-f]+02, r24	; 0x[0-9a-f]+02 <myvar2>
  [0-9a-z]+:\s+80 e0       	ldi	r24, 0x00	; 0
  [0-9a-z]+:\s+90 e0       	ldi	r25, 0x00	; 0
  [0-9a-z]+:\s+08 95       	ret

