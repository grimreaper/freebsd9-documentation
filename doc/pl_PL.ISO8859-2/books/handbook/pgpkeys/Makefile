#
# Build the Handbook with just the content from this chapter.
#
# $FreeBSD: doc/pl_PL.ISO8859-2/books/handbook/pgpkeys/Makefile,v 1.1 2006/09/24 18:59:04 hrs Exp $
#

CHAPTERS= 	pgpkeys/chapter.sgml

PGPKEYS!=	perl -ne 'm/\"([\w-]+.key)\"/ && print "$$1\n"' \
		    ${DOC_PREFIX}/share/pgpkeys/pgpkeys.ent
SRCS+=		${PGPKEYS}

VPATH=		..

MASTERDOC=	${.CURDIR}/../${DOC}.${DOCBOOKSUFFIX}

DOC_PREFIX?= 	${.CURDIR}/../../../..

.include "../Makefile"
