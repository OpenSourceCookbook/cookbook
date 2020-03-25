DOCNAME = document

export TEXINPUTS := ./texmf/:$(TEXINPUTS)

.PHONY: $(DOCNAME).pdf all clean

all: $(DOCNAME).pdf

$(DOCNAME).pdf: $(DOCNAME).tex
	latexmk -pdf $(DOCNAME)

continuous:
	latexmk -pdf -pvc -interaction=nonstopmode $(DOCNAME)

clean:
	latexmk -CA

install:
	# mkdir -pv ${out}/nix-support/
	cp $(DOCNAME).pdf ${out}
