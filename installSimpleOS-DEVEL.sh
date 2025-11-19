#!/usr/bin/bash

#  fabrice meynard 14-11-2025

# ce script installe la base de mon systeme
# sur une base debian 13.1 netinst minimale

# Ajout du dépôt GitHub
echo "deb [trusted=yes] https://raw.githubusercontent.com/GitFabMey87/TestDepot/main/pool/main ./" \
  | sudo tee /etc/apt/sources.list.d/testdepot.list

# mise ajour
sudo apt update
sudo apt upgrade
apt install -y build-essential meson ninja-build
apt install -y libgtk-3-dev libxfce4panel-2.0-dev

# outils
sudo apt install -y curl

# xfce
sudo apt install --no-install-recommends xorg lightdm xfce4 xfce4-terminal
sudo apt install thunar thunar-archive-plugin mousepad 
sudo apt install xfce4-screenshooter 
sudo apt install xfce4-notes-plugin xfce4-mailwatch-plugin

sudo dpkg-reconfigure lightdm

# brave
curl -fsS https://dl.brave.com/install.sh | sh

# modification de xfce
# themes, icones
sudo apt install simpleos-icons
sudo apt install simpleos-fonds
sudo apt install xfce-custom
sudo gtk-update-icon-cache -f -t /usr/share/icons/simpleos-icons

# modiation et config de logiciels

