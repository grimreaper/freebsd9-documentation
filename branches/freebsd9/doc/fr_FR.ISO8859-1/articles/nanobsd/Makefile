# 
#    The FreeBSD Documentation Project
#    The FreeBSD French Documentation Project
#
#    $FreeBSD: doc/fr_FR.ISO8859-1/articles/nanobsd/Makefile,v 1.1 2007/12/12 18:34:23 blackend Exp $
#    Original revision: 1.2
#
# Article: Introduction to NanoBSD

DOC?= article

FORMATS?= html
WITH_ARTICLE_TOC?= YES

INSTALL_COMPRESSED?= gz
INSTALL_ONLY_COMPRESSED?=

# Images from the cross-document image library
IMAGES_LIB=  callouts/1.png
IMAGES_LIB+= callouts/2.png
IMAGES_LIB+= callouts/3.png
IMAGES_LIB+= callouts/4.png

SRCS=	article.sgml

URL_RELPREFIX?=	../../../..
DOC_PREFIX?=	${.CURDIR}/../../..

.include "${DOC_PREFIX}/share/mk/doc.project.mk"
