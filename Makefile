# Need to figure out how to include src files
# Check out this feature: https://github.com/sudar/Arduino-Makefile/issues/267#issuecomment-56006002
# Check out this link: https://github.com/leka/moti/tree/dev/src/moti

ARDUINO_DIR       = /usr/share/arduino 
ARDMK_DIR         = /usr/share/arduino
AVR_TOOLS_DIR     = /usr
AVRDUDE           = /usr/bin/avrdude
AVRDUDE_CONF      = /etc/avrdude.conf
ARDUINO_CORE_PATH = /usr/share/arduino/hardware/archlinux-arduino/avr/cores/arduino
BOARDS_TXT        = /usr/share/arduino/hardware/archlinux-arduino/avr/boards.txt
ARDUINO_VAR_PATH  = /usr/share/arduino/hardware/archlinux-arduino/avr/variants
BOOTLOADER_PARENT = /usr/share/arduino/hardware/archlinux-arduino/avr/bootloaders
ARDUINO_PLATFORM_LIB_PATH    :=  /usr/share/arduino/hardware/archlinux-arduino/avr/libraries
USER_LIB_PATH    :=  /home/logan/Arduino/libraries

ARDUINO_SKETCHBOOK= /home/logan/Arduino

BOARD_TAG         = nano
# BOARD_SUB         = atmega328old
BOARD_SUB         = atmega328
ARDUINO_PORT      = /dev/ttyUSB*
# ARDUINO_LIBS      = LiquidCrystal

# USER_LIB_PATH    :=  $(PROJECT_DIR)/src

ARDUINO_LIBS = SoftwareSerial OneWire DallasTemperature

include /usr/share/arduino/Arduino.mk
