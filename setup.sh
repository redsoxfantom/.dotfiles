#!/bin/bash

currentdir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
target="$HOME/.bashrc"

echo "Copying $currentdir/.vimrc to $HOME..."
cp $currentdir/.vimrc $HOME
echo "Copying host specific bash file to $HOME..."
cp $currentdir/.bash_host_specific $HOME

echo "Updating $target to source $currentdir/.bashrc on login..."
echo "#.dotfiles" >> $target
echo "if [ -f $currentdir/.bashrc ]; then" >> $target
echo "	source $currentdir/.bashrc $currentdir" >> $target
echo "fi" >> $target

echo "Done! Login to get dotfiles modifications"
