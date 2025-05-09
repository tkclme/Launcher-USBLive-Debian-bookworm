#!/bin/bash

#       === USB LIVE Debian XFCE GNU/Linux 12 (bookworm) Initialisation Script ===
# !! Connexion required

set -e

source .lib/utilis.sh

./scripts/update.sh
./config_lang.sh
./script/config_user.sh

sudo reboot
