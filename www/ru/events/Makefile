#
# The FreeBSD Russian Documentation Project
#
# $FreeBSD: www/ru/events/Makefile,v 1.5 2009/12/23 13:39:06 bland Exp $
# $FreeBSDru: frdp/www/ru/events/Makefile,v 1.3 2005/06/18 06:00:21 andy Exp $
#
# Original revision: 1.17
#

.if exists(../Makefile.conf)
.include "../Makefile.conf"
.endif
.if exists(../Makefile.inc)
.include "../Makefile.inc"
.endif

#SUBDIR=  2002
SUBDIR+= 2003

# The year the top level events.html file starts from:
YEARSTART= 2009
# Years to generate past events pages for and link from top level:
PASTYEARS= 2008 2007 2006 2005 2004 2003

DATA=	events.css
INDEXLINK=	events.html

XMLDOCS+=		events:../share/sgml/templates.events.xsl:${XML_EVENTS_EVENTS}:
PARAMS.events=		--param startyear ${YEARSTART}
PARAMS.events+=		--stringparam pastyears '${PASTYEARS}'
DEPENDSET.events=	events

.for year in ${PASTYEARS}
XMLDOCS+=		events${year}:${XSL_EVENTS_PAST}:${XML_EVENTS_EVENTS}:
PARAMS.events${year}=	--param year ${year}
PARAMS.events${year}+=	--stringparam pastyears '${PASTYEARS}'
DEPENDSET.events${year}= events${year}
.endfor

XMLDOCS+=		events_ics:${XSL_EVENTS_ICS}:${XML_EVENTS_EVENTS}:events.ics
DEPENDSET.events_ics=	events

XMLDOCS+=		events_rss:rss.xsl:${XML_EVENTS_EVENTS}:rss.xml

.include "${WEB_PREFIX}/share/mk/web.site.mk"
