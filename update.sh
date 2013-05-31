#!/bin/sh
cd ~/dotfiles
git pull
git submodule foreach --recursive git clean -df
git submodule update --recursive --init
git submodule update --recursive
git status
