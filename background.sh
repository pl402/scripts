#!/bin/bash

NOW="$(date +'%m-%d-%Y.%H.%M.%S')"
PIC="$NOW.jpg"
USER= "USER"
wget -O "$HOME/.local/share/backgrounds/$PIC"  https://source.unsplash.com/user/$USER/likes/1920x1080

NEWNAME=$(stat -c%s "$HOME/.local/share/backgrounds/$PIC")

cd $HOME/.local/share/backgrounds/
mv "$PIC" "$NEWNAME.jpg"

gsettings set org.gnome.desktop.background picture-uri "file://$HOME/.local/share/backgrounds/$NEWNAME.jpg"
