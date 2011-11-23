# $FreeBSD: doc/es_ES.ISO8859-1/flyer/Makefile,v 1.1 2004/02/28 21:40:31 jesusr Exp $
#

pdf: dvi ps
	ps2pdf13 -sPAPERSIZE=a4 flyer.ps

ps: dvi
	dvips -t a4 flyer.dvi -o

dvi: flyer.tex
	latex flyer.tex

clean:
	rm -f flyer.aux flyer.dvi flyer.log flyer.pdf flyer.ps
