# $FreeBSD: www/en/releases/6.1R/Makefile,v 1.5 2006/05/09 02:52:06 murray Exp $

.if exists(../Makefile.conf)
.include "../Makefile.conf"
.endif
.if exists(../Makefile.inc)
.include "../Makefile.inc"
.endif

DOCS=	todo.sgml schedule.sgml approvals.sgml
DOCS+=	announce.sgml
DOCS+=	relnotes.sgml
DOCS+=	hardware.sgml
DOCS+=	installation.sgml

DATA+= errata.html
DATA+= hardware-alpha.html
DATA+= hardware-amd64.html
DATA+= hardware-ia64.html
DATA+= hardware-i386.html
DATA+= hardware-pc98.html
DATA+= hardware-sparc64.html
DATA+= installation-alpha.html
DATA+= installation-amd64.html
DATA+= installation-ia64.html
DATA+= installation-i386.html
DATA+= installation-pc98.html
DATA+= installation-sparc64.html
DATA+= readme.html
DATA+= relnotes-alpha.html
DATA+= relnotes-amd64.html
DATA+= relnotes-ia64.html
DATA+= relnotes-i386.html
DATA+= relnotes-pc98.html
DATA+= relnotes-sparc64.html

FETCHFILE= http://people.freebsd.org/~pho/stress/log/news.rdf
FETCHCMD=  /usr/bin/fetch
CLEANFILES+= news.rdf stress.html

DATA+=	docbook.css

news.rdf:
	${FETCHCMD} ${FETCHFILE}

stress.html: news.rdf stress.xsl
	${XSLTPROC} stress.xsl news.rdf > stress.html

todo.html: stress.html

.include "${WEB_PREFIX}/share/mk/web.site.mk"
