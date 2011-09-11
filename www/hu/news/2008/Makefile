#
# %SOURCE%  en/news/2008/Makefile
# %SRCID%   1.3
#
# $FreeBSD: www/hu/news/2008/Makefile,v 1.1 2010/03/12 23:06:04 pgj Exp $

.if exists(../Makefile.conf)
.include "../Makefile.conf"
.endif
.if exists(../Makefile.inc)
.include "../Makefile.inc"
.endif

XMLDOCS+=	press:../../share/sgml/templates.oldpress.xsl::
DEPENDSET.press=transtable press

.include "${WEB_PREFIX}/share/mk/web.site.mk"
