# $FreeBSD: www/de/ports/Makefile.inc,v 1.1 2007/04/01 11:09:38 jkois Exp $
# $FreeBSDde: de-www/ports/Makefile.inc,v 1.1 2007/03/31 14:27:06 jkois Exp $
# basiert auf: 1.10

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

