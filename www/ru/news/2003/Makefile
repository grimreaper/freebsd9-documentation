#
# The FreeBSD Russian Documentation Project
#
# $FreeBSD: www/ru/news/2003/Makefile,v 1.2 2006/08/19 21:25:52 hrs Exp $
# $FreeBSDru: frdp/www/ru/news/2003/Makefile,v 1.1 2005/04/27 17:55:52 andy Exp $
#
# Original revision: 1.1
#

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
