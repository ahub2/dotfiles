#!/bin/sh

BEMENU_CONF="$HOME/.config/bemenu/bemenu_opts.sh"
[ -f "$BEMENU_CONF" ] && . "$BEMENU_CONF" 
#End wayland config

#make librewolf use wayland
export GDK_BACKEND=wayland 
export MOZ_ENABLE_WAYLAND=1

