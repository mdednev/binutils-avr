#name: AVR symbol size increase for alignment
#as: -mlink-relax
#ld:  --relax
#source: pr21404-4.s
#nm: -n -S
#target: avr-*-*

#...
00000002 00000006 T nonzero_sym
#...
