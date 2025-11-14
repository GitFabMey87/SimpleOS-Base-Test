#!/usr/bin/bash

#  fabrice meynard 14-11-2025

# ce script installe la base de mon systeme
# sur une base debian 13.1 netinst minimale

# mise ajour
sudo apt update
sudo apt upgrade

# outils
sudo apt install curl
sudo apt install git


# clonage du depot github 
git clone https://github.com/GitFabMey87/SimpleOS-Base-Test.git

# xfce
sudo apt install --no-install-recommends xfce4 lightdm xorg
sudo apt install mousepad
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

# installe eggs
#apt update && apt install -y wget
#wget https://sourceforge.net/projects/penguins-eggs/files/DEB/penguins-eggs_25.7.30-1_amd64.deb
#apt install -y ./penguins-eggs_25.7.30-1_amd64.deb

# nettoyage
cd
rm *.deb
sudo apt autoremove --purge
sudo apt clean

# modification de xfce
# themes, icones
# sudo cp -r /home/ostesteur/SimpleOS-Base-Test/Graphiques/Icones/SimpleOS-Test1 /usr/share/icons/
# sudo gtk-update-icon-cache -f -t /usr/share/icons/SimpleOs-0.1.1

# modiation et config de logiciels


# affiche les 20 plus gros deb installes
dpkg-query -Wf '${Installed-Size}\t${Package}\n' | sort -nr | head -20

