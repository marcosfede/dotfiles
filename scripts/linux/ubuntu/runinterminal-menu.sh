#!/bin/bash
echo "adding open in terminal"
echo "[Desktop Entry]
Name=Open script in terminal
Exec=gnome-terminal -e "%U"
Terminal=false
Type=Application
MimeType=text/plain;" > /usr/share/applications/openscript.desktop
