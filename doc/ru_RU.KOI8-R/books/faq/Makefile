#
# The FreeBSD Russian Documentation Project
#
# $FreeBSD: doc/ru_RU.KOI8-R/books/faq/Makefile,v 1.14 2005/04/23 06:07:53 andy Exp $
# $FreeBSDru: frdp/doc/ru_RU.KOI8-R/books/faq/Makefile,v 1.11 2005/04/12 17:25:03 andy Exp $
#
# Original revision: 1.12
#
# Build the FreeBSD FAQ
#

MAINTAINER=andy@FreeBSD.org phantom@FreeBSD.org

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

URL_RELPREFIX?=	../../../..
DOC_PREFIX?=	${.CURDIR}/../../..

.include "${DOC_PREFIX}/share/mk/doc.project.mk"
