#!/usr/bin/bash

#  fabrice meynard 14-11-2025

# ce script installe la base de mon systeme
# sur une base debian 13.1 netinst minimale

# mise ajour
sudo apt update
sudo apt upgrade

# outils
sudo apt install curl
sudo apt install eggs
sudo apt install git

# clonage du depot github 

# xfce
sudo apt install --no-install-recommends xfce4 lightdm xorg
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

# ajout plugins thunar
sudo apt install thunar-archive-plugin

# nettoyage
cd
rm *.deb
sudo apt autoremove --purge
sudo apt clean

# affiche les 20 plus gros deb installes
dpkg-query -Wf '${Installed-Size}\t${Package}\n' | sort -nr | head -20

