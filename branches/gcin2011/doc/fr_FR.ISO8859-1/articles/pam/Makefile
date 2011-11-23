# $FreeBSD: doc/fr_FR.ISO8859-1/articles/pam/Makefile,v 1.1 2003/08/15 10:14:05 gioria Exp $

DOC?= article

FORMATS?= html

INSTALL_COMPRESSED?=gz
INSTALL_ONLY_COMPRESSED?=

WITH_ARTICLE_TOC?=YES
WITH_INLINE_LEGALNOTICE?=YES

SRCS= article.sgml pam_app.c pam_conv.c pam_module.c

CLEANFILES+= pam_app.c pam_conv.c pam_module.c

pam_app.c: su.c
	sed -e '/^[\/ ]\*/d' ${.ALLSRC} >${.TARGET}

pam_conv.c: converse.c
	sed -e '/^[\/ ]\*/d' ${.ALLSRC} >${.TARGET}

pam_module.c: pam_unix.c
	sed -e '/^[\/ ]\*/d' ${.ALLSRC} >${.TARGET}

DOC_PREFIX?= ${.CURDIR}/../../..

.include "${DOC_PREFIX}/share/mk/doc.project.mk"
