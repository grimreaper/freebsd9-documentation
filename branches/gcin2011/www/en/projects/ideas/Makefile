# FreeBSD list of projects and ideas for volunteers
#
# $FreeBSD: www/en/projects/ideas/Makefile,v 1.2 2007/03/10 03:52:09 murray Exp $

MAINTAINER=	joel

.if exists(../Makefile.conf)
.include "../Makefile.conf"
.endif
.if exists(../Makefile.inc)
.include "../Makefile.inc"
.endif

DATA=	style.css

XML_IDEAS=		${WEB_PREFIX}/en/projects/ideas/ideas.xml
XSL_IDEAS=		${WEB_PREFIX}/en/projects/ideas/ideas.xsl

XMLDOCS=	ideas:${XSL_IDEAS}:${XML_IDEAS}:

INDEXLINK=	ideas.html

.include "${WEB_PREFIX}/share/mk/web.site.mk"
