ARDUINO_DIR       = /usr/share/arduino 
ARDMK_DIR         = /usr/share/arduino
AVR_TOOLS_DIR     = /usr
AVRDUDE           = /usr/bin/avrdude
AVRDUDE_CONF      = /etc/avrdude.conf
ARDUINO_CORE_PATH = /usr/share/arduino/hardware/archlinux-arduino/avr/cores/arduino
BOARDS_TXT        = /usr/share/arduino/hardware/archlinux-arduino/avr/boards.txt
ARDUINO_VAR_PATH  = /usr/share/arduino/hardware/archlinux-arduino/avr/variants
BOOTLOADER_PARENT = /usr/share/arduino/hardware/archlinux-arduino/avr/bootloaders

ARDUINO_SKETCHBOOK= /home/logan/Arduino

BOARD_TAG         = nano
BOARD_SUB         = atmega328old
ARDUINO_PORT      = /dev/ttyUSB*
ARDUINO_LIBS      = LiquidCrystal

## ARDUINO_LIBS = Ethernet Ethernet/utility SPI

include /usr/share/arduino/Arduino.mk
