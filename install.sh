#!/usr/bin/env bash

# xorg display server installation
sudo apt install -y xorg xbacklight xbindkeys xvkbd xinput

# PACKAGE INCLUDES build-essential.
sudo apt install -y build-essential

# Create folders in user directory (eg. Documents,Downloads,etc.)
xdg-user-dirs-update

# Window Manager
sudo apt install -y i3-wm suckless-tools 

# Network File Tools/System Events
sudo apt install -y dialog avahi-daemon acpi acpid gvfs-backends

sudo systemctl enable avahi-daemon
sudo systemctl enable acpid

# Terminal (eg. kitty)
sudo apt install -y kitty

# Zsh
sudo apt install -y zsh
## set as default shell
chsh -s /bin/zsh
## zsh-autosuggestions
mkdir ~/.zsh
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions

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

# Removing bluetooth icon shortcut
sudo rm /etc/xdg/autostart/blueman.desktop

# Packages needed for window manager installation
sudo apt install -y picom rofi dunst libnotify-bin unzip

# Install Lightdm Console Display Manager
sudo apt install -y lightdm lightdm-gtk-greeter-settings
sudo systemctl enable lightdm

########################################################
# End of script for default config
#

# Moving wallpapers
cp ~/bookworm-scripts/resources/wallpapers/* ~/Imagens/wallpapers/ 

# Moving config-files
cp -r ~/bookworm-scripts/resources/config-files/* ~/.config/

# Install NerdFonts
bash ~/bookworm-scripts/resources/nerdfonts.sh

sudo apt autoremove

printf "\e[1;32mYou can now reboot! Thank you.\e[0m\n"
