#!/usr/bin/env bash
platform='unknown'
unamestr=`uname`
if [[ "$unamestr" == 'Linux' ]]; then
   platform='linux'
elif [[ "$unamestr" == 'Darwin' ]]; then
   platform='mac'
fi
# run script according to platform
if [[ $platform == 'linux' ]]; then
	# install fish
	sudo apt install fish
elif [[ $platform == 'mac' ]]; then
	# install fish
	brew install fish
fi

# install fisherman plugin manager
curl -Lo ~/.config/fish/functions/fisher.fish --create-dirs git.io/fisher
# install bass to get bash compatibility
fisher edc/bass
# install ohmyfish
curl -L http://get.oh-my.fish | fish
#install some themes
omf install agnoster
omf install nai
# link dotfile
ln -s ~/dotfiles/files/init.fish ~/.config/omf/init.fish
