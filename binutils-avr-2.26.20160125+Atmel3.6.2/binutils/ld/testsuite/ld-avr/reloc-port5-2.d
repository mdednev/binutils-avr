#name: AVR PORT5 relocs (resolved at link)
#as: -mnon-bit-addressable-registers-mask=0x8
#ld: --non-bit-addressable-registers-mask=0x8 --defsym IOREG=4
#source: bit-insns-1.s
#objdump: -s
#target: avr-*-*

.*:     file format elf32-avr

Contents of section .text:
 0000 099a1198 219a0895                    ....!...        

