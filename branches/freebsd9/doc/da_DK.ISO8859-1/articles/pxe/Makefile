# $FreeBSD: doc/da_DK.ISO8859-1/articles/pxe/Makefile,v 1.1 2003/12/31 12:46:32 blackend Exp $

DOC?= article

FORMATS?= html

INSTALL_COMPRESSED?=gz
INSTALL_ONLY_COMPRESSED?=

SRCS= article.sgml

DOC_PREFIX?= ${.CURDIR}/../../..

afterinstall:
	${INSTALL_DOCS} ${.CURDIR}/dhcpd.conf ${.CURDIR}/install.cfg \
	    ${.CURDIR}/loader.rc ${.CURDIR}/pkgmaker.sh \
	    ${.CURDIR}/post ${.CURDIR}/pre ${DESTDIR}

.include "${DOC_PREFIX}/share/mk/doc.project.mk"
