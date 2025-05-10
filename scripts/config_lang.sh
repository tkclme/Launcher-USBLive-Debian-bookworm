#!/bin/bash

# Configuration de langue
echo "=== Configuring language ==="

sudo locale-gen fr_FR.UTF-
sudo update-locale LANG=fr_FR.UTF-8

export LANG=fr_FR.UTF-8

# Configuration de la disposition clavier
echo "=== Configuring keyboard layout ==="

if [ -f /etc/default/keyboard ]; then
    sudo sed -i 's/XKBLAYOUT=.*/XKBLAYOUT="fr"/' /etc/default/keyboard
    sudo setupcon
    sudo udevadm trigger --subsystem-match=input --action=change
else
    echo "Erreur : fichier /etc/default/keyboard introuvable."
fi