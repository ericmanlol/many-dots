#!/usr/bin/env bash

curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs \
 https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

ln -s /configs/init.vim ~/.config/nvim/init.vim
