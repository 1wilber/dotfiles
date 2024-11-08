#!/bin/bash
WSNUM=(1 2 3 4 5 6)

gsettings set org.gnome.mutter overlay-key '[<Super>]'
gsettings set org.gnome.mutter dynamic-workspaces false
gsettings set org.gnome.desktop.wm.preferences num-workspaces 6

for WSN in ${WSNUM[@]}
do
  gsettings set org.gnome.shell.keybindings switch-to-application-$WSN "[]"
  gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-$WSN "['<Super>$WSN']"
  gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-$WSN "['<Super><Shift>$WSN']"
done

