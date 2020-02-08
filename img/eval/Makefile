all: results-kir_ARA results-crh_CYR

results-%: %.csv
	cut -d, -f3 $< | sort | uniq -c
