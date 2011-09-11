# $FreeBSD: www/mn/Makefile,v 1.1 2007/04/21 10:07:55 gabor Exp $

###################################################
# The FreeBSD Mongolian Documentation Project     #
###################################################

.if exists(Makefile.conf)
.include "Makefile.conf"
.endif
.if exists(../Makefile.inc)
.include "../Makefile.inc"
.endif

.if !defined(WEB_ONLY) || empty(WEB_ONLY)
SUBDIR=	doc
.endif

WEBDIR?=	data/mn

.include "${WEB_PREFIX}/share/mk/web.site.mk"
