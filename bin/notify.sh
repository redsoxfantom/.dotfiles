#!/bin/bash

key=$(cat /etc/simplepush.conf)
msg=$1
title=$2
event=$3

if [ -z "$title" ]
then
   title="Message from $(hostname)"
fi

if [ -z "$event" ]
then
   event="ServerNotify"
fi

curl --data "key=$key&msg=$msg&event=$event&title=$title" https://api.simplepush.io/send > /dev/null 2> /dev/null
