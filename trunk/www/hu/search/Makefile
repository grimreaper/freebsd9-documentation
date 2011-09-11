# $FreeBSD: www/hu/search/Makefile,v 1.1 2007/01/07 22:44:48 keramida Exp $

.if exists(../Makefile.conf)
.include "../Makefile.conf"
.endif
.if exists(../Makefile.inc)
.include "../Makefile.inc"
.endif

DOCS+=	index-site.sgml
DOCS+=	search.sgml 
DOCS+=	searchhints.sgml
DOCS+=	search-mid.sgml

INDEXLINK=	search.html
CLEANFILES+=	atoz.sgml site.sgml


index-site.html: atoz.sgml site.sgml
atoz.sgml: web.atoz 
	${SORT} -fu ${.ALLSRC} | ${PERL} ${.CURDIR}/../../en/search/atoz.pl > ${.TARGET}

site.sgml: site.map
	${PERL} ${.CURDIR}/../../en/search/site.pl < ${.ALLSRC} > ${.TARGET}

.include "${WEB_PREFIX}/share/mk/web.site.mk"
