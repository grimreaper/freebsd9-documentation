# $FreeBSD: www/ja/releases/4.6.2R/Makefile,v 1.1 2002/08/17 20:31:10 hrs Exp $
# Original revision: 1.2

.if exists(../Makefile.conf)
.include "../Makefile.conf"
.endif
.if exists(../Makefile.inc)
.include "../Makefile.inc"
.endif

#DOCS=	hardware.sgml relnotes.sgml
DOCS=	relnotes.sgml
DOCS+=	announce.sgml
# contents.sgml

DATA=	docbook.css
#DATA+=	errata.html
#DATA+=	hardware-alpha.html hardware-i386.html
DATA+=	relnotes-alpha.html relnotes-i386.html
#DATA+=	cd1.txt cd2.txt cd3.txt cd4.txt mini.txt

### Revision checking
REVCHECK=       YES

.include "${WEB_PREFIX}/share/mk/web.site.mk"
