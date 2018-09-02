#!/bin/sh

. $(dirname $0)/functions.sh
settitle

if [ -z $ssh_privatekey ]; then
    export CURR_SSH_COMMAND="ssh $ssh_proxycommand $ssh_username@$server"
else
    export CURR_SSH_COMMAND="ssh $ssh_proxycommand -i $ssh_privatekey $ssh_username@$server"
fi

gnome-terminal -- bash -c '$CURR_SSH_COMMAND ; $SHELL'
