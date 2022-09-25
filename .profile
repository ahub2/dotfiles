#!/usr/bin/env sh

# Get the aliases and functions
#[ -f $HOME/.bashrc ] && . $HOME/.bashrc

#source ~/.config/shell config files
. "$HOME"/.config/shell/cleanup.sh
. "$HOME"/.config/shell/wayland.sh

#export PF_ASCII="artix"  #set ascii art for pfetch
# OFF by default: shell editor wm de palette
export PF_INFO="ascii title os kernel uptime pkgs memory shell wm"

export XCURSOR_THEME=Adwaita

#fix image previews in lf not working
#export TERM="xterm-256color"


#other settings
export QT_QPA_PLATFORMTHEME="gtk2"  # Have QT use gtk2 theme. must have qt5-styleplugins installed
#export QT_QPA_PLATFORMTHEME="qt5ct"  #have QT use qt5ct theme  
export QT_QPA_PLATFORM=wayland

export GTK_THEME=Adwaita:dark

export LESSHISTFILE="-"

export ZDOTDIR="$HOME/.config/zsh"

#get colored man pages
#export LESS_TERMCAP_mb=$'\e[1;32m'
#export LESS_TERMCAP_md=$'\e[1;32m'
#export LESS_TERMCAP_me=$'\e[0m'
#export LESS_TERMCAP_se=$'\e[0m'
#export LESS_TERMCAP_so=$'\e[01;33m'
#export LESS_TERMCAP_ue=$'\e[0m'
#export LESS_TERMCAP_us=$'\e[1;4;31m'

export LESS_TERMCAP_mb="$(printf '%b' '[1;31m')"
export LESS_TERMCAP_md="$(printf '%b' '[1;36m')"
export LESS_TERMCAP_me="$(printf '%b' '[0m')"
export LESS_TERMCAP_so="$(printf '%b' '[01;44;33m')"
export LESS_TERMCAP_se="$(printf '%b' '[0m')"
export LESS_TERMCAP_us="$(printf '%b' '[1;32m')"
export LESS_TERMCAP_ue="$(printf '%b' '[0m')"

export MANPAGER=less

#set preferred programs
export EDITOR=nvim
export VISUAL=nvim
export BROWSER=browser.sh
export TERMINAL=foot

#sfeed vars
export SFEED_PLUMBER="$BROWSER"
export SFEED_URL_FILE="$HOME/.local/share/sfeed/read"

#lf icons
. "$HOME"/.config/lf/lf-icons.sh

# Add ~/.local/bin/ ~/.local/scripts/ and to PATH
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.local/scripts:$PATH"
export PATH="$HOME/.local/appimages:$PATH"
export MANPATH="$MANPATH:/usr/local/man/"
export PATH="$HOME/.local/podman/bin:$PATH"


#add to path if installing rocm for amd
export PATH="/opt/rocm/bin:$PATH"
export PATH="/opt/rocm/hip/bin:$PATH"
export PATH="/opt/rocm/opencl/bin:$PATH"
export PATH="/opt/rocm/rocfft/bin:$PATH"
export PATH="/opt/rocm/rocfft/bin:$PATH"


#fix arduino ide issues
export AWT_TOOLKIT=MToolkit


#mount samba share, needs entry in /etc/fstab for this line to work
# //192.168.1.218/storage /media/nagato cifs username=alex,pass=PASSWORD,workgroup=WORKGROUP,user,noauto 0 0
#mount /media/nagato/ &
#mount /media/bismarck &

if [ "$(tty)" = /dev/tty1 ]; then
    exec dbus-launch sway
fi
