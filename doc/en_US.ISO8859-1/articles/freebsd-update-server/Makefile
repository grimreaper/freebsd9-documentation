# $FreeBSD: doc/en_US.ISO8859-1/articles/freebsd-update-server/Makefile,v 1.2 2011/02/24 17:05:15 manolis Exp $
#
# Article: FreeBSD Update Server

DOC?= article

FORMATS?= html

INSTALL_COMPRESSED?= gz
INSTALL_ONLY_COMPRESSED?=

WITH_ARTICLE_TOC?=YES

EXTRAS=		init.txt
EXTRAS+=	diff.txt

SRCS=		article.sgml
SRCS+=		${EXTRAS}

IMAGES_LIB=	callouts/1.png
IMAGES_LIB+=	callouts/2.png
IMAGES_LIB+=	callouts/3.png
IMAGES_LIB+=	callouts/4.png
IMAGES_LIB+=	callouts/5.png

afterinstall:
.for entry in ${EXTRAS}
	${INSTALL_DOCS} ${.CURDIR}/${entry} ${DESTDIR}
.endfor

DOC_PREFIX?= ${.CURDIR}/../../..
.include "${DOC_PREFIX}/share/mk/doc.project.mk"
