#!/bin/sh
cd ~/dotfiles/vim
rake update
cd ~/dotfiles
git pull
git submodule update --recursive --init
git submodule update --recursive
git submodule foreach --recursive git clean -df
git status
