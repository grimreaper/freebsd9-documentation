#
#    The FreeBSD Documentation Project
#    The FreeBSD French Documentation Project
#
#    Compilation du Manuel du Developpeur de FreeBSD
#
#
# 
#    $FreeBSD: doc/fr_FR.ISO8859-1/books/developers-handbook/Makefile,v 1.1 2002/02/14 14:25:01 gioria Exp $
#    Original revision: 1.25
#
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

# Entities

DOC_PREFIX?= ${.CURDIR}/../../..

.include "${DOC_PREFIX}/share/mk/doc.project.mk"
