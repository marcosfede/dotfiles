#!/bin/bash
sudo sed -i 's/quiet splash/quiet splash zswap.enabled=1/g' /etc/default/grub
sudo update-grub
