# 
# $FreeBSD: doc/hu_HU.ISO8859-2/books/fdp-primer/Makefile,v 1.2 2010/11/28 19:23:08 pgj Exp $
#
# %SOURCE%  en_US.ISO8859-1/books/fdp-primer/Makefile
# %SRCID%   1.14
#
# Build the FreeBSD Documentation Project Primer.
#

NO_TIDY=yes

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
SRCS+= overview/chapter.sgml 
SRCS+= psgml-mode/chapter.sgml 
SRCS+= see-also/chapter.sgml 
SRCS+= sgml-markup/chapter.sgml 
SRCS+= sgml-primer/chapter.sgml 
SRCS+= stylesheets/chapter.sgml 
SRCS+= structure/chapter.sgml
SRCS+= doc-build/chapter.sgml
SRCS+= the-website/chapter.sgml 
SRCS+= tools/chapter.sgml 
SRCS+= translations/chapter.sgml
SRCS+= writing-style/chapter.sgml 

SRCS+= examples/appendix.sgml

# Images from the cross-document image library
IMAGES_LIB=	callouts/1.png
IMAGES_LIB+=	callouts/2.png
IMAGES_LIB+=	callouts/3.png
IMAGES_LIB+=	callouts/4.png
IMAGES_LIB+=	callouts/5.png

# Entities
SRCS+= chapters.ent 

URL_RELPREFIX?=	../../../..
DOC_PREFIX?=	${.CURDIR}/../../..

.include "${DOC_PREFIX}/share/mk/doc.project.mk"
