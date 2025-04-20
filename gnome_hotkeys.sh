#!/bin/bash

echo "Changes a few Gnome hotkeys"
echo "- Super+Up to maximize"
echo "- Alt+1 -> 9 to open dash applications in order"
echo

read -p "Do you want that? y/n " CONFIRM
if [[ $CONFIRM =~ ^[yY]$ ]]; then
  gsettings set org.gnome.desktop.wm.keybindings close "['<Super>w']"
  gsettings set org.gnome.shell.keybindings open-new-window-application-1 "['<Alt>1']"
  gsettings set org.gnome.shell.keybindings open-new-window-application-2 "['<Alt>2']"
  gsettings set org.gnome.shell.keybindings open-new-window-application-3 "['<Alt>3']"
  gsettings set org.gnome.shell.keybindings open-new-window-application-4 "['<Alt>4']"
  gsettings set org.gnome.shell.keybindings open-new-window-application-5 "['<Alt>5']"
  gsettings set org.gnome.shell.keybindings open-new-window-application-6 "['<Alt>6']"
  gsettings set org.gnome.shell.keybindings open-new-window-application-7 "['<Alt>7']"
  gsettings set org.gnome.shell.keybindings open-new-window-application-8 "['<Alt>8']"
  gsettings set org.gnome.shell.keybindings open-new-window-application-9 "['<Alt>9']"

  # Default for these is just Super+number but I want that
  # to switch workspaces.
  gsettings set org.gnome.shell.keybindings switch-to-application-1 "['<Super><Alt>1']"
  gsettings set org.gnome.shell.keybindings switch-to-application-2 "['<Super><Alt>2']"
  gsettings set org.gnome.shell.keybindings switch-to-application-3 "['<Super><Alt>3']"
  gsettings set org.gnome.shell.keybindings switch-to-application-4 "['<Super><Alt>4']"
  gsettings set org.gnome.shell.keybindings switch-to-application-5 "['<Super><Alt>5']"
  gsettings set org.gnome.shell.keybindings switch-to-application-6 "['<Super><Alt>6']"
  gsettings set org.gnome.shell.keybindings switch-to-application-7 "['<Super><Alt>7']"
  gsettings set org.gnome.shell.keybindings switch-to-application-8 "['<Super><Alt>8']"
  gsettings set org.gnome.shell.keybindings switch-to-application-9 "['<Super><Alt>9']"

  gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-1 "['<Super>1']"
  gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-2 "['<Super>2']"
  gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-3 "['<Super>3']"
  gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-4 "['<Super>4']"
  gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-5 "['<Super>5']"
  gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-6 "['<Super>6']"
  echo "Done."
else
  echo "Cancelled"
fi
