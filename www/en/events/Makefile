# $FreeBSD: www/en/events/Makefile,v 1.19 2011/01/22 14:49:45 ryusuke Exp $

.if exists(../Makefile.conf)
.include "../Makefile.conf"
.endif
.if exists(../Makefile.inc)
.include "../Makefile.inc"
.endif

SUBDIR=  2002
SUBDIR+= 2003

# The year the top level events.html file starts from:
YEARSTART= 2010
# Years to generate past events pages for and link from top level:
PASTYEARS= 2009 2008 2007 2006 2005 2004 2003

DATA=	events.css
INDEXLINK=	events.html

XMLDOCS+=		events:${XSL_EVENTS}:${XML_EVENTS_EVENTS}:
PARAMS.events=		--param startyear ${YEARSTART}
PARAMS.events+=		--stringparam pastyears '${PASTYEARS}'
DEPENDSET.events=	events

.for year in ${PASTYEARS}
XMLDOCS+=		events${year}:${XSL_EVENTS_PAST}:${XML_EVENTS_EVENTS}:
PARAMS.events${year}=	--param year ${year}
PARAMS.events${year}+=	--stringparam pastyears '${PASTYEARS}'
DEPENDSET.events${year}= events
.endfor

XMLDOCS+=		events_ics:${XSL_EVENTS_ICS}:${XML_EVENTS_EVENTS}:events.ics
DEPENDSET.events_ics=	events

XMLDOCS+=		events_rss:rss.xsl:${XML_EVENTS_EVENTS}:rss.xml

.include "${WEB_PREFIX}/share/mk/web.site.mk"
