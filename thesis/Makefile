all: pdf

pdf:
	pdflatex my_thesis
	bibtex my_thesis
	pdflatex my_thesis
	pdflatex my_thesis
	pdflatex my_thesis

view: pdf
	evince my_thesis.pdf

clean:
	rm -f *.aux *.log *.bbl *.blg *.toc *.lof *.lot *.out
	rm -f head/*.aux head/*.log
	rm -f main/*.aux main/*.log
	rm -f tail/*.aux tail/*.log
