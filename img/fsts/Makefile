all: almalardan.svg

%.svg: %.pdf
	inkscape -z -f $< -l $@

%.pdf: %.dot
	dot -Nfontname="DejaVu Sans Mono" -Efontname="DejaVu Sans Mono" $< -Tpdf -o $@

%.dot: %.hfst
	hfst-fst2txt $< -f dot | sed 's/yellow/darkgrey,color=white/g' | sed 's/00/∅/g' | sed -r 's/label="([^q])/fontcolor="white",penwidth=3,color="white",fontsize=36,label="\1/g' | sed 's/label="q/fontcolor="white",penwidth=3,color="white",fontsize=26,label="/g' > $@

%.hfst: %.lexc
	hfst-lexc $< > $@

clean:
	rm *.svg *.pdf *.dot *.hfst
