#
# %SOURCE%  en/news/2009/Makefile
# %SRCID%   1.1
#
# $FreeBSD: www/hu/news/2009/Makefile,v 1.1 2010/03/12 23:06:04 pgj Exp $

.if exists(../Makefile.conf)
.include "../Makefile.conf"
.endif
.if exists(../Makefile.inc)
.include "../Makefile.inc"
.endif

XMLDOCS+=	index:../../share/sgml/templates.oldnewsflash.xsl:news.xml:
DEPENDSET.index=transtable news

.include "${WEB_PREFIX}/share/mk/web.site.mk"
