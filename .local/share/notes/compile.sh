#!/bin/sh

help() {
    echo "usage ./compile.sh [input files] [output format] [output filename]"
    echo "[input files]        -> the input files to compile, can be glob matched"
    echo "                         - examples: ./docs/06-vivado-verilog-notes.md"
    echo "                                     ./docs/*"
    echo "                         - default: ./docs/*"
    echo "[output format]      -> output file format to compile, see pandoc " 
    echo "                            documentation for valid formats." 
    echo "                         - examples: pdf, docx, odt"
    echo "                         - default: pdf"
    echo "[output filename]   -> the name of the output file, excluding extension"
    echo "                             can be any text"
    echo "                         - examples: vivado-notes, notes"
    echo "                         - default: notes"
    echo ""
}

[ "$1" = "-h" ] && help && exit
[ "$1" = "--help" ] && help && exit

OUT_FMT="pdf"
IN_FILES="./docs/*"
OUT_FNAME="notes"
[ "$1" ] && IN_FILES="$1"
[ "$2" ] && OUT_FMT="$2"
[ "$3" ] && OUT_FNAME="$3"

! [ -d ./output/ ] && mkdir ./output/

echo "input files     = $IN_FILES"
echo "output format   = $OUT_FMT"
echo "output filename = $OUT_FNAME" 

pandoc --metadata-file=./config/metadata.yaml --template ./config/eisvogel.latex -f markdown -t "$OUT_FMT" $IN_FILES -o ./output/"$OUT_FNAME"."$OUT_FMT" --toc --variable=fontsize:8pt
