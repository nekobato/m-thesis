all:
	platex    -kanji=utf8 main
	echo "######################################################### platex 1 end"
	pbibtex   -kanji=utf8 main
	echo "######################################################### pbitex end"
	platex    -kanji=utf8 main
	echo "######################################################### platex 2 end"
	platex    -kanji=utf8 main
	echo "######################################################### platex 3 end"
	dvipdfmx  -p a4 main
	/bin/rm -f *~ *.log *.dvi *.blg *.aux *.out *.bbl *.lot *.toc *.lof
clean:
	/bin/rm -f *~ *.log *.dvi *.blg *.aux *.out *.bbl *.lot *.toc *.lof *.pdf
