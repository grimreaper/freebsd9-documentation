#
# The FreeBSD Russian Documentation Project
#
# $FreeBSD: www/ru/internal/Makefile,v 1.15 2006/02/10 13:15:25 marck Exp $
# $FreeBSDru: frdp/www/ru/internal/Makefile,v 1.11 2006/02/10 12:57:39 marck Exp $
#
# Original revision: 1.44
#

.if exists(../Makefile.conf)
.include "../Makefile.conf"
.endif
.if exists(../Makefile.inc)
.include "../Makefile.inc"
.endif

DOCS=	photos.sgml	
DOCS+=	internal.sgml	
DOCS+= 	about.sgml
DOCS+= 	machines.sgml
DOCS+= 	mirror.sgml
DOCS+=	new-account.sgml
DOCS+=	statistic.sgml
DOCS+= 	developer.sgml
DOCS+=	bylaws.sgml
DOCS+=  releng.sgml
DOCS+=	expire-bits.sgml
DOCS+=	core-vote.sgml
DOCS+=	doceng.sgml
DOCS+=	rtp.sgml
DOCS+=	policies.sgml
DOCS+=	fortunes.sgml

INDEXLINK=	internal.html

# build the list of personal homepages of FreeBSD developers only 
# on the main FreeBSD machines
hostname!= hostname
.if ${hostname} == "hub.freebsd.org" || ${hostname} == "freefall.freebsd.org" || ${hostname} == "www.freebsd.org"
DOCS+=	homepage.sgml

.if !make(install)
.PHONY: homepage.inc
.endif
homepage.inc: ${WEB_PREFIX}/en/internal/homepage.pl
	${PERL} ${WEB_PREFIX}/en/internal/homepage.pl > ${.TARGET}

homepage.html:  homepage.inc
CLEANFILES+=	homepage.inc
.endif

DATA+=	README.mirror

.include "${WEB_PREFIX}/share/mk/web.site.mk"
