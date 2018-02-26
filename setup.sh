#!/bin/bash

currentdir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
target="$HOME/.bashrc"

cp -r ./bin $HOME
cp .vimrc $HOME
cp .bash_host_specific $HOME

echo "#.dotfiles" >> $target
echo "if [ -f $currentdir/.bashrc ]; then" >> $target
echo "	source $currentdir/.bashrc $currentdir" >> $target
echo "fi" >> $target
