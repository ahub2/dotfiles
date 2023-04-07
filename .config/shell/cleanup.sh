#!/bin/sh

#remove things from $HOME
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CONFIG_DIRS="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DOCUMENTS_DIR="$HOME/docs"
export XDG_DOWNLOAD_DIR="$HOME/dl"
export XDG_MUSIC_DIR="$HOME/media/audio/music"
export XDG_PICTURES_DIR="$HOME/media/img"
export XDG_VIDEOS_DIR="$HOME/media/video"
export HISTFILE="$XDG_DATA_HOME"/bash/history
#XDG_DESKTOP_DIR="$HOME/Desktop"
#XDG_PUBLICSHARE_DIR="$HOME/Public"
#XDG_TEMPLATES_DIR="$HOME/Templates"

export NOTMUCH_CONFIG="${XDG_CONFIG_HOME:-$HOME/.config}/notmuch-config"
export GTK2_RC_FILES="${XDG_CONFIG_HOME:-$HOME/.config}/gtk-2.0/gtkrc-2.0"
export WGETRC="${XDG_CONFIG_HOME:-$HOME/.config}/wget/wgetrc"
export INPUTRC="${XDG_CONFIG_HOME:-$HOME/.config}/inputrc"
#export ALSA_CONFIG_PATH="$XDG_CONFIG_HOME/alsa/asoundrc"
export WINEPREFIX="$XDG_DATA_HOME/wineprefixes/default"
export STACK_ROOT="$XDG_DATA_HOME"/stack
export PASSWORD_STORE_DIR="${XDG_DATA_HOME:-$HOME/.local/share}/password-store"
export GNUPGHOME="$XDG_DATA_HOME/gnupg"
export CARGO_HOME="${XDG_DATA_HOME:-$HOME/.local/share}/cargo"
export GOPATH="${XDG_DATA_HOME:-$HOME/.local/share}/go"
export ANSIBLE_CONFIG="${XDG_CONFIG_HOME:-$HOME/.config}/ansible/ansible.cfg"
export TMUX_TMPDIR="$XDG_RUNTIME_DIR"
export ANDROID_SDK_HOME="${XDG_CONFIG_HOME:-$HOME/.config}/android"
export MBSYNCRC="${XDG_CONFIG_HOME:-$HOME/.config}/mbsync/config"
export ELECTRUMDIR="${XDG_DATA_HOME:-$HOME/.local/share}/electrum"
