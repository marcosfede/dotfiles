#!/bin/bash
sudo add-apt-repository ppa:n-muench/burg -y
sudo apt-get update
sudo apt-get install -y burg
sudo cp -R /boot/grub/locale /boot/burg/locale
echo installing lightness theme
wget https://www.googledrive.com/host/0B0uyhbFQ15ncVFJpcWMzQWN3ZTA/Lightness.tar.gz -O Lightness.tar.gz
sudo tar xf Lightness.tar.gz -C /boot/burg/themes
rm Lightness.tar.gz
sudo update-burg
