#!/bin/bash

sudo chmod +x ./*
sudo chmod +x ./apps/*
sudo chmod +x ./vscode/*

source ./apps/apps.sh
source ./apps/packages.sh
source ./scripts.sh
#source ./vscode/vscode.sh
source vimconfig.sh
source dotfiles.sh
source customization.sh
source ohmyzsh.sh

cp ./scripts/kbd /usr/bin/
source /usr/bin/

