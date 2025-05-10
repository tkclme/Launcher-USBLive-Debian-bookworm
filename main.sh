#!/bin/bash

#       === USB LIVE Debian XFCE GNU/Linux 12 (bookworm) Initialisation Script ===
# !! Connexion required

set -e

# Vérification de l'existence des scripts avant exécution
if [ ! -f ./scripts/update.sh ]; then
    echo "Erreur : ./scripts/update.sh introuvable."
    exit 1
fi

if [ ! -f ./scripts/config_lang.sh ]; then
    echo "Erreur : ./scripts/config_lang.sh introuvable."
    exit 1
fi

if [ ! -f ./scripts/config_user.sh ]; then
    echo "Erreur : ./scripts/config_user.sh introuvable."
    exit 1
fi

./scripts/update.sh
./scripts/config_lang.sh
./scripts/config_user.sh

until [ "$reboot" = "n" ]
do
    echo "Reboot? y/n"
    read reboot
    if [ "$reboot" = 'y' ]; then
        echo "System will restart"
        sudo reboot
    fi
done
echo "Back to Home"