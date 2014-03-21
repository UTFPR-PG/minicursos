run: slides pdf

slides: slides_linux_2014-1.tex
	latex slides_linux_2014-1.tex && dvips slides_linux_2014-1.dvi && ps2pdf slides_linux_2014-1.ps && evince slides_linux_2014-1.pdf

pdf: handout_linux_2014-1.tex
	pdflatex handout_linux_2014-1.tex && bibtex handout_linux_2014-1.aux && pdflatex handout_linux_2014-1.tex && pdflatex handout_linux_2014-1.tex

convert:
	./conv.sh

clean:
	find -iregex '.*\.\(log\|aux\|dvi\|lof\|lot\|bit\|idx\|glo\|bbl\|ilg\|toc\|ind\|out\|blg\|synctex.gz\|log\|bm\|brf\|bak\|bst\)' -delete

