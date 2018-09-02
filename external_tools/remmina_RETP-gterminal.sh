#!/bin/sh

. $(dirname $0)/functions.sh
settitle

export CURR_SSH_COMMAND="ssh $ssh_proxycommand $ssh_username@$server"
gnome-terminal -- bash -c '$CURR_SSH_COMMAND ; $SHELL'
