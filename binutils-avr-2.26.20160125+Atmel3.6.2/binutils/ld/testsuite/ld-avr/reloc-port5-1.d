#name: AVR PORT5 relocs (non bit addressable)
#as: -mnon-bit-addressable-registers-mask=0x8
#ld: --non-bit-addressable-registers-mask=0x8 --defsym IOREG=3
#source: bit-insns-1.s
#target: avr-*-*
#warning: .*: warning: internal error: out of range error
