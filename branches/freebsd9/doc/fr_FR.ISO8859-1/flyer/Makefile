# $FreeBSD: doc/fr_FR.ISO8859-1/flyer/Makefile,v 1.2 2007/12/15 08:45:49 blackend Exp $
# Original revision: 1.2
#

pdf: dvi ps
	ps2pdf13 -sPAPERSIZE=a4 flyer.ps

ps: dvi
	dvips -t a4 flyer.dvi -o

dvi: flyer.tex
	pngtopnm -mix ../../share/images/flyer/logo-full.png | \
		pnmtops -noturn > logo-full.eps
	latex flyer.tex

clean:
	rm -f flyer.aux flyer.dvi flyer.log flyer.pdf flyer.ps \
		logo-full.eps
