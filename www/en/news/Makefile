# $FreeBSD: www/en/news/Makefile,v 1.53 2010/03/05 00:17:57 danger Exp $

.if exists(../Makefile.conf)
.include "../Makefile.conf"
.endif
.if exists(../Makefile.inc)
.include "../Makefile.inc"
.endif

DOCS+= news.sgml

# press releases
DOCS+= pressreleases.sgml
DOCS+= press-rel-1.sgml
DOCS+= press-rel-2.sgml
DOCS+= press-rel-3.sgml
DOCS+= press-rel-4.sgml
DOCS+= press-rel-5.sgml
DOCS+= press-rel-6.sgml
DOCS+= press-rel-7.sgml
DOCS+= press-rel-8.sgml
DOCS+= press-rel-9.sgml

# The yearly State of the Union address
DOCS+= sou1999.sgml

INDEXLINK= news.html

DEPENDSET.DEFAULT=	transtable news press

XMLDOCS=	newsflash:${XSL_NEWS_NEWSFLASH}:${XML_NEWS_NEWS_MASTER}:
XMLDOCS+=	news-rdf:${XSL_NEWS_NEWS_RDF}:${XML_NEWS_NEWS_MASTER}:news.rdf
XMLDOCS+=	news-rss:${XSL_NEWS_NEWS_RSS}:${XML_NEWS_NEWS_MASTER}:rss.xml
XMLDOCS+=	press:${XSL_NEWS_PRESS}:${XML_NEWS_PRESS_MASTER}:
XMLDOCS+=	press-rss:${XSL_NEWS_PRESS_RSS}:${XML_NEWS_PRESS_MASTER}:press-rss.xml

SUBDIR= 	1993
SUBDIR+= 	1996
SUBDIR+= 	1997
SUBDIR+= 	1998
SUBDIR+= 	1999
SUBDIR+= 	2000
SUBDIR+= 	2001
SUBDIR+= 	2002
SUBDIR+= 	2003
SUBDIR+= 	2004
SUBDIR+= 	2005
SUBDIR+= 	2006
SUBDIR+= 	2007
SUBDIR+=	2008
SUBDIR+=	2009
SUBDIR+=	status

.include "${WEB_PREFIX}/share/mk/web.site.mk"
