# $FreeBSD: www/en/ports/Makefile.inc,v 1.10 2006/11/14 18:20:41 simon Exp $

PORTINDEX=	${PERL} ${.CURDIR}/portindex
INDEX=		INDEX
PINDEX=		ports/${INDEX}

COOKIE=		${INDEX} Makefile.gen

CLEANFILES+=	${INDEX} ${INDEX}.bz2
CLEANFILES+=	packages.exists.temp  packages.exists
CLEANFILES+= 	${DYNAMIC_DOCS} 
CLEANFILES+=	Makefile.gen
CLEANFILES+=	ports.count ports.size

_ALLINSTALL= packages.exists categories

