#
#    The FreeBSD Documentation Project
#    The FreeBSD French Documentation Project
#
#    Compilation du Manuel PPP
#
#
# 
#    $FreeBSD: doc/fr_FR.ISO8859-1/books/ppp-primer/Makefile,v 1.1 2002/02/14 14:52:21 gioria Exp $
#    Original revision: 1.1
#    $Id$
# 
#    Build the PPP PrimerQ
#

MAINTAINER=gioria@FreeBSD.ORG

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
