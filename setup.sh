#!/bin/bash

shopt -s dotglob
cp -r . ~
shopt -u dotglob

cd ~
rm -rf dotfile
rm setup.sh
