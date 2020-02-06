DOCNAME = document

export TEXINPUTS := ./texmf/:$(TEXINPUTS)

.PHONY: $(DOCNAME).pdf all clean

all: $(DOCNAME).pdf

$(DOCNAME).pdf: $(DOCNAME).tex
	lualatex $(DOCNAME)
	makeglossaries $(DOCNAME)
	makeindex $(DOCNAME)
	lualatex $(DOCNAME)
	lualatex $(DOCNAME)

clean:
	latexmk -CA
	$(RM) *.tech-* *.term-* *.eqpt-*

install:
	mkdir -pv ${out}/nix-support/
	cp $(DOCNAME).pdf ${out}/
