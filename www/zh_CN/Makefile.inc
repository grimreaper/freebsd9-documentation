# The FreeBSD Simplified Chinese Documentation Project
# Original revision: 1.8
# $FreeBSD: www/zh_CN/Makefile.inc,v 1.2 2006/07/11 15:27:47 delphij Exp $

WEBBASE?=	/data/zh_CN
WEB_PREFIX?=	${.CURDIR}/../..
DATESUBST?=	's/<!ENTITY date[ \t]*"$$Free[B]SD. .* \(.* .*\) .* .* $$">/<!ENTITY date	"上次更新： \1">/'
