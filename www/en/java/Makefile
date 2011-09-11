# $FreeBSD: www/en/java/Makefile,v 1.5 2008/01/15 21:16:25 murray Exp $

.if exists(../Makefile.conf)
.include "../Makefile.conf"
.endif
.if exists(../Makefile.inc)
.include "../Makefile.inc"
.endif

SUBDIR =	dists
SUBDIR+=	docs
SUBDIR+=	links

DOCS =  advocacy.sgml
DOCS+=  howhelp.sgml
DOCS+=  index.sgml
DOCS+=  install.sgml

DATA=	j2j.gif

XML.DEFAULT=	news.xml
XMLDOCS=	newsflash
XMLDOCS+=	news:java-rss.xsl::rss.xml

.include "${WEB_PREFIX}/share/mk/web.site.mk"
