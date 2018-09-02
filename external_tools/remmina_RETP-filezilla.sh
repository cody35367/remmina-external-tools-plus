#!/bin/sh

. $(dirname $0)/functions.sh
settitle

if [ -z $ssh_privatekey ]; then
    filezilla -l ask sftp://$ssh_username@$server
else
    filezilla -c 0/$name
fi
