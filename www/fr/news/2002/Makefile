# $FreeBSD: www/fr/news/2002/Makefile,v 1.3 2006/08/19 21:23:39 hrs Exp $

# The FreeBSD French Documentation Project
# Original revision: 1.1

.if exists(../Makefile.conf)
.include "../Makefile.conf"
.endif
.if exists(../Makefile.inc)
.include "../Makefile.inc"
.endif

XMLDOCS+=	index:${XSL_NEWS_NEWSFLASH_OLD}:news.xml:
DEPENDSET.index=transtable news

.include "${WEB_PREFIX}/share/mk/web.site.mk"
