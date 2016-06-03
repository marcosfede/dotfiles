#!/bin/bash
echo "installing zsh"
sudo apt-get install -y zsh git
sudo chsh -s /bin/zsh
wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O install.sh
sed -i 's/env zsh/#env zsh/g' install.sh
bash "install.sh"
sed -i 's/robbyrussell/agnoster/g' ~/.zshrc
wget https://github.com/powerline/powerline/raw/develop/font/PowerlineSymbols.otf -O PowerlineSymbols.otf
wget https://github.com/powerline/powerline/raw/develop/font/10-powerline-symbols.conf -O 10-powerline-symbols.conf
mkdir ~/.fonts/
mv "PowerlineSymbols.otf" ~/.fonts/
sudo fc-cache -vf ~/.fonts/
mkdir -p ~/.config/fontconfig/conf.d/
mv "10-powerline-symbols.conf" ~/.config/fontconfig/conf.d/
sudo rm install.sh
