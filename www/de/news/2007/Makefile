# $FreeBSD: www/de/news/2007/Makefile,v 1.1 2008/12/10 18:44:15 jkois Exp $
# $FreeBSDde: de-www/news/2007/Makefile,v 1.1 2008/12/09 10:32:05 jkois Exp $
# basiert auf: 1.1

.if exists(../Makefile.conf)
.include "../Makefile.conf"
.endif
.if exists(../Makefile.inc)
.include "../Makefile.inc"
.endif

XMLDOCS+=	index:${XSL_NEWS_NEWSFLASH_OLD}:news.xml:
DEPENDSET.index=transtable news

XMLDOCS+=	press:${XSL_NEWS_PRESS_OLD}::
DEPENDSET.press=transtable press

.include "${WEB_PREFIX}/share/mk/web.site.mk"
