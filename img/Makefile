all: all_lgs.svg

%.pdf: %.r
	Rscript $<

%.svg: %.pdf
	inkscape -z -f $< -l $@
