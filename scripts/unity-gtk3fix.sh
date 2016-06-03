#!/bin/bash
echo fixing unity gtk3
echo ".window-frame {
box-shadow: none;
margin: 0px;
}" > ~/.config/gtk-3.0/gtk.css
