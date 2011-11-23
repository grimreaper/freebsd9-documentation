# $FreeBSD: doc/el_GR.ISO8859-7/share/tools/checkupdate/Makefile,v 1.1 2008/06/15 15:45:36 keramida Exp $

SCRIPTS= checkupdate
MAN= checkupdate.1

CLEANFILES= ${SCRIPTS}

BINDIR?= ${HOME}/bin

.SUFFIXES:	.py

.py:
	cat ${.ALLSRC} > ${.TARGET}

.include <bsd.prog.mk>
