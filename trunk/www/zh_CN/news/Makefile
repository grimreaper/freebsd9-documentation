# The FreeBSD Simplified Chinese Documentation Project
# Original Revision: 1.45
#
# $FreeBSD: www/zh_CN/news/Makefile,v 1.2 2006/08/19 21:26:49 hrs Exp $

.if exists(../Makefile.conf)
.include "../Makefile.conf"
.endif
.if exists(../Makefile.inc)
.include "../Makefile.inc"
.endif

DOCS+= news.sgml

# press releases
DOCS+= pressreleases.sgml

INDEXLINK= news.html

DEPENDSET.DEFAULT=	transtable news press

XMLDOCS=	newsflash:${XSL_NEWS_NEWSFLASH}:${XML_NEWS_NEWS_MASTER}:
XMLDOCS+=	press:${XSL_NEWS_PRESS}:${XML_NEWS_PRESS_MASTER}:

.include "${WEB_PREFIX}/share/mk/web.site.mk"
