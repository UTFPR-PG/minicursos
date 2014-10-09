run: slides_latex_2013-2.tex
	latex slides_latex_2013-2.tex && dvips slides_latex_2013-2.dvi && ps2pdf slides_latex_2013-2.ps && evince slides_latex_2013-2.pdf

convert:
	cd ../; ./conv.sh

clean:
	find -iregex '.*\.\(log\|aux\|dvi\|lof\|lot\|bit\|idx\|glo\|bbl\|ilg\|toc\|ind\|out\|blg\|synctex.gz\|log\|bm\|brf\|bak\|bst\)' -delete

