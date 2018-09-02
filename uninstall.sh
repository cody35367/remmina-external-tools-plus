#!/bin/bash
. ./vars.sh
for script in external_tools/*; do
    sudo rm -iv $REMMINA_EXTERNAL_TOOLS_DIR/$(basename $script)
done