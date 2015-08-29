MAIN:=main
SRCS:=$(wildcard *.tex)

$(MAIN).pdf: $(SRCS)
	latex $(MAIN)
	-bibtex $(MAIN)
	latex $(MAIN)
	latex $(MAIN)
	dvips -Pdownload35 -t letter -o $(MAIN).ps $(MAIN).dvi
	ps2pdf $(MAIN).ps

clean:
	rm -f *.log *.aux *.pdf *.bbl *.blg *.bak *.dvi *.out
	rm -rf tmp/
