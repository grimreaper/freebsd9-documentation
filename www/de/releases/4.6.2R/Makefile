# The FreeBSD German Documentation Project
# The FreeBSD Documentation Project
# $FreeBSD: www/de/releases/4.6.2R/Makefile,v 1.2 2004/05/17 22:41:54 mheinen Exp $
# $FreeBSDde: de-www/releases/4.6.2R/Makefile,v 1.3 2004/05/16 22:09:33 mheinen Exp $
# basiert auf: 1.4

.if exists(../Makefile.conf)
.include "../Makefile.conf"
.endif
.if exists(../Makefile.inc)
.include "../Makefile.inc"
.endif

DOCS=	announce.sgml
DOCS+=	hardware.sgml
DOCS+=	relnotes.sgml

DATA=	docbook.css
DATA+=	errata.html
DATA+=	hardware-alpha.html
DATA+=	hardware-i386.html
DATA+=	readme.html
DATA+=	relnotes-alpha.html
DATA+=	relnotes-i386.html

.include "${WEB_PREFIX}/share/mk/web.site.mk"
