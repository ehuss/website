all: sync

sync: sharestruct
	remote send zamok www/ www

share: sharestruct sharefiles

SHARE = $(shell find www/share -type d)
sharestruct: $(SHARE:%=%/index.html)

FILES = $(shell find www/share -type f -not -name '*.html')
sharefiles: $(FILES:%=%.html)

%/index.html: % $(wildcard %/*) Makefile mkstruct
	./mkstruct $<

%.html: % Makefile mkbat
	./mkbat $<

clean:
	find www/share -name '*.html' -exec rm {} +

.PHONY: sync share sharestruct sharefiles