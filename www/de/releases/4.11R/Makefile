# The FreeBSD German Documentation Project
# The FreeBSD Documentation Project
# $FreeBSD: www/de/releases/4.11R/Makefile,v 1.1 2005/01/26 02:16:29 mheinen Exp $
# $FreeBSDde: de-www/releases/4.11R/Makefile,v 1.1 2005/01/26 01:19:12 mheinen Exp $
# basiert auf: 1.3

.if exists(../Makefile.conf)
.include "../Makefile.conf"
.endif
.if exists(../Makefile.inc)
.include "../Makefile.inc"
.endif

DOCS=	announce.sgml
DOCS+=	hardware.sgml
DOCS+=	installation.sgml
DOCS+=	relnotes.sgml

DATA=	docbook.css
DATA+=	errata.html
DATA+=	hardware-alpha.html
DATA+=	hardware-i386.html
DATA+=	installation-alpha.html
DATA+=	installation-i386.html
DATA+=	readme.html
DATA+=	relnotes-alpha.html
DATA+=	relnotes-i386.html

.include "${WEB_PREFIX}/share/mk/web.site.mk"
