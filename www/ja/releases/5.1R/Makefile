# $FreeBSD: www/ja/releases/5.1R/Makefile,v 1.5 2011/03/12 02:45:32 ryusuke Exp $
# Original revision: 1.5

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
#DOCS+=	schedule.sgml
#DOCS+=	todo.sgml

DATA=	docbook.css
DATA+=	errata.html
DATA+=	early-adopter.html
DATA+=	hardware-alpha.html
DATA+=	hardware-ia64.html
DATA+=	hardware-i386.html
DATA+=	hardware-pc98.html
DATA+=	hardware-sparc64.html
#DATA+=	installation-alpha.html
#DATA+=	installation-ia64.html
#DATA+=	installation-i386.html
#DATA+=	installation-pc98.html
#DATA+=	installation-sparc64.html
#DATA+=	readme.html
DATA+=	relnotes-alpha.html
DATA+=	relnotes-ia64.html
DATA+=	relnotes-i386.html
DATA+=	relnotes-pc98.html
DATA+=	relnotes-sparc64.html

### Revision checking
REVCHECK=	YES

.include "${WEB_PREFIX}/share/mk/web.site.mk"
