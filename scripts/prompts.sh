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
	sudo apt install zsh fish -y
elif [[ $platform == 'mac' ]]; then
	# install fish
	brew install fish zsh
fi

echo "setting up aliases"
rm ~/.aliases
ln -s ~/dotfiles/files/.aliases ~/.aliases
touch ~/.hushlogin

# zsh stuff
# ZSH_CUSTOM="~/.oh-my-zsh/custom"
# sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
# git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt"
# ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"
# git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
# git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
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
fish -c "omf install nai"
# install bass to get bash compatibility
fish -c "fisher edc/bass fzf"
mkdir -p ~/bin
mkdir -p ~/.yarn/bin
sudo mkdir -p /opt/cuda/bin
chsh -s $(which fish)
