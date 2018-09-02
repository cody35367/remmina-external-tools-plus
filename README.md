# Remmina External Tools Plus (RETP)

This project holds simple addtions to the default external tools that come default with the Remmina desktop client. More info about Remmina can be found [here.](https://remmina.org/) 

So far I have added an option to launch an SSH session through a gnome-terminal and change the way the filezilla integration works to meet my needs.

## Prerequisites

This has only been tested on Ubuntu 18.04. You need the following installed for these integrations to work. 

```
sudo apt update
sudo apt install remmina gnome-terminal filezilla
```

## Scripts and installing

### `vars.sh` :

This script is called by most other scripts and is used to setup common variables. Change the paths and files names here if your system is different.

### `install.sh` :

This script is used to install the remmina external tools scripts in place for the Remmina gui to use and present as menu options.

### `remove-defaults.sh` :

This script makes it easy to remove the default external tools scripts if you do not want to use them.

### `uninstall.sh` :

This script will remove the previously installed external tools scripts from this project.

### `restore-defaults.sh` :

This script will restore the previously moved default external tools scripts.

## How to use

The external tool scripts provided in this project only work with an SSH protocol connection object within remmina. This means that for any SSH connection added in the Remmina GUI these should work for. To access these external tool integrations, simply right-click your SSH connection object in Remmina and select External Tools or you can simply press Ctrl+T with the SSH object selected. You will see any option for each main script in this project.

### Gnome Terminal (./external_tools/*RETP-gterminal.sh)

The gnome-terminal integration simply opens the ssh session in gnome-terminal. This allows you to overcome some of the limitations of the Remmina terminal. If you disconnect you can simply type `$CURR_SSH_COMMAND` in the stilling running shell to restore your session without going through the Remmina GUI again. You can also add addtional SSH command line arguments by configuring the "SSH Proxy Command" in your Remmina SSH profile. At minimum you must have the the server name and the username configured. Passwords will not be passed, you must enter once the terminal comes up. Support will private key passing will be coming soon.

### Filezilla (./external_tools/*RETP-filezilla.sh)

For filezilla I simply upgraded the existing `remmina_filezilla_sftp.sh` to prompt for passwords always. I also have it setup if a private key is specified in the SSH profile in Remmina, it will try to match the Remmina name with the Filezilla site name at the root level. This way you can setup your key file instances in both and be able to easily connect the two by name matching.

## Dev script

You will have to manually move the script(s) in external_tools_dev. This scripts will help with development of these tool integration sctipts.

### Show env (./external_tools_dev/*RETP-env.sh)

This allows you to simply get a terminal windows that shows you all the environmental variables for the shell that executes these scripts. This allows you to easily see what Remmina is passing you through environmental vars. 