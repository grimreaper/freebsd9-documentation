#
# The FreeBSD Russian Documentation Project
#
# $FreeBSD: doc/ru_RU.KOI8-R/books/porters-handbook/Makefile,v 1.7 2003/09/26 03:31:54 andy Exp $
# $FreeBSDru: frdp/doc/ru_RU.KOI8-R/books/porters-handbook/Makefile,v 1.7 2003/09/26 02:34:16 andy Exp $
#
# Original reivision: 1.4
#

#
# Build the FreeBSD Porter's Handbook.
#

MAINTAINER=andy@FreeBSD.org.ua

DOC?= book

FORMATS?= html-split

INSTALL_COMPRESSED?= gz
INSTALL_ONLY_COMPRESSED?=

# 
# SRCS lists the individual SGML files that make up the document. Changes
# to any of these files will force a rebuild
#

# SGML content
SRCS=  book.sgml

# Entities
#SRCS+= ../../../en_US.ISO8859-1/books/handbook/authors.ent

# Use the local DSSSL file
DSLHTML?= 	${.CURDIR}/freebsd.dsl
DSLPRINT?= 	${.CURDIR}/freebsd.dsl

DOC_PREFIX?= ${.CURDIR}/../../..
.include "${DOC_PREFIX}/share/mk/doc.project.mk"
