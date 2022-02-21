#name: AVR, check link-relax flag is set final link (no inputs relaxable)
#as: 
#ld: -relax 
#source: relax-elf-flags-a.s -mno-link-relax
#source: relax-elf-flags-b.s -mno-link-relax
#readelf: -h
#target: avr-*-*

ELF Header:
#...
  Flags:                             0x[0-9a-f]+, avr:[0-9]+, link-relax
#...
