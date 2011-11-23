# $FreeBSD: www/es/Makefile.inc,v 1.4 2008/02/16 11:16:45 gabor Exp $

DATESUBST=	's/<!ENTITY date[ \t]*"$$Free[B]SD. .* \(.* .*\) .* .* $$">/<!ENTITY date	"\&Uacute\;ltima modificaci\&oacute\;n: \1">/'

WEBBASE?=	/data/es
WEB_PREFIX?=    ${.CURDIR}/../..                                                
