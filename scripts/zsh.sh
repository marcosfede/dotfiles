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
	sudo pacman -S zsh
	sudo apt install zsh -y
elif [[ $platform == 'mac' ]]; then
	# install fish
	brew install zsh
fi

echo "setting up aliases"
rm ~/.aliases
ln -s ~/dotfiles/files/.aliases ~/.aliases
touch ~/.hushlogin

ZSH_CUSTOM="~/.oh-my-zsh/custom"
mkdir ~/.antigen
curl -L git.io/antigen > ~/.antigen/antigen.zsh
# sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
rm ~/.zshrc ~/.envvariables
ln -s ~/dotfiles/files/.zshrc ~/.zshrc
ln -s ~/dotfiles/files/.envvariables ~/.envvariables
touch ~/.localenvvariables

chsh -s $(which zsh)
