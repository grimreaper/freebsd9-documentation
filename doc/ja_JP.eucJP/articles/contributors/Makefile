#
# $FreeBSD: doc/ja_JP.eucJP/articles/contributors/Makefile,v 1.11 2008/08/17 09:43:34 hrs Exp $
#
# Article: Contributors to FreeBSD
#
# Original revision: 1.10

DOC?= article

FORMATS?= html
WITH_ARTICLE_TOC?= YES

INSTALL_COMPRESSED?=gz
INSTALL_ONLY_COMPRESSED?=

ORGDIR=	${DOC_PREFIX}/en_US.ISO8859-1/articles/contributors

SRCS=	article.sgml
SRCS+=	${ORGDIR}/contrib.ent
SRCS+=	${ORGDIR}/contrib.386bsd.sgml
SRCS+=	${ORGDIR}/contrib.additional.sgml
SRCS+=	${ORGDIR}/contrib.committers.sgml
SRCS+=	${ORGDIR}/contrib.corealumni.sgml
SRCS+=	${ORGDIR}/contrib.develalumni.sgml

URL_RELPREFIX?=	../../../..
DOC_PREFIX?=	${.CURDIR}/../../..

.include "${DOC_PREFIX}/share/mk/doc.project.mk"
