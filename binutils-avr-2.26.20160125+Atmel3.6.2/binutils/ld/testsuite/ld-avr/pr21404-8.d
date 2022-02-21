#name: AVR local symbol size increase for alignment
#as: -mlink-relax
#ld:  --relax
#source: pr21404-8.s
#nm: -n -S
#target: avr-*-*

#...
00000002 00000006 t nonzero_sym
#...
