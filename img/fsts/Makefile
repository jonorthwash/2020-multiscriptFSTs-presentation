all: almalardan.svg cyr-lat.svg алмалардан.svg almaалма.svg ya.svg

%.svg: %.pdf
	inkscape -z -f $< -l $@

%.pdf: %.dot
	dot -Nfontname="DejaVu Sans Mono" -Efontname="DejaVu Sans Mono" $< -Tpdf -o $@

%.dot: %.hfst
	hfst-fst2txt $< -f dot | sed 's/yellow/"#777777",color=white/g' | sed 's/00/∅/g' | sed -r 's/label="([^q])/fontcolor="#60f060",penwidth=3,color="white",fontsize=60,label="\1/g' | sed 's/label="q/fontcolor="white",penwidth=3,color="white",fontsize=26,label="/g' > $@

%.hfst: %.lexc
	hfst-lexc $< > $@

алмалардан.hfst: almalardan.hfst cyr-lat.hfst
	hfst-compose-intersect -1 $< -2 cyr-lat.hfst -o $@

almaалма.hfst: almalardan.hfst алмалардан.hfst
	hfst-union $< алмалардан.hfst | hfst-minimise > $@

ya.twol.hfst: ya.twol
	hfst-twolc $< -o $@

ya.lexc.hfst: ya.lexc
	hfst-lexc $< -o $@

ya.hfst: ya.lexc.hfst ya.twol.hfst
	hfst-compose-intersect -1 $< -2 ya.twol.hfst | hfst-minimise - -o $@

clean:
	rm *.svg *.hfst # *.pdf *.dot
