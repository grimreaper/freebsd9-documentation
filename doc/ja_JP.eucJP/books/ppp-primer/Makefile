# 
# $FreeBSD: doc/ja_JP.eucJP/books/ppp-primer/Makefile,v 1.4 2004/06/03 06:31:51 trhodes Exp $
#
# FreeBSD Japanese Documentation Project
# Original revision: 1.1
#
# Build the PPP PrimerQ
#

MAINTAINER=doc@FreeBSD.org

DOC?= book

FORMATS?= html-split html

INSTALL_COMPRESSED?= gz
INSTALL_ONLY_COMPRESSED?=

# 
# SRCS lists the individual SGML files that make up the document. Changes
# to any of these files will force a rebuild
#

# SGML content
SRCS=  book.sgml 

DOC_PREFIX?= ${.CURDIR}/../../..

.include "${DOC_PREFIX}/share/mk/doc.project.mk"
