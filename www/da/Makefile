# $FreeBSD: www/da/Makefile,v 1.1 2003/10/28 23:04:04 simon Exp $
.if exists(Makefile.conf)
.include "Makefile.conf"
.endif
.if exists(../Makefile.inc)
.include "../Makefile.inc"
.endif

# Subdirectories
# SGML
.if !defined(WEB_ONLY) || empty(WEB_ONLY)
SUBDIR=  doc
.endif

WEBDIR?=	data/da

.include "${WEB_PREFIX}/share/mk/web.site.mk"
