#name: AVR, check link-relax flag is set on partial link
#as: 
#ld: -r 
#source: relax-elf-flags-a.s -mlink-relax
#source: relax-elf-flags-b.s -mlink-relax
#readelf: -h
#target: avr-*-*

ELF Header:
#...
  Flags:                             0x[0-9a-f]+, avr:[0-9]+, link-relax
#...
