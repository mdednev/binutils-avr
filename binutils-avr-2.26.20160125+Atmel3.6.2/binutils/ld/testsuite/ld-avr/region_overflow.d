#name: AVR catch region overflow errors
#as: 
#ld:  --relax --defsym __TEXT_REGION_LENGTH__=2
#source: region_overflow.s
#target: avr-*-*
#error: `.text' will not fit in region `text'
