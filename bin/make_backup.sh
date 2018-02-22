#!/bin/bash

TMP=/tmp
src=$1
dest=$2
pubkey=$3
tarsrc="backup-$(date +%F-%H-%M-%S).tar.gz"
tmptarloc="$TMP/$tarsrc"
encsrc=$tarsrc.enc
tmpencsrc="$TMP/$encsrc"
keyfile=$tarsrc.key
tmpkeyfile="$TMP/$keyfile"
enckeyfile=$keyfile.enc
tmpenckeyfile="$TMP/$enckeyfile"

echo "Src: $src. Dest: $dest. Public Key: $pubkey"
echo "Tar will be written to $tmptarloc and encrypted to $dest/$encsrc."
echo "Key file will be written to $tmpkeyfile and encrypted to $dest/$enckeyfile"

tar czf $tmptarloc $src
echo "tar completed"
openssl rand 32 -out $tmpkeyfile
echo "key file created"
openssl enc -aes-256-cbc -pass file:$tmpkeyfile < $tmptarloc > $tmpencsrc
echo "tar file encrypted with key file"
openssl rsautl -encrypt -pubin -inkey $pubkey < $tmpkeyfile > $tmpenckeyfile
echo "key file encrypted"

rm $tmpkeyfile
rm $tmptarloc
mv $tmpencsrc $dest/$encsrc
mv $tmpenckeyfile $dest/$enckeyfile
