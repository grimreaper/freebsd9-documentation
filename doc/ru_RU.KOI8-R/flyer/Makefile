#
# The FreeBSD Russian Documentation Project
#
# $FreeBSD: doc/ru_RU.KOI8-R/flyer/Makefile,v 1.1 2005/05/17 14:36:33 den Exp $
# $FreeBSDru: frdp/doc/ru_RU.KOI8-R/flyer/Makefile,v 1.1 2005/05/13 09:33:41 den Exp $
#
# Original revision: 1.1
#

pdf: dvi ps
	ps2pdf13 -sPAPERSIZE=a4 flyer.ps

ps: dvi
	dvips -t a4 flyer.dvi -o

dvi: flyer.tex
	latex flyer.tex

clean:
	rm -f flyer.aux flyer.dvi flyer.log flyer.pdf flyer.ps
