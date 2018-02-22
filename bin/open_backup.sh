#!/bin/bash

src=$1
tarsrc=$src.tar.gz
encsrc=$tarsrc.enc
privkey=$2
enckeyfile=$tarsrc.key.enc
keyfile=$tarsrc.key

openssl rsautl -decrypt -inkey $privkey < $enckeyfile > $keyfile
openssl enc -aes-256-cbc -d -pass file:$keyfile < $encsrc > $tarsrc
tar -zxf $tarsrc

rm $tarsrc
rm $keyfile
