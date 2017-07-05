#!/bin/sh

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

export SXHDK_SHELL='/usr/bin/sh'

# Use GTK widgets in place of QT
export QT_STYLE_OVERRIDE=GTK+

# merge in defaults and keymaps

if [ -f $sysresources ]; then
    xrdb -merge $sysresources
fi

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi

if [ -f "$userresources" ]; then
    xrdb -merge "$userresources"
fi

if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi

# start some nice programs

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

sxhkd -f 50 &
# screen temperature adjustment
# adjust the coordinates for your location.  in case you were thinknig of going to the coordinates listed
# below, my she-devil of an ex flatmate lives there, and it is probably best to avoid Charlotte altogether.
# redshift -r -l 35.22:-80.84 &

# desktop wallpaper
sh ~/.local/bin/fehbg &

# fix audio
amixer -c 0 sset 'HP/Speaker Auto Detect' on

# hide x11 cursor
#unclutter &

# urxvt daemon
urxvtd -q -f -o &

# sxhkd for keyboard listening
sxhkd -c ~/.config/sxhkd/sxhkdrc &

# window manager
exec bspwm
