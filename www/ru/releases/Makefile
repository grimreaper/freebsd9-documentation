#
# The FreeBSD Russian Documentation Project
#
# $FreeBSD: www/ru/releases/Makefile,v 1.7 2006/07/18 12:31:57 den Exp $
# $FreeBSDru: frdp/www/ru/releases/Makefile,v 1.8 2006/07/18 12:21:53 den Exp $
#
# Original revision: 1.48
#

.if exists(../Makefile.conf)
.include "../Makefile.conf"
.endif
.if exists(../Makefile.inc)
.include "../Makefile.inc"
.endif

DOCS?=	index.sgml

SUBDIR=	5.3R 5.4R

.if defined $(NEW_BUILD)
SUBDIR=
.endif

.include "${WEB_PREFIX}/share/mk/web.site.mk"
