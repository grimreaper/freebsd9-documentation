# 
# $FreeBSD: doc/fr_FR.ISO8859-1/books/porters-handbook/Makefile,v 1.1 2004/05/24 20:15:04 gioria Exp $
# Original revision: 1.4
#
# Build the FreeBSD Porter's Handbook.
#

MAINTAINER=gioria@FreeBSD.org

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

# Use the local DSSSL file
DSLHTML?= 	${.CURDIR}/freebsd.dsl
DSLPRINT?= 	${.CURDIR}/freebsd.dsl

DOC_PREFIX?= ${.CURDIR}/../../..
.include "${DOC_PREFIX}/share/mk/doc.project.mk"
