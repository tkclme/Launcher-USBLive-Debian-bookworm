#!/bin/bash

#       === USB LIVE Debian XFCE GNU/Linux 12 (bookworm) Initialisation Script ===
# !! Connexion required

set -e

./scripts/update.sh
.scripts/config_lang.sh
./scripts/config_user.sh

until [ "$reboot" = "n" ]
do
    echo "Reboot? y/n"
    read reboot
    if [ "$reboot" = 'y' ]
    then
        echo "System will restart"
        sudo reboot
    fi
done
echo "Back to Home"
