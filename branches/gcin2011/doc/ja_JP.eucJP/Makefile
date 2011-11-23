# $FreeBSD: doc/ja_JP.eucJP/Makefile,v 1.16 2005/10/07 05:29:52 hrs Exp $
#
# Original revision: 1.5
#

SUBDIR = articles
SUBDIR+= books

.if defined(WITH_JPMAN)
SUBDIR+= man
.endif

COMPAT_SYMLINK = ja

DOC_PREFIX?= ${.CURDIR}/..
.include "${DOC_PREFIX}/share/mk/doc.project.mk"
