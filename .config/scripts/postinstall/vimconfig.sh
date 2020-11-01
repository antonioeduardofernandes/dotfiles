#!/bin/bash

#vimrc
 ~/.vim/autoload/plug.vim --create-dirs \
 https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

vim -c ":PlugInstall"
vim -c ":CocInstall coc-clangd coc-css coc-prettier coc-emmet coc-html coc-json coc-sh coc-snippets coc-svg coc-template coc-tsserver coc-vetur"
