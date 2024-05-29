#!/bin/sh

case "$(file -Lb --mime-type -- "$1")" in
        application/gzip) tar tf "$1";;
        application/zip) unzip -l "$1";;
        application/x-rar) unrar-free -t "$1";;
        application/x-7z-compressed) 7z l "$1";;
        image/*) 
            chafa -f sixel -s "$2"x"$3" --animate off --polite on "$1"
            exit 1
            ;;
        video/*) ffmpegthumbnailer -s 0 -i "$1" -c jpeg -o - | chafa -f sixel -s "$2"x"$3" --animate off --polite on -;; 
        application/pdf) pdftotext "$1" -;;
        *) bat -f "$1";; #*) highlight -O ansi "$1" || cat "$1";;
esac

exit 0
