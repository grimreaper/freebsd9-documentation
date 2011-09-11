# $FreeBSD: doc/mn_MN.UTF-8/books/handbook/pgpkeys/Makefile,v 1.1 2007/04/11 10:51:18 keramida Exp $
#
# The FreeBSD Mongolian Documentation Project
#
# Original revision 1.3
#
# Build the Handbook with just the content from this chapter.
#

CHAPTERS= 	pgpkeys/chapter.sgml

PGPKEYS!=	perl -ne 'm/\"([\w-]+.key)\"/ && print "$$1\n"' \
		    ${DOC_PREFIX}/share/pgpkeys/pgpkeys.ent
SRCS+=		${PGPKEYS}

VPATH=		..

MASTERDOC=	${.CURDIR}/../${DOC}.${DOCBOOKSUFFIX}

DOC_PREFIX?= 	${.CURDIR}/../../../..

.include "../Makefile"
