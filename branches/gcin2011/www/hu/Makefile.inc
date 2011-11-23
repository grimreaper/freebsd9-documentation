# $FreeBSD: www/hu/Makefile.inc,v 1.2 2007/11/06 12:44:24 gabor Exp $

DATESUBST=	's/<!ENTITY date[ \t]*"$$Free[B]SD. .* \(.* .*\) .* .* $$">/<!ENTITY date	"Utols\&oacute\; m\&oacute\;dos\&iacute\;t\&aacute\;s: \1">/'

WEBBASE?=       /data/hu
WEB_PREFIX?=	${.CURDIR}/../..
