# $FreeBSD: www/de/news/2005/Makefile,v 1.2 2007/03/15 18:02:11 jkois Exp $
# $FreeBSDde: de-www/news/2005/Makefile,v 1.2 2007/03/15 17:48:58 jkois Exp $
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
