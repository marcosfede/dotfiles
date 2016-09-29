#!/bin/bash
echo Installing Autokey
wget https://www.googledrive.com/host/0B0uyhbFQ15ncVFJpcWMzQWN3ZTA/autokeys.tar.gz -O autokeys.tar.gz
tar xf autokeys.tar.gz
sudo dpkg -i autokeys/debs/python-central*
sudo dpkg -i autokeys/debs/autokey*
sudo apt-get -f -y install
nohup autokey-gtk &>/dev/null &
sleep 1
mv -v autokeys/Latinhire "$HOME/.config/autokey/data/"
sudo apt-mark hold autokey-gtk autokey-common
sudo rm -R autokeys.tar.gz autokeys
