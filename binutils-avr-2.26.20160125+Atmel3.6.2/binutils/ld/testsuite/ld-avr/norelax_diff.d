#name: AVR No change in behavior without relaxation
#as: 
#ld:
#source: relax.s
#objdump: -s
#target: avr-*-*

.*:     file format elf32-avr

Contents of section .text:
 0000 0c940000                             .*
Contents of section .data:
 80[0-9]+ 0400                               .*
