# 
# $FreeBSD: doc/el_GR.ISO8859-7/books/faq/Makefile,v 1.1 2008/01/20 23:04:17 keramida Exp $
#
# ����������� ��� FreeBSD FAQ
#
# %SOURCE%	en_US.ISO8859-1/books/faq/Makefile
# %SRCID%	1.12
#

MAINTAINER=doc@FreeBSD.org

DOC?= book

FORMATS?= html-split html

INSTALL_COMPRESSED?= gz
INSTALL_ONLY_COMPRESSED?=

WITH_BIBLIOXREF_TITLE?=YES

# 
# � ����� SRCS �������� ��� �� SGML ������ ��� ��������� ���� ��� ��������. 
# ������� �� ����������� ��� ���� �� ������ ��������� rebuild.
#

# SGML content
SRCS=  book.sgml

URL_RELPREFIX?=	../../../..
DOC_PREFIX?=	${.CURDIR}/../../..

.include "${DOC_PREFIX}/share/mk/doc.project.mk"
