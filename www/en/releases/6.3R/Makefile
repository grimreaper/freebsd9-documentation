# $FreeBSD: www/en/releases/6.3R/Makefile,v 1.6 2008/01/18 20:11:12 bmah Exp $

.if exists(../Makefile.conf)
.include "../Makefile.conf"
.endif
.if exists(../Makefile.inc)
.include "../Makefile.inc"
.endif

DOCS=	announce.sgml
DOCS+=	relnotes.sgml
DOCS+=	hardware.sgml
DOCS+=	installation.sgml
DOCS+=	schedule.sgml

#FETCHFILE= http://people.freebsd.org/~pho/stress/log/news.rss
#FETCHCMD=  /usr/bin/fetch
#CLEANFILES+= news.rss stress.html

DATA+=	errata.html
DATA+=	hardware-alpha.html
DATA+=	hardware-amd64.html
DATA+=	hardware-i386.html
DATA+=	hardware-pc98.html
DATA+=	hardware-powerpc.html
DATA+=	hardware-sparc64.html
DATA+=	installation-alpha.html
DATA+=	installation-amd64.html
DATA+=	installation-i386.html
DATA+=	installation-pc98.html
DATA+=	installation-powerpc.html
DATA+=	installation-sparc64.html
DATA+=	readme.html
DATA+=	relnotes-alpha.html
DATA+=	relnotes-amd64.html
DATA+=	relnotes-i386.html
DATA+=	relnotes-pc98.html
DATA+=	relnotes-powerpc.html
DATA+=	relnotes-sparc64.html

DATA+=	docbook.css

#news.rss:
#	${FETCHCMD} ${FETCHFILE}

#stress.html: news.rss stress.xsl
#	${XSLTPROC} stress.xsl news.rss > stress.html

#todo.html: stress.html

.include "${WEB_PREFIX}/share/mk/web.site.mk"
