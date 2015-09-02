TARGETS      := main.pdf
PDFLATEX     := $$pdflatex='pdflatex -interaction=nonstopmode -synctex=1 %S %O'
LATEXMK      := latexmk -cd -e $(PDFLATEX) -f -pdf 

.PHONY : all clean
all : $(TARGETS) 

%.pdf : %.tex  $(wildcard *.tex)
	$(LATEXMK) $<

clean : 
	latexmk -c
	rm -f $(wildcard *.pdf)
