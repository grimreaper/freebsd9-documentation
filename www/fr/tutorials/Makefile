#
# $FreeBSD: www/fr/tutorials/Makefile,v 1.1 2003/12/15 16:04:58 stephane Exp $
#
# Build the FreeBSD tutorials/articles outside of the www tree, and then
# install them in to the right place.

# The FreeBSD French Documentation Project
# Original revision: 1.12

.if exists(../Makefile.conf)
.include "../Makefile.conf"
.endif
.if exists(../Makefile.inc)
.include "../Makefile.inc"
.endif

DOCS = index.sgml

.include "${WEB_PREFIX}/share/mk/web.site.mk"
