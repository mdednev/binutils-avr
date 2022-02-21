#name: AVR, check link-relax flag is clear on partial link (both files)
#as: 
#ld: -r 
#source: relax-elf-flags-a.s -mno-link-relax
#source: relax-elf-flags-b.s -mno-link-relax
#readelf: -h
#target: avr-*-*

ELF Header:
#...
  Flags:                             0x[0-9a-f]+, avr:[0-9]+
#...
