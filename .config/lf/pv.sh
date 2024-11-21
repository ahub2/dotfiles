#!/bin/sh
#
fn="$1"
W="$3"
H="$2"


#echo "W=$W H=$H" > ~/pv.log

case "$(file -Lb --mime-type -- "$fn")" in
        application/gzip) compress.sh -l "$fn";;
        application/zip) compress.sh -l "$fn";;
        application/x-rar) compress.sh -l "$fn";;
        application/x-7z-compressed) compress.sh -l "$fn";;
        image/*) 
            chafa -f sixel -s "$W"x"$H" --animate off --polite on "$fn"
            exit 1
            ;;
        video/*) ffmpegthumbnailer -s 0 -i "$fn" -c jpeg -o - | chafa -f sixel -s "$W"x"$H" --animate off --polite on -;; 
        application/pdf) pdftotext "$fn" -;;
        *) bat -f "$fn";; #*) highlight -O ansi "$1" || cat "$1";;
esac

exit 0
