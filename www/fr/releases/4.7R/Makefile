# $FreeBSD: www/fr/releases/4.7R/Makefile,v 1.1 2003/12/15 16:05:01 stephane Exp $

# The FreeBSD French Documentation Project
# Original revision: 1.7

.if exists(../Makefile.conf)
.include "../Makefile.conf"
.endif
.if exists(../Makefile.inc)
.include "../Makefile.inc"
.endif

# DOCS=	hardware.sgml relnotes.sgml schedule.sgml qa.sgml announce.sgml
DOCS= announce.sgml

DATA=	docbook.css
DATA+=	errata.html
DATA+=	hardware-alpha.html hardware-i386.html
# DATA+=	relnotes-alpha.html relnotes-i386.html
# DATA+=  CHECKSUM-i386.MD5

.include "${WEB_PREFIX}/share/mk/web.site.mk"
