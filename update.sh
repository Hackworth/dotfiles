#!/bin/sh
cd ~/dotfiles/vim
git checkout master
rake
cd ~/dotfiles
git pull
git submodule update --recursive --init
git submodule update --recursive
git submodule foreach --recursive git clean -df
git submodule update 
git status
