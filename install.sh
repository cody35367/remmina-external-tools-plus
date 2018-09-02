#!/bin/bash
. ./vars.sh
sudo cp -v external_tools/* $REMMINA_EXTERNAL_TOOLS_DIR
sudo chmod -v +rx $REMMINA_EXTERNAL_TOOLS_DIR/*