# $FreeBSD: www/fr/projects/Makefile,v 1.2 2004/08/09 20:39:31 stephane Exp $

# The FreeBSD French Documentation Project
# Original revision: 1.16

.if exists(../Makefile.conf)
.include "../Makefile.conf"
.endif
.if exists(../Makefile.inc)
.include "../Makefile.inc"
.endif

DOCS=	projects.sgml
DOCS+=	newbies.sgml
DOCS+=	libh.sgml
DOCS+=	cvsweb.sgml

INDEXLINK= projects.html

SUBDIR=	 busdma c99 mips

.include "${WEB_PREFIX}/share/mk/web.site.mk"
