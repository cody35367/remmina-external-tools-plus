#!/bin/bash
. ./vars.sh
mkdir -p backup
for default in ${REMMINA_EXTERNAL_TOOLS_DEFAULTS[@]}; do
    sudo mv -v $REMMINA_EXTERNAL_TOOLS_DIR/$default backup
done