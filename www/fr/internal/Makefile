# $FreeBSD: www/fr/internal/Makefile,v 1.1 2003/12/15 16:05:02 stephane Exp $

# The FreeBSD French Documentation Project
# Original revision: 1.38

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
# DOCS+=	trb-dispute.sgml
# DOCS+=	doceng.sgml
# DOCS+=	rtp.sgml

INDEXLINK=	internal.html

# build the list of personal homepages of FreeBSD developers only 
# on the main FreeBSD machines
hostname!= hostname
.if ${hostname} == "hub.freebsd.org" || ${hostname} == "freefall.freebsd.org" || ${hostname} == "www.freebsd.org"
DOCS+=	homepage.sgml
.PHONY: homepage.inc

homepage.inc: homepage.pl
	${PERL} ${.CURDIR}/homepage.pl > ${.TARGET}

homepage.html:  homepage.inc
CLEANFILES+=	homepage.inc
.endif

# DATA+=	README.mirror ssh-keys.asc

.include "${WEB_PREFIX}/share/mk/web.site.mk"
