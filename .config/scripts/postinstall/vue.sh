#!/bin/bash

if ! command -v npm 
then
	sudo pacman -S npm
fi

sudo npm install -g @vue/cli
