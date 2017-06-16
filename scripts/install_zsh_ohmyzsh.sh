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
