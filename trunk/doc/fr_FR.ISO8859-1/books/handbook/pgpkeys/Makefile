#
# Build the Handbook with just the content from this chapter.
#
# $FreeBSD: doc/fr_FR.ISO8859-1/books/handbook/pgpkeys/Makefile,v 1.2 2003/05/08 10:07:51 blackend Exp $
# $Id: Makefile,v 1.2 2002/08/30 17:32:57 marc Exp $
# Original revision: 1.2
#

CHAPTERS= 	pgpkeys/chapter.sgml

PGPKEYS!=	perl -ne 'm/\"([\w-]+.key)\"/ && print "$$1\n"' \
		${DOC_PREFIX}/share/pgpkeys/pgpkeys.ent
SRCS+=		${PGPKEYS}

VPATH=		..

MASTERDOC=	${.CURDIR}/../${DOC}.${DOCBOOKSUFFIX}

DOC_PREFIX?= 	${.CURDIR}/../../../..

.include "../Makefile"
