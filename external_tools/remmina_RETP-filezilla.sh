#!/bin/sh

. $(dirname $0)/functions.sh
settitle

if [ -z $ssh_privatekey ]; then
    nohup filezilla -l ask sftp://$ssh_username@$server > /dev/null 2>&1 &
else
    nohup filezilla -c 0/$name > /dev/null 2>&1 &
fi

sleep 1