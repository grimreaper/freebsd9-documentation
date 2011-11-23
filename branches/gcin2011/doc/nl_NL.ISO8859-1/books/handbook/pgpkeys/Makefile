#
# Build the Handbook with just the content from this chapter.
#
# $FreeBSD: doc/nl_NL.ISO8859-1/books/handbook/pgpkeys/Makefile,v 1.2 2008/12/28 12:23:39 rene Exp $
#
# %SOURCE%	en_US.ISO8859-1/books/handbook/pgpkeys/Makefile
# %SRCID%	1.3
#

CHAPTERS= 	pgpkeys/chapter.sgml

PGPKEYS!=	perl -ne 'm/\"([\w-]+.key)\"/ && print "$$1\n"' \
		    ${DOC_PREFIX}/share/pgpkeys/pgpkeys.ent
SRCS+=		${PGPKEYS}

VPATH=		..

MASTERDOC=	${.CURDIR}/../${DOC}.${DOCBOOKSUFFIX}

DOC_PREFIX?= 	${.CURDIR}/../../../..

.include "../Makefile"
