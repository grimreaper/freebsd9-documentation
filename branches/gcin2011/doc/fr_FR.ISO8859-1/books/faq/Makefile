#
#    The FreeBSD Documentation Project
#    The FreeBSD French Documentation Project
#
#    Compilation de la FAQ FreeBSD
#
#    $FreeBSD: doc/fr_FR.ISO8859-1/books/faq/Makefile,v 1.3 2004/06/03 06:31:51 trhodes Exp $
#    Original revision: 1.7
MAINTAINER=doc@FreeBSD.org

DOC?= book

FORMATS?= html-split html

INSTALL_COMPRESSED?= gz
INSTALL_ONLY_COMPRESSED?=

JADEFLAGS+=-Vbiblio-xref-title
# 
# SRCS lists the individual SGML files that make up the document. Changes
# to any of these files will force a rebuild
#

# SGML content
SRCS=  book.sgml 

DOC_PREFIX?= ${.CURDIR}/../../..

.include "${DOC_PREFIX}/share/mk/doc.project.mk"
