#!/bin/bash
echo "installing themes-fede and icons"
wget https://www.googledrive.com/host/0B0uyhbFQ15ncVFJpcWMzQWN3ZTA/vertex-icons.zip -O vertex-icons.zip
unzip vertex-icons.zip
mkdir -p ~/.icons
sudo mv vertex-icons-master ~/.icons/
sudo rm -R vertex-icons.zip
