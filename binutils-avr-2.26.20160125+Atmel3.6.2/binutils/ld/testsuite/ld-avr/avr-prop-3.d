#name: AVR .avr.prop, single .align test.
#as: -mlink-relax
#ld: --relax
#source: avr-prop-3.s
#nm: -n
#target: avr-*-*

#...
00000008 T dest
#...
