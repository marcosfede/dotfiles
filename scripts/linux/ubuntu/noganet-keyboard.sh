#!/bin/bash
sudo apt-get install -y mercurial build-essential linux-headers-generic dkms
wget https://www.googledrive.com/host/0B0uyhbFQ15ncVFJpcWMzQWN3ZTA/fedenoga.tar.gz -O fedenoga.tar.gz
tar xf fedenoga.tar.gz
cd fedenoga/aziokbd
sudo ./install.sh
cd ../..
sudo rm -R fedenoga fedenoga.tar.gz
sudo sed -i 's/quiet splash/quiet splash usbhid.quirks=0x0c45:0x7603:0x4/g' /etc/default/grub
sudo update-grub
