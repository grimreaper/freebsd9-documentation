#
# The FreeBSD Russian Documentation Project
#
# $FreeBSD: doc/ru_RU.KOI8-R/articles/fbsd-from-scratch/Makefile,v 1.3 2005/06/14 06:37:36 andy Exp $
# $FreeBSDru: frdp/doc/ru_RU.KOI8-R/articles/fbsd-from-scratch/Makefile,v 1.3 2005/06/12 13:51:45 gad Exp $
#
# Article: FreeBSD From Scratch
#
# Original revision: 1.6
#

DOC?= article

FORMATS?= html

MAINTAINER= schweikh@FreeBSD.org

INSTALL_COMPRESSED?= gz
INSTALL_ONLY_COMPRESSED?=

EXTRAS= 	stage_1.sh
EXTRAS+=	stage_1.conf.default
EXTRAS+=	stage_2.sh
EXTRAS+=	stage_2.conf.default
EXTRAS+=	stage_3.mk

CLEANFILES+= ${EXTRAS}

SRCS=	article.sgml
SRCS+= 	${EXTRAS}

${EXTRAS}:
	${CP} ${DOC_PREFIX}/en_US.ISO8859-1/articles/fbsd-from-scratch/${.TARGET} ${.OBJDIR}/

afterinstall:
.for entry in ${EXTRAS}
	${INSTALL_DOCS} ${.CURDIR}/${entry} ${DESTDIR}
.endfor

DOC_PREFIX?= ${.CURDIR}/../../..
.include "${DOC_PREFIX}/share/mk/doc.project.mk"
