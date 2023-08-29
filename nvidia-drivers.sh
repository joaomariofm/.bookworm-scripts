# Software Properties Common (needed for apt-add-repository command)
sudo apt install -y software-properties-common

# Prerequisites
sudo apt install -y linux-headers-amd64

# Adding non-free and contrib repositories
sudo apt-add-repository -y non-free contrib

# Updating repositories
sudo apt update

# Installing Nvidia Driver
sudo apt install -y nvidia-driver

########################################################
# End of script for default config
#

sudo apt autoremove

printf "\e[1;32mYou can now reboot! Thank you.\e[0m\n"
