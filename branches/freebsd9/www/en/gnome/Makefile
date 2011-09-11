# $FreeBSD: www/en/gnome/Makefile,v 1.27 2008/01/10 04:57:20 murray Exp $

.if exists(../Makefile.conf)
.include "../Makefile.conf"
.endif
.if exists(../Makefile.inc)
.include "../Makefile.inc"
.endif

SUBDIR=		docs
SUBDIR+=	images

DOCS=	screenshots.sgml
DOCS+=	contact.sgml

DATA=	gnomelogalyzer.sh
DATA+=	gnome_prefix.sh

XML.DEFAULT=	news.xml

XMLDOCS=	index
XSLTPROCOPTS.index=	${XSLTPROCOPTS:N--nonet}

XMLDOCS+=	newsflash
XMLDOCS+=	news:rss.xsl::news.rdf
XMLDOCS+=	newsrss:rss2.xsl::rss.xml

.include "${WEB_PREFIX}/share/mk/web.site.mk"
