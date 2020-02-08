all: results-kir_ARA

results-kir_ARA: kir_ARA.csv
	cut -d, -f3 $< | sort | uniq -c
