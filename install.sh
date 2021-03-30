#!/bin/bash

echo Starting Install
sudo pacman -S feh compton rofi i3-wm i3lock i3status
mkdir ~/.config/i3 || true
mkdir ~/scripts || true
cp -i config ~/.config/i3/
cp background.jgp ~/.config/i3/
cp background.png ~/.config.i3/
cp -r scripts/* ~/
chmod +x ~/scripts/*

while getopts ":s" opt; do
	case $opt in
		s)
			cat bashrcAppend >> ~/.bashrc
			echo "Appended .bashrc" >&2
		;;
		\?)
			echo "Invalid flag: -$OPTARG" >&2
		;;
	esac
done
echo Install Done!
