# The FreeBSD Simplified Chinese Documentation Project
#
# Original Revision 1.10
# $FreeBSD: www/zh_CN/platforms/Makefile,v 1.2 2007/03/29 16:55:34 delphij Exp $

.if exists(../Makefile.conf)
.include "../Makefile.conf"
.endif
.if exists(../Makefile.inc)
.include "../Makefile.inc"
.endif

DOCS=	alpha.sgml
DOCS+=	amd64.sgml
DOCS+=	arm.sgml
DOCS+=	i386.sgml
DOCS+=	index.sgml
#DOCS+=	mips.sgml
#DOCS+=	pc98.sgml
#DOCS+=	ppc.sgml
#DOCS+=	sparc.sgml
#DOCS+=	xbox.sgml

SUBDIR=	amd64
#SUBDIR+=ia64

.include "${WEB_PREFIX}/share/mk/web.site.mk"
