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

# outils
sudo apt install curl
sudo apt install git


# clonage du depot github 
git clone https://github.com/GitFabMey87/SimpleOS-Base-Test.git

# xfce
sudo apt install --no-install-recommends xorg lightdm xfce4 xfce4-terminal
sudo apt install thunar thunar-archive-plugin mousepad ristretto
sudo apt install orage xfce4-screenshooter xfce4-wavelan-plugin
sudo apt install xfce4-notes-plugin xfce4-mailwatch-plugin

sudo dpkg-reconfigure lightdm

# brave
curl -fsS https://dl.brave.com/install.sh | sh

# geary
sudo apt install geary

# ferdnium
curl -L -o ferdium.deb https://github.com/ferdium/ferdium-app/releases/download/v7.1.1/Ferdium-linux-7.1.1-amd64.deb
sudo apt install ./ferdium.deb -y

# liferea
sudo apt install liferea

# libreoffice writer
sudo apt install libreoffice-writer

# quod Libet
sudo apt install quodlibet

# parole 
sudo apt install parole

# gThumb
sudo apt install gthumb

# installe eggs
#apt update && apt install -y wget
#wget https://sourceforge.net/projects/penguins-eggs/files/DEB/penguins-eggs_25.7.30-1_amd64.deb
#apt install -y ./penguins-eggs_25.7.30-1_amd64.deb

# nettoyage
cd
rm ferdnium.deb
sudo apt autoremove --purge
sudo apt clean

# modification de xfce
# themes, icones
sudo apt install simpleos-icons
sudo apt install simpleos-fonds
sudo apt install xfce-custom
sudo gtk-update-icon-cache -f -t /usr/share/icons/simpleos-icons

# modiation et config de logiciels

