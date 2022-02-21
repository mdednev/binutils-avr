ARCH=avr:100
MACHINE=
SCRIPT_NAME=avr
OUTPUT_FORMAT="elf32-avr"
MAXPAGESIZE=1
EMBEDDED=yes
TEMPLATE_NAME=elf32

TEXT_ORIGIN=0
TEXT_LENGTH=4K
DATA_ORIGIN=0x0800040
DATA_LENGTH=0x100
RODATA_PM_OFFSET=0x4000
EXTRA_EM_FILE=avrelf

FUSE_NAME=config

FUSE_LENGTH=2
LOCK_LENGTH=2
SIGNATURE_LENGTH=4
