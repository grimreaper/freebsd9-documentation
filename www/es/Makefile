# $FreeBSD: www/es/Makefile,v 1.24 2008/02/16 11:16:45 gabor Exp $

.if exists(Makefile.conf)
.include "Makefile.conf"
.endif
.if exists(../Makefile.inc)
.include "../Makefile.inc"
.endif

# These are turned into validated, normalized HTML files.

DOCS=  about.sgml
DOCS+= applications.sgml
DOCS+= availability.sgml
DOCS+= community.sgml
DOCS+= docs.sgml
DOCS+= features.sgml
DOCS+= internet.sgml
DOCS+= mailto.sgml
DOCS+= publish.sgml
DOCS+= send-pr.sgml
DOCS+= support.sgml
DOCS+= where.sgml
DOCS+= y2kbug.sgml

CLEANFILES+=atoz.sgml site.sgml

# Subdirectories
# SGML
SUBDIR=  security
SUBDIR+= docproj
SUBDIR+= news
SUBDIR+= internal
SUBDIR+= copyright
SUBDIR+= search
SUBDIR+= platforms
SUBDIR+= projects
SUBDIR+= releases

.if !defined(WEB_ONLY) || empty(WEB_ONLY)
SUBDIR+= doc
.endif

WEBDIR?=	data/es

# index.html is special, and generated from index.xsl and news/news.xml
DATA+=		index.html
CLEANFILES+=	index.html

XMLDOCS=		index:xsl:${XML_NEWS_NEWS}:
DEPENDSET.index=	transtable mirrors news press events \
			advisories notices

DATESUBST=	's/<!ENTITY date[ \t]*"$$Free[B]SD. .* \(.* .*\) .* .* $$">/<!ENTITY date	"\&Uacute\;ltima modificaci\&oacute\;n: \1">/'

.include "${WEB_PREFIX}/share/mk/web.site.mk"
