# octoferm-arduino
Arduino sketch used to control fermentation temperatures

## Building and Uploading
- ~~Run `make` and `make upload`~~ Run `./build.sh` and `./build.sh upload`
- Check `dmesg` ouput if connection to Arduino fails

## Development Environment Setup
### Arch
More detailed instructions here: https://wiki.archlinux.org/index.php/Arduino#Arduino-mk
- Install arduino `pacman -S arduino`
- Run `arduino`
- In the Arduino IDE, open Boards Manager and install AVR libraries for nano.
- Select Board Arduino Nano
- Select Processor Atmega328P old
- Select correct port

- Install arduino-mk `pacman -S arduino-mk`
