#!/bin/bash

cp -r ./bin $HOME
cp .bash_aliases $HOME
cp .bash_variables $HOME
cp .vimrc $HOME

diff -u  ./.bashrc $HOME/.bashrc > ./.bashrc.patch
currentdir=$(PWD)
cd $HOME
patch < $currentdir/.bashrc.patch
cd -
rm .bashrc.patch
