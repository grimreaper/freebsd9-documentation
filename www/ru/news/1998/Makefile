# $FreeBSD: www/ru/news/1998/Makefile,v 1.3 2006/08/19 21:25:52 hrs Exp $
# The FreeBSD Russian Documentation Project
# $FreeBSDru: frdp/www/ru/news/1998/Makefile,v 1.3 2004/04/09 11:16:51 phantom Exp $
# Original revision: 1.3

.if exists(../Makefile.conf)
.include "../Makefile.conf"
.endif

.if exists(../Makefile.inc)
.include "../Makefile.inc"
.endif
 
DOCS=	index.sgml

XMLDOCS+=	press:${XSL_NEWS_PRESS_OLD}::
DEPENDSET.press=transtable press

.include "${WEB_PREFIX}/share/mk/web.site.mk"
