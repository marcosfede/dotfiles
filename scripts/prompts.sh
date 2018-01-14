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
	sudo pacman -S fish zsh
elif [[ $platform == 'mac' ]]; then
	# install fish
	brew install fish zsh
fi

echo "setting up aliases"
rm ~/.aliases
ln -s ~/dotfiles/files/.aliases ~/.aliases

# zsh stuff
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
curl -o - https://raw.githubusercontent.com/denysdovhan/spaceship-zsh-theme/master/install.zsh | zsh

rm ~/.zshrc ~/.envvariables
ln -s ~/dotfiles/files/.zshrc ~/.zshrc
ln -s ~/dotfiles/files/.envvariables ~/.envvariables
touch ~/.localenvvariables

# install fisherman plugin manager
curl -Lo ~/.config/fish/functions/fisher.fish --create-dirs git.io/fisher

# link dotfile
rm ~/.config/fish/config.fish
mkdir -p ~/.config/fish
ln -s ~/dotfiles/files/config.fish ~/.config/fish/config.fish

# install ohmyfish
curl -L http://get.oh-my.fish | fish
#install some themes
omf install agnoster
omf install nai
# install bass to get bash compatibility
fisher edc/bass
fisher fzf
