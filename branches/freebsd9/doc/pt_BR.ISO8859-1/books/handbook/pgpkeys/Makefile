#
# Build the Handbook with just the content from this chapter.
#
# $FreeBSD: doc/pt_BR.ISO8859-1/books/handbook/pgpkeys/Makefile,v 1.3 2011/05/18 11:47:29 ryusuke Exp $
#
# Build the FreeBSD Handbook (Brazilian Portuguese).
#
# The FreeBSD Documentation Project
# The FreeBSD Brazilian Portuguese Documentation Project
#
# Original revision: 1.1
#

CHAPTERS= 	pgpkeys/chapter.sgml

PGPKEYS!=	perl -ne 'm/\"([\w-]+.key)\"/ && print "$$1\n"' \
		    ${DOC_PREFIX}/share/pgpkeys/pgpkeys.ent
SRCS+=		${PGPKEYS}

VPATH=		..

MASTERDOC=	${.CURDIR}/../${DOC}.${DOCBOOKSUFFIX}

DOC_PREFIX?= 	${.CURDIR}/../../../..

.include "../Makefile"
