#
# The FreeBSD Russian Documentation Project
# 
# $FreeBSD: doc/ru_RU.KOI8-R/articles/pam/Makefile,v 1.1 2004/01/01 20:48:02 andy Exp $
# $FreeBSDru: frdp/doc/ru_RU.KOI8-R/articles/pam/Makefile,v 1.3 2003/12/28 08:03:56 andy Exp $
#
# Original revision: 1.7
#

DOC?= article

FORMATS?= html

INSTALL_COMPRESSED?=gz
INSTALL_ONLY_COMPRESSED?=

WITH_ARTICLE_TOC?=YES
WITH_INLINE_LEGALNOTICE?=YES

SRCS= article.sgml pam_app.c pam_conv.c pam_module.c

CLEANFILES+= pam_app.c pam_conv.c pam_module.c

DOC_PREFIX?= ${.CURDIR}/../../..

pam_app.c: ${DOC_PREFIX}/en_US.ISO8859-1/articles/pam/su.c
	sed -e '/^[\/ ]\*/d' ${.ALLSRC} >${.TARGET}

pam_conv.c: ${DOC_PREFIX}/en_US.ISO8859-1/articles/pam/converse.c
	sed -e '/^[\/ ]\*/d' ${.ALLSRC} >${.TARGET}

pam_module.c: ${DOC_PREFIX}/en_US.ISO8859-1/articles/pam/pam_unix.c
	sed -e '/^[\/ ]\*/d' ${.ALLSRC} >${.TARGET}

.include "${DOC_PREFIX}/share/mk/doc.project.mk"
