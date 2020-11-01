#!/bin/bash

APPS=(
  powerline-fonts 
	alsa-utils 
	curl 
	code
	numlockx 
	usbutils 
	wget 
	base-devel 
	nnn 
	rofi 
	wget 
	feh 
	zsh 
	powerline-fonts 
	npm 
	nodejs
)

for APP in "${APPS[@]}"
do
	sudo pacman -S $APP --noconfirm
done
