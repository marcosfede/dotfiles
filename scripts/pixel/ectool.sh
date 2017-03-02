#!/bin/bash
git clone https://chromium.googlesource.com/chromiumos/platform/ec
cd ec
git checkout origin/firmware-link-2695.2.B
make BOARD=link CROSS_COMPILE= HOST_CROSS_COMPILE= build/link/util/ectool
sudo cp ./build/link/util/ectool /usr/bin/ectool
cd ..
sudo rm -r ec
