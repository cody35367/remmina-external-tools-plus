#!/bin/bash
. ./vars.sh
if [ -d backup ]; then
    sudo mv -v backup/* $REMMINA_EXTERNAL_TOOLS_DIR
    rmdir -v backup
fi