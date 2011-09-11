#
# Crea il Manuale con il contenuto di solo questo capitolo.
#
# $FreeBSD: doc/it_IT.ISO8859-15/books/handbook/pgpkeys/Makefile,v 1.2 2003/05/08 10:07:51 blackend Exp $
#

CHAPTERS= 	pgpkeys/chapter.sgml

PGPKEYS!=	perl -ne 'm/\"([\w-]+.key)\"/ && print "$$1\n"' \
		    ${DOC_PREFIX}/share/pgpkeys/pgpkeys.ent
SRCS+=		${PGPKEYS}

VPATH=		..

MASTERDOC=	${.CURDIR}/../${DOC}.${DOCBOOKSUFFIX}

DOC_PREFIX?= 	${.CURDIR}/../../../..

.include "../Makefile"
