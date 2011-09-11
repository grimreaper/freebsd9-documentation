#
# The FreeBSD Documentation Project
# The FreeBSD French Documentation Project
#
# $FreeBSD: doc/fr_FR.ISO8859-1/articles/contributing/Makefile,v 1.1 2002/07/10 15:06:08 blackend Exp $
# $Id: Makefile,v 1.1 2002/07/10 13:34:37 marc Exp $
# Original revision: 1.1

DOC?= article

FORMATS?= html

INSTALL_COMPRESSED?=gz
INSTALL_ONLY_COMPRESSED?=

JADEFLAGS+=	-V %generate-article-toc%

SRCS= article.sgml

DOC_PREFIX?= ${.CURDIR}/../../..

.include "${DOC_PREFIX}/share/mk/doc.project.mk"
