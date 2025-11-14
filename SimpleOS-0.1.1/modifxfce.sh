
#!/bin/bash

# config panel
cp -r xfce-panel-Simple0111/panel ~/.config/xfce4/
cp xfce-panel-Simple0111/xfce4-panel.xml ~/.config/xfce4/xfconf/xfce-perchannel-xml/
 
# fond ecrans
sudo cp -r ~/Graphiques/fondecran/* /usr/share/backgrounds/
sudo chmod -R 755 /usr/share/backgrounds/
sudo find /usr/share/backgrounds/ -type f -exec chmod 644 {} \;