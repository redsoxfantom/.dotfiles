#!/bin/bash

folder=$1
count=$2
echo "Checking $folder to see if more than $count backups exist"

numbackups=`ls -1q $folder/*.tar.gz.enc | wc -l`
echo "$numbackups backup(s) found"
numbackupsmorethanlimit=$(($numbackups - $count))
if [[ "$numbackupsmorethanlimit" -lt "1" ]]; then
   echo "There are not more than $count backups. Script exiting"
   exit 0
fi

echo "$numbackupsmorethanlimit backup(s) will be deleted"
numbackupstodelete=$(($numbackupsmorethanlimit * 2))
ls -1qt $folder/backup-*.tar.gz* | tail -n "$numbackupstodelete" | xargs -d '\n' rm -fv
