#!/bin/sh

img () {
    #chafa  "$1" --size="$2"x"$3" --animate=false | sed 's/#/\n#/g'
    chafa --format=symbols  "$1" --size="$2"x"$3"
}

W="$(($(tput cols)/2 - 10))"
#H="$(tput lines)"

fn="$1"
w="$(($2 - 5))"
h="$3"
x="$4"
y="$5"

case "$fn" in
        *.tar*) tar tf "$1";;
        *.zip) unzip -l "$1";;
        *.rar) unrar l "$1";;
        *.7z) 7z l "$1";;
        *.jpg | *.JPG | *.jpeg) img "$fn" "$w" "$h";;
        *.webp) img "$fn" "$w" "$h";;
        *.png | *.svg | *.gif) img "$fn" "$w" "$h";; #viu -t "$1" -w "$W" ;; #chafa "$fn" --size="$w"x"$h" ;;
        *.mp4 | *.mkv | *.webm | *.avi | *.mpg | *.mpeg | *.ogv | *.flv | *.wmv | *.WMV) ffmpegthumbnailer -s 0 -i "$fn" -c jpeg -o - | img - "$w" "$h";; 
        *.pdf) pdftotext "$1" -;;
        *) bat -f "$1";; #*) highlight -O ansi "$1" || cat "$1";;
esac

exit 0
