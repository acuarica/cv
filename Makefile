
.PHONY: gitinfo.tex

pdf: CV-LuisMastrangelo.pdf

%.pdf: %.tex gitinfo.tex
	pdflatex $<

gitinfo.tex:
	echo '\\newcommand{\\gitcommit}{$(shell git rev-parse --short HEAD)}' > $@