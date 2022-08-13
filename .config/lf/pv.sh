#!/bin/sh

W="$(($(tput cols)/2 - 10))"
#H="$(tput lines)"

fn="$1"
w="$2"
h="$3"
x="$4"
y="$5"

case "$fn" in
        *.tar*) tar tf "$1";;
        *.zip) unzip -l "$1";;
        *.rar) unrar l "$1";;
        *.7z) 7z l "$1";;
        *.jpg | *.JPG | *.jpeg) chafa "$fn" --size="$w"x"$h" ;;#viu -t "$1" -w "$2" ;;
        *.png | *.svg | *.gif) chafa "$fn" --size="$w"x"$h" ;;
        *.mp4 | *.mkv | *.webm | *.avi | *.mpg | *.mpeg | *.ogv | *.flv | *.wmv | *.WMV) ffmpegthumbnailer -i "$fn" -c jpeg -o - | chafa - --size="$w"x"$h";; 
        *.pdf) pdftotext "$1" -;;
        *) bat -f "$1";; #*) highlight -O ansi "$1" || cat "$1";;
esac
