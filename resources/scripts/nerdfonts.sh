#!/usr/bin/env bash

sudo apt install unzip -y

mkdir -p ~/.local/share/fonts

cd /tmp
fonts=( "Hack" "RobotoMono" )

for font in ${fonts[@]}
do
	wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.2/$font.zip
	unzip $font.zip -d $HOME/.local/share/fonts/
	rm $font.zip
	rm $HOME/.local/share/fonts/readme.md
	rm $HOME/.local/share/fonts/LICENSE.md
	rm $HOME/.local/share/fonts/LICENSE.txt
done
fc-cache
