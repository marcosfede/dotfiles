#!/bin/bash
echo Installing popcorn-time
wget https://www.googledrive.com/host/0B0uyhbFQ15ncVFJpcWMzQWN3ZTA/Popcorn-Time.tar.gz -O Popcorn-Time.tar.gz
mkdir Popcorn-Time
tar xf Popcorn-Time.tar.gz -C Popcorn-Time
bash Popcorn-Time/popcorninstall.sh
sudo rm -R Popcorn-Time.tar.gz Popcorn-Time
