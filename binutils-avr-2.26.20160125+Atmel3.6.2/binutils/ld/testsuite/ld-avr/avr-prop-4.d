#name: AVR .avr.prop, realign .align test.
#as: -mlink-relax
#ld: --relax
#source: avr-prop-4.s
#nm: -n
#target: avr-*-*

#...
00000004 T dest
#...
