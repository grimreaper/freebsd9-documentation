# The FreeBSD Russian Documentation Project
#
# $FreeBSD: doc/ru_RU.KOI8-R/books/design-44bsd/Makefile,v 1.2 2005/04/23 07:13:46 andy Exp $
# $FreeBSDru: frdp/doc/ru_RU.KOI8-R/books/design-44bsd/Makefile,v 1.4 2003/12/18 07:09:48 phantom Exp $
#
# Original revision: 1.5

DOC?= book

FORMATS?= html

IMAGES_EN= fig1.eps fig2.eps

INSTALL_COMPRESSED?=gz
INSTALL_ONLY_COMPRESSED?=

SRCS= book.sgml

# Use the local DSSSL file
DSLHTML?=       ${.CURDIR}/freebsd.dsl
DSLPRINT?=      ${.CURDIR}/freebsd.dsl

DOC_PREFIX?= ${.CURDIR}/../../..

.include "${DOC_PREFIX}/share/mk/doc.project.mk"
