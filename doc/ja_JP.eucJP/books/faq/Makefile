# 
# $FreeBSD: doc/ja_JP.eucJP/books/faq/Makefile,v 1.13 2003/04/27 19:50:26 hrs Exp $
#
# Build the FreeBSD FAQ
#
# Original revision: 1.10
#

MAINTAINER=kuriyama@FreeBSD.ORG

DOC?= book

FORMATS?= html-split html

INSTALL_COMPRESSED?= gz
INSTALL_ONLY_COMPRESSED?=

WITH_BIBLIOXREF_TITLE?=YES

# 
# SRCS lists the individual SGML files that make up the document. Changes
# to any of these files will force a rebuild
#

# SGML content
SRCS=  book.sgml 

DOC_PREFIX?= ${.CURDIR}/../../..
.include "${DOC_PREFIX}/share/mk/doc.project.mk"
