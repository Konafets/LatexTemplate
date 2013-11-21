LATEXMK=latexmk

MAINDOCUMENT = Thesis
SOURCES=$(MAINDOCUMENT).tex Makefile


all: latexmake

latexmake:
	$(LATEXMK)

clean:
	$(LATEXMK) -c $(MAINDOCUMENT).tex

lua:
	lualatex $(MAINDOCUMENT).tex

glossaries:
	makeglossaries $(MAINDOCUMENT)

.PHONY: clean latexmake lua glossaries