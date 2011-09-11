#
#    The FreeBSD Documentation Project
#    The FreeBSD French Documentation Project
#
#    $FreeBSD: doc/fr_FR.ISO8859-1/articles/pxe/Makefile,v 1.2 2005/01/04 14:03:35 gioria Exp $
#    Original revision: 1.5
#    Article: FreeBSD PXE Jumpstart Guide
#
DOC?= article

FORMATS?= html

INSTALL_COMPRESSED?=gz
INSTALL_ONLY_COMPRESSED?=

EXTRAS=		dhcpd.conf
EXTRAS+=	install.cfg
EXTRAS+=	loader.rc
EXTRAS+=	pkgmaker.sh
EXTRAS+=	post
EXTRAS+=	pre

SRCS=   article.sgml

afterinstall:
.for entry in ${EXTRAS}
	${INSTALL_DOCS} ${.CURDIR}/${entry} ${DESTDIR}
.endfor


DOC_PREFIX?= ${.CURDIR}/../../..

.include "${DOC_PREFIX}/share/mk/doc.project.mk"
