#!/bin/bash

sudo apt-get install sox

shopt -s dotglob
cp -r . ~
shopt -u dotglob

cd ~
rm -rf dotfile
rm setup.sh
