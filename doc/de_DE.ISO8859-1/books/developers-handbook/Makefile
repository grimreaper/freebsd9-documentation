# The FreeBSD Documentation Project
# The FreeBSD German Documentation Project
#
# $FreeBSD: doc/de_DE.ISO8859-1/books/developers-handbook/Makefile,v 1.2 2009/02/24 15:02:17 jkois Exp $
# $FreeBSDde: de-docproj/books/developers-handbook/Makefile,v 1.3 2009/02/21 19:12:23 jkois Exp $
# basiert auf: 1.24
#
# Build the FreeBSD Developers' Handbook.
#

MAINTAINER=doc@FreeBSD.org

DOC?= book

FORMATS?= html-split

HAS_INDEX= true

INSTALL_COMPRESSED?= gz
INSTALL_ONLY_COMPRESSED?=

# Images
IMAGES_EN= sockets/layers.eps sockets/sain.eps sockets/sainfill.eps sockets/sainlsb.eps sockets/sainmsb.eps sockets/sainserv.eps sockets/serv.eps sockets/serv2.eps sockets/slayers.eps

#
# SRCS lists the individual SGML files that make up the document. Changes
# to any of these files will force a rebuild
#

# SGML content
SRCS=  book.sgml
SRCS+= introduction/chapter.sgml
SRCS+= ipv6/chapter.sgml
SRCS+= kernelbuild/chapter.sgml
SRCS+= kerneldebug/chapter.sgml
SRCS+= l10n/chapter.sgml
SRCS+= policies/chapter.sgml
SRCS+= secure/chapter.sgml
SRCS+= sockets/chapter.sgml
SRCS+= testing/chapter.sgml
SRCS+= tools/chapter.sgml
SRCS+= x86/chapter.sgml

# Entities

URL_RELPREFIX?=	../../../..
DOC_PREFIX?=	${.CURDIR}/../../..

.include "${DOC_PREFIX}/share/mk/doc.project.mk"
