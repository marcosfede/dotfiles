#!/bin/bash
git clone https://github.com/corcoran/chromebook_keyboard_backlight_driver.git
cd chromebook_keyboard_backlight_driver
make
sudo insmod chromeos_keyboard_leds.ko
sudo insmod chromebook_kb_backlight.ko

echo "manual config needed, see script"
# copy our drivers to the kernel's modules dir
# sudo cp chromeos_keyboard_leds.ko /lib/modules/3.12.0-031200-generic/
# sudo cp chromebook_kb_backlight.ko /lib/modules/3.12.0-031200-generic/

# tell system we have new modules
# sudo depmod -a
# sudo modprobe module

# then edit /etc/modules and add two lines:
# chromeos_keyboard_leds
# chromebook_kb_backlight
