# $FreeBSD: www/en/releases/5.4R/Makefile,v 1.6 2005/05/24 03:29:38 scottl Exp $

.if exists(../Makefile.conf)
.include "../Makefile.conf"
.endif
.if exists(../Makefile.inc)
.include "../Makefile.inc"
.endif

DOCS=	todo.sgml schedule.sgml errata_policy.sgml
DOCS+=	announce.sgml
DOCS+=	hardware.sgml
DOCS+=	installation.sgml
DOCS+=	relnotes.sgml

DATA=	docbook.css

DATA+=	errata.html
DATA+=	migration-guide.html
DATA+=	hardware-alpha.html
DATA+=	hardware-amd64.html
DATA+=	hardware-ia64.html
DATA+=	hardware-i386.html
DATA+=	hardware-pc98.html
DATA+=	hardware-sparc64.html
DATA+=	installation-alpha.html
DATA+=	installation-amd64.html
DATA+=	installation-ia64.html
DATA+=	installation-i386.html
DATA+=	installation-pc98.html
DATA+=	installation-sparc64.html
DATA+=	readme.html
DATA+=	relnotes-alpha.html
DATA+=	relnotes-amd64.html
DATA+=	relnotes-ia64.html
DATA+=	relnotes-i386.html
DATA+=	relnotes-pc98.html
DATA+=	relnotes-sparc64.html

.include "${WEB_PREFIX}/share/mk/web.site.mk"
