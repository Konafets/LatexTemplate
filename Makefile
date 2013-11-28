LATEXMK=latexmk

MAINDOCUMENT = Thesis
SOURCES=$(MAINDOCUMENT).tex Makefile


all: latexmake

verbose:
	$(LATEXMK) --verbose

latexmake:
	$(LATEXMK)

clean:
	$(LATEXMK) -c $(MAINDOCUMENT).tex

lua:
	lualatex  -shell-escape $(MAINDOCUMENT).tex

glossaries:
	makeglossaries $(MAINDOCUMENT)

.PHONY: clean latexmake lua glossaries