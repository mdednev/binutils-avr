#name: AVR .avr.prop, multiple .org test.
#as: -mlink-relax
#ld: --relax
#source: avr-prop-2.s
#nm: -n
#target: avr-*-*

#...
00000010 T label1
00000020 T label2
00000030 T dest
#...
