# $FreeBSD: www/ja/releases/4.8R/Makefile,v 1.3 2003/04/06 04:54:26 rushani Exp $
# Original revision: 1.4

.if exists(../Makefile.conf)
.include "../Makefile.conf"
.endif
.if exists(../Makefile.inc)
.include "../Makefile.inc"
.endif

DOCS=	announce.sgml
DOCS+=	hardware.sgml relnotes.sgml
#DOCS=	hardware.sgml relnotes.sgml schedule.sgml qa.sgml

DATA=	docbook.css
DATA+=	errata.html
#DATA+=	hardware-alpha.html hardware-i386.html
DATA+=	relnotes-alpha.html relnotes-i386.html

### Revision checking
REVCHECK=       YES

.include "${WEB_PREFIX}/share/mk/web.site.mk"
