#name: AVR, check elf link-relax header flag is clear.
#as: -mno-link-relax
#readelf: -h
#source: link-relax-elf-flag.s
#target: avr-*-*

ELF Header:
#...
  Flags:                             0x[0-9a-f]+, avr:[0-9]+
#...
