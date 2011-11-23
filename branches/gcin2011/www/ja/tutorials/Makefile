#
# $FreeBSD: www/ja/tutorials/Makefile,v 1.10 2002/05/13 20:09:05 hrs Exp $
#
# Original revision: 1.12
#
# Build the FreeBSD tutorials/articles outside of the www tree, and then
# install them in to the right place.

.if exists(../Makefile.conf)
.include "../Makefile.conf"
.endif
.if exists(../Makefile.inc)
.include "../Makefile.inc"
.endif

DOCS = index.sgml

### Revision checking
REVCHECK=	YES

.include "${WEB_PREFIX}/share/mk/web.site.mk"
