#
#    The FreeBSD Documentation Project
#    The FreeBSD German Documentation Project
#
#    Build the FreeBSD FAQ in the German translation
#
#    $FreeBSD: doc/de_DE.ISO8859-1/books/faq/Makefile,v 1.7 2004/09/05 14:17:54 mheinen Exp $
#    $FreeBSDde: de-docproj/books/faq/Makefile,v 1.11 2004/08/04 23:33:31 mheinen Exp $
#    basiert auf: 1.12
#

MAINTAINER=de-bsd-translators@de.FreeBSD.org

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
