#!/bin/bash


# Configuration de langue

sudo locale-gen fr_FR.UTF-8
sudo update-locale LANG=fr_FR.UTF-8
export LANG=fr_FR.UTF-8


# Configuration de la disposition clavier

sudo sed -i 's/XKBLAYOUT=.*/XKBLAYOUT="fr"/' /etc/default/keyboard
sudo setupcon
sudo udevadm trigger --subsystem-match=input --action=change

