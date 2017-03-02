#!/bin/bash
platform='unknown'
unamestr=`uname`
if [[ "$unamestr" == 'Linux' ]]; then
   platform='linux'
elif [[ "$unamestr" == 'Darwin' ]]; then
   platform='mac'
fi
if [[ $platform == 'linux' ]]; then
	sudo apt-get install -y zsh git
elif [[ $platform == 'mac' ]]; then
	brew install zsh wget
fi
wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O zsh.sh
sed -i 's/env zsh/#env zsh/g' zsh.sh
bash "zsh.sh"
sudo rm zsh.sh
