# $FreeBSD: www/en/releases/7.2R/Makefile,v 1.5 2009/04/29 18:01:34 hrs Exp $

.if exists(../Makefile.conf)
.include "../Makefile.conf"
.endif
.if exists(../Makefile.inc)
.include "../Makefile.inc"
.endif

DOCS=	announce.sgml relnotes.sgml schedule.sgml

DATA=	docbook.css
DATA+=	errata.html
DATA+=	hardware.html
DATA+=	readme.html
DATA+=	relnotes-detailed.html

.include "${WEB_PREFIX}/share/mk/web.site.mk"
