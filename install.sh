#!/bin/bash
# Clear the Terminal
clear
# Zenity
GUI=$(zenity --list --checklist \
	--height 400 \
	--width 800 \
	--title="Fede-installation-script" \
	--text "Pick one or multiple Actions to execute." \
	--column=Picks \
	--column=Actions \
	--column=Description \
	FALSE "Update System" "Updates the package lists, the system packages and Applications."  \
	FALSE "Set up bash+zsh+env config dotfiles" "Set up bash+zsh+env config dotfiles"  \
	FALSE "Install Autokey" "Installs Autokey + hotkeys"  \
	FALSE "Speed-Up Memory" "Installs preload and enables zRAM." \
	FALSE "Install Ubuntu Restricted Extras" "Installs commonly used applications with restricted copyright (mp3, avi, mpeg, TrueType, Java, Flash, Codecs)." \
	FALSE "Install Extra Multimedia Codecs" "Installs extra multimedia codecs." \
	FALSE "Install Support for Archive Formats" "Installs support for archive formats." \
	FALSE "Install GDebi" "Installs GDebi. A simple tool to install deb files." \
	FALSE "Install Google Chrome" "Installs Google Chrome. A browser that combines a minimal design with sophisticated technology to make the web faster, safer, and easier." \
	FALSE "Install Firefox" "Installs Firefox. A free and open-source web browser." \
	FALSE "Install VLC" "Installs VLC. A free and open source cross-platform multimedia player and framework that plays most multimedia files as well as DVDs, Audio CDs, VCDs, and various streaming protocols." \
	FALSE "Install Qbittorrent" "Installs the Qbittorrent BitTorrent client." \
	FALSE "Install Atom" "Installs Atom. A hackable text editor for the 21st Century." \
	FALSE "Install LibreOffice" "Installs LibreOffice. A powerful office suite." \
	FALSE "Install Burg" "Installs Burg + Lightness. Graphical bootloader with awesome theme." \
	FALSE "Configure git Fede" "my git config" \
	FALSE "Install Fede's themes/icons" "Unity themes based on numix+flatabulous" \
	FALSE "Install gedit gruvbox" "Gedit theme based on gruvbox scheme" \
	FALSE "Set i7 keybinds" "Set i7 keybinds for my logitech mouse" \
	FALSE "Setup VIM" "Installs neovim + config + gruvbox" \
	FALSE "Install Noga driver" "Installs Noganet keyboard custom driver" \
	FALSE "Install Java" "Installs Java jdk for work" \
	FALSE "Install pavucontrol" "Installs pavucontrol for my i7 sound issue" \
	FALSE "Install Popcorn-Time" "Installs Popcorn-Time" \
	FALSE "Install SF-Fonts" "Installs San Francisco Fonts" \
	FALSE "Add open-in-terminal" "Adds the open in terminal contextual menu option" \
	FALSE "Installs Spotify+addkiller" "Installs Spotify + Addkiller" \
	FALSE "Set terminal aliases" "Sets terminal aliases for bash and zsh" \
	FALSE "Fix Unity gtk border" "Fixes Unity gtk3 border bug" \
	FALSE "Install Unity-tweak + compiz" "Install Unity-tweak-tools + compizconfig-settings-manager" \
	FALSE "Install zsh+theme" "Install Unity-tweak-tools + compizconfig-settings-manager" \
	FALSE "Install Synapse" "Installs Synapse Launcher" \
	FALSE "Clean-Up Junk" "Removes unnecessary packages and the local repository of retrieved package files." \
	--separator=', ');
clear


# Update System Action
if [[ $GUI == *"Update System"* ]]
then
	echo '-------------------------------------------------------'
	echo "Updating system..."
	echo ""
	. ./scripts/update.sh
fi

# Install bash+zsh+env Action
if [[ $GUI == *"Set up bash+zsh+env config dotfiles"* ]]
then
	echo '-------------------------------------------------------'
	echo 'Set up bash+zsh+env config dotfiles'
	. ./scripts/bashzsh.sh
fi


# Install Autokey action
if [[ $GUI == *"Install Autokey"* ]]
then
	echo '-------------------------------------------------------'
	echo Installing Autokey
	. ./scripts/autokey.sh
fi

# Speed-Up Memory Action
if [[ $GUI == *"Speed-Up Memory"* ]]
then
	echo '-------------------------------------------------------'
	echo "Speeding-up Memory..."
	echo ""
	. ./scripts/zram.sh
fi

# Install Ubuntu Restricted Extras Action
if [[ $GUI == *"Install Ubuntu Restricted Extras"* ]]
then
	echo '-------------------------------------------------------'
	echo "Installing Ubuntu Restricted Extras..."
	echo ""
	. ./scripts/ubunturestricted.sh
fi

# Install Extra Multimedia Codecs Action
if [[ $GUI == *"Install Extra Multimedia Codecs"* ]]
then
	echo '-------------------------------------------------------'
	echo "Installing Extra Multimedia Codecs..."
	echo ""
	. ./scripts/extracodecs.sh
fi

# Install Support for Archive Formats Action
if [[ $GUI == *"Install Support for Archive Formats"* ]]
then
	echo '-------------------------------------------------------'
	echo "Installing Support for Archive Formats"
	echo ""
	. ./scripts/archiveformats.sh
fi

# Install GDebi Action
if [[ $GUI == *"Install GDebi"* ]]
then
	echo '-------------------------------------------------------'
	echo "Installing GDebi..."
	echo ""
	. ./scripts/gdebi.sh
fi

