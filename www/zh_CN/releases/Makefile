# $FreeBSD: www/zh_CN/releases/Makefile,v 1.7 2009/04/30 17:37:26 delphij Exp $
# The FreeBSD Simplified Chinese Documentation Project
# Original Revision 1.52

.if exists(../Makefile.conf)
.include "../Makefile.conf"
.endif
.if exists(../Makefile.inc)
.include "../Makefile.inc"
.endif

DOCS?=	index.sgml

#SUBDIR=		1.1 1.1.5 2.0 2.0.5R 2.1R 2.1.5R 2.1.6R 2.1.7R 2.2R
#SUBDIR+=	2.2.1R 2.2.2R 2.2.5R 2.2.6R 2.2.7R 2.2.8R 3.0R 3.1R 3.2R
#SUBDIR+=	3.3R 3.4R 3.5R 4.0R 4.1R 4.1.1R 4.2R 4.3R 4.4R 4.5R 4.6R
#SUBDIR+=	4.6.2R 4.7R 4.8R 4.9R 4.10R 4.11R
#SUBDIR+=	5.0R 5.1R 5.2R 5.2.1R 5.3R 5.4R 5.5R
SUBDIR+=	5.4R 5.5R
SUBDIR+=	6.0R 6.1R 6.2R 6.3R
SUBDIR+=	7.0R 7.1R 7.2R

.if defined $(NEW_BUILD)
SUBDIR=
.endif

.include "${WEB_PREFIX}/share/mk/web.site.mk"
