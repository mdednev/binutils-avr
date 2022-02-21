#name: AVR, check link-relax flag is clear final link (both inputs relaxable)
#as: 
#ld: 
#source: relax-elf-flags-a.s -mlink-relax
#source: relax-elf-flags-b.s -mlink-relax
#readelf: -h
#target: avr-*-*

ELF Header:
#...
  Flags:                             0x[0-9a-f]+, avr:[0-9]+
#...