# Install Google Chrome Action
if [[ $GUI == *"Install Google Chrome"* ]]
then
	echo '-------------------------------------------------------'
	echo "Installing Google Chrome..."
	echo ""
	. ./scripts/chrome.sh
fi

# Install Firefox Action
if [[ $GUI == *"Install Firefox"* ]]
then
	echo '-------------------------------------------------------'
	echo "Installing Firefox..."
	echo ""
	. ./scripts/firefox.sh
fi

# Install VLC Action
if [[ $GUI == *"Install VLC"* ]]
then
	echo '-------------------------------------------------------'
	echo "Installing VLC..."
	echo ""
	. ./scripts/vlc.sh
fi

# Install Qbittorrent Action
if [[ $GUI == *"Install Qbittorrent"* ]]
then
	echo '-------------------------------------------------------'
	echo "Installing Qbittorrent..."
	echo ""
	. ./scripts/qbittorrent.sh
fi

# Install Atom Action
if [[ $GUI == *"Install Atom"* ]]
then
	echo '-------------------------------------------------------'
	echo "Installing Atom..."
	echo ""
	. ./scripts/atom.sh
fi


# Install LibreOffice Action
if [[ $GUI == *"Install LibreOffice"* ]]
then
	echo '-------------------------------------------------------'
	echo "Installing LibreOffice..."
	echo ""
	. ./scripts/libreoffice.sh
fi

# Install Burg Action
if [[ $GUI == *"Install Burg"* ]]
then
	echo '-------------------------------------------------------'
	echo "Installing Burg..."
	. ./scripts/burg.sh
fi

# Configure git Fede Action
if [[ $GUI == *"Configure git Fede"* ]]
then
	echo '-------------------------------------------------------'
	. ./scripts/fede-git-config.sh
fi

# Install Fede's Themes Action
if [[ $GUI == *"Install Fede's themes/icons"* ]]
then
	echo '-------------------------------------------------------'
	echo "installing themes-fede and icons"
	. ./scripts/vertex-icons.sh
fi

# Install gedit gruvbox Action
if [[ $GUI == *"Install gedit gruvbox"* ]]
then
	echo '-------------------------------------------------------'
	echo "installing gedit theme"
	. ./scripts/geditgruvbox.sh
fi

# Set i7 keybinds Action
if [[ $GUI == *"Set i7 keybinds"* ]]
then
	echo '-------------------------------------------------------'
	echo "installing mousebinds"
	. ./scripts/i7mousebinds.sh
fi

# Install VIM Action
if [[ $GUI == *"Setup VIM"* ]]
then
	echo '-------------------------------------------------------'
	echo "setting up vim"
	. ./scripts/vimconfig.sh
fi


# Install Noga driver Action
if [[ $GUI == *"Install Noga driver"* ]]
then
	echo '-------------------------------------------------------'
	. ./scripts/noganet-keyboard.sh
fi

# Install Java Action
if [[ $GUI == *"Install Java"* ]]
then
	echo '-------------------------------------------------------'
	echo installing java
	. ./scripts/java.sh
fi

# Install pavucontrol Action
if [[ $GUI == *"Install pavucontrol"* ]]
then
	echo '-------------------------------------------------------'
	. ./scripts/pavucontrol.sh
fi


# Install Popcorn-Time Action
if [[ $GUI == *"Install Popcorn-Time"* ]]
then
	echo '-------------------------------------------------------'
	echo Installing popcorn-time
	. ./scripts/popcorn-time.sh
fi


# Install SF-Fonts Action
if [[ $GUI == *"Install SF-Fonts"* ]]
then
	echo '-------------------------------------------------------'
	echo 'Installing SF-Fonts'
	. ./scripts/sf-fonts.sh
fi


# Add open-in-terminal Action
if [[ $GUI == *"Add open-in-terminal"* ]]
then
	echo '-------------------------------------------------------'
	echo "adding open in terminal"
	. ./scripts/open-in-terminal.sh
fi

# Installs Spotify+addkiller Action
if [[ $GUI == *"Installs Spotify+addkiller"* ]]
then
	echo '-------------------------------------------------------'
	echo "installing new spotify"
	. ./scripts/spotify-adblock.sh
fi

# Set terminal aliases Action
if [[ $GUI == *"Set terminal aliases"* ]]
then
	echo '-------------------------------------------------------'
	echo "setting up aliases"
	. ./scripts/terminalaliases.sh
fi


# Fix Unity gtk border Action
if [[ $GUI == *"Fix Unity gtk border"* ]]
then
	echo '-------------------------------------------------------'
	echo fixing unity gtk3
	. ./scripts/unity-gtk3fix.sh
fi

# Install Unity-tweak + compiz Action
if [[ $GUI == *"Install Unity-tweak + compiz"* ]]
then
	echo '-------------------------------------------------------'
	. ./scripts/unity-tweak-compiz.sh
fi

# Install zsh+theme Action
if [[ $GUI == *"Install zsh+theme"* ]]
then
	echo '-------------------------------------------------------'
	echo "installing zsh"
	. ./scripts/zsh-ohmyzsh.sh
fi

# Install Synapse action
if [[ $GUI == *"Install Synapse"* ]]
then
	echo '-------------------------------------------------------'
	echo "installing Synapse"
	. ./scripts/synapse.sh
fi

# Clean-Up Junk Action
if [[ $GUI == *"Clean-Up Junk"* ]]
then
	echo '-------------------------------------------------------'
	echo "Cleaning-up junk..."
	echo ""
	. ./scripts/cleanup.sh
fi

# Notification
echo '-------------------------------------------------------'
notify-send -i utilities-terminal Fede-installation-script "All tasks ran successfully!"
