# $FreeBSD: www/de/news/2003/Makefile,v 1.1 2007/02/16 18:44:31 jkois Exp $
# $FreeBSDde: de-www/news/2003/Makefile,v 1.1 2007/02/14 20:45:07 jkois Exp $

.if exists(../Makefile.conf)
.include "../Makefile.conf"
.endif
.if exists(../Makefile.inc)
.include "../Makefile.inc"
.endif

XMLDOCS+=	index:${XSL_NEWS_NEWSFLASH_OLD}:news.xml:
DEPENDSET.index=transtable news

.include "${WEB_PREFIX}/share/mk/web.site.mk"
