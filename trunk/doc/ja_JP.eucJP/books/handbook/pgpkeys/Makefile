#
# Build the Handbook with just the content from this chapter.
#
# $FreeBSD: doc/ja_JP.eucJP/books/handbook/pgpkeys/Makefile,v 1.4 2003/06/15 17:25:53 hrs Exp $
#
# Original revision: 1.3

CHAPTERS= 	pgpkeys/chapter.sgml

PGPKEYS!=	perl -ne 'm/\"([\w-]+.key)\"/ && print "$$1\n"' \
		    ${DOC_PREFIX}/share/pgpkeys/pgpkeys.ent
SRCS+=		${PGPKEYS}

VPATH=		..

MASTERDOC=	${.CURDIR}/../${DOC}.${DOCBOOKSUFFIX}

DOC_PREFIX?= 	${.CURDIR}/../../../..

.include "../Makefile"
