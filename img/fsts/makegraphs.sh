#!/usr/bin/env bash

hfst-lexc almalardan.lexc > almalardan.hfst
hfst-fst2txt almalardan.hfst -f dot | sed 's/yellow/darkgrey,color=white/g' | sed 's/00/∅/g' | sed -r 's/label="([^q])/fontcolor="white",color="white",fontsize=36,label="\1/g' | sed 's/label="q/fontcolor="white",color="white",fontsize=26,label="/g' > almalardan.dot
dot -Nfontname="DejaVu Sans Mono" -Efontname="DejaVu Sans Mono" almalardan.dot -Tpdf -o almalardan.pdf
inkscape -z -f almalardan.pdf -l almalardan.svg
