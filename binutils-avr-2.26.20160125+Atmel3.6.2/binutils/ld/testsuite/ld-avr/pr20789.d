#name: AVR Account for relaxation in negative label differences
#as: -mlink-relax
#ld: --relax
#source: pr20789.s
#objdump: -s
#target: avr-*-*

.*:     file format elf32-avr

Contents of section .text:
 0000 ffcf                                 .*
Contents of section .data:
 80[0-9a-z]+ feff                               .*

