#name: AVR, check elf link-relax header flag is set.
#as: -mlink-relax
#readelf: -h
#source: link-relax-elf-flag.s
#target: avr-*-*

ELF Header:
#...
  Flags:                             0x[0-9a-f]+, avr:[0-9]+, link-relax
#...
