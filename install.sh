#!/usr/bin/env bash

# Create folders in user directory (eg. Documents,Downloads,etc.)
xdg-user-dirs-update

# xorg display server installation
sudo apt install -y xorg xbacklight xbindkeys xvkbd xinput

# PACKAGE INCLUDES build-essential.
sudo apt install -y build-essential

# Window Manager
sudo apt install -y i3-wm suckless-tools 

# Network File Tools/System Events
sudo apt install -y dialog avahi-daemon acpi acpid gvfs-backends
sudo systemctl enable avahi-daemon
sudo systemctl enable acpid

# Terminal (eg. kitty)
sudo apt install -y kitty

# FlameShot 
sudo apt install -y flameshot

# Exa and Bat
sudo apt install -y exa bat

# Sound packages
sudo apt install -y pulseaudio alsa-utils pavucontrol volumeicon-alsa pamixer

# Brightness control
sudo apt install -y brightnessctl

# Neofetch
sudo apt install -y neofetch

# Network Manager
sudo apt install -y network-manager

# Iwd
sudo apt install -y iwd

# Browser Installation (eg. chromium)
sudo apt install -y firefox-esr

# Desktop background browser/handler
sudo apt install -y feh

# Printing and bluetooth
sudo apt install -y cups system-config-printer simple-scan
sudo apt install -y bluez blueman
sudo systemctl enable cups
sudo systemctl enable bluetooth

## Breaking blueman-tray
sudo mv /usr/bin/blueman-tray /usr/bin/-break-blueman-tray

# Packages needed for window manager installation
sudo apt install -y picom rofi dunst libnotify-bin unzip

# playerctl
sudo apt install -y playerctl

# xclip
sudo apt install -y xclip

# Install ly Display Manager
sudo apt install -y build-essential libpam0g-dev libxcb-xkb-dev
git clone --recurse-submodules https://github.com/fairyglade/ly ~/.ly
(cd ~/.ly && git checkout tags/v0.5.3)
(cd ~/.ly && sudo make gitea)
(cd ~/.ly && sudo make install)
sudo systemctl enable ly.service

########################################################
# End of script for default config
#

# Moving wallpapers
mkdir ~/Imagens/wallpapers
cp ~/bookworm-scripts/resources/wallpapers/* ~/Imagens/wallpapers/ 

# Moving config files
cp -r ~/bookworm-scripts/resources/config-files/* ~/.config/

# Install NerdFonts
bash ~/bookworm-scripts/resources/scripts/nerdfonts.sh

sudo apt autoremove

printf "\e[1;32mYou can now reboot! Thank you.\e[0m\n"
