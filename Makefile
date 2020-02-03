all: reveal.js

reveal.js:
	curl -LO https://github.com/hakimel/reveal.js/archive/3.9.2.tar.gz
	tar xzf 3.9.2.tar.gz
	ln -s reveal.js-3.9.2 $@
	rm 3.9.2.tar.gz

clean:
	rm -rf reveal.js reveal.js-3.9.2 3.9.2.tar.gz
