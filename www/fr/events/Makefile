# $FreeBSD: www/fr/events/Makefile,v 1.3 2006/08/19 21:23:35 hrs Exp $

# The FreeBSD French Documentation Project
# Original revision: 1.11

.if exists(../Makefile.conf)
.include "../Makefile.conf"
.endif
.if exists(../Makefile.inc)
.include "../Makefile.inc"
.endif

# SUBDIR= 2002 2003

DATA=   events.css

XMLDOCS+=		events:${XSL_EVENTS}:${XML_EVENTS_EVENTS}:
DEPENDSET.events=	events

XMLDOCS+=		events_ics:${XSL_EVENTS_ICS}:${XML_EVENTS_EVENTS}:events.ics
DEPENDSET.events_ics=	events

.include "${WEB_PREFIX}/share/mk/web.site.mk"
