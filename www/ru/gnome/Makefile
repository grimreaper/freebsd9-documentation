# The FreeBSD Russian Documentation Project
#
# $FreeBSD: www/ru/gnome/Makefile,v 1.1 2003/10/25 15:25:01 andy Exp $
# $FreeBSDru: frdp/www/ru/gnome/Makefile,v 1.2 2003/10/25 15:33:19 andy Exp $
#
# Original revision: 1.13

.if exists(../Makefile.conf)
.include "../Makefile.conf"
.endif
.if exists(../Makefile.inc)
.include "../Makefile.inc"
.endif

SUBDIR=		docs
#SUBDIR+=	images

DOCS=	screenshots.sgml
DOCS+=	contact.sgml

DATA=	index.html newsflash.html news.rdf

CLEANFILES=	index.html
CLEANFILES+=	newsflash.html
CLEANFILES+=	news.rdf

index.html! index.xsl news.xml includes.xsl ../includes.xsl
	${XSLTPROC} ${XSLTPROCOPTS:N-nonet} -o index.html \
		${.CURDIR}/index.xsl ${.CURDIR}/news.xml
.if !defined(NO_TIDY)
	-${TIDY} ${TIDYOPTS} index.html
.endif

news.rdf: rss.xsl news.xml includes.xsl ../includes.xsl
	${XSLTPROC} ${XSLTPROCOPTS} -o news.rdf \
		${.CURDIR}/rss.xsl ${.CURDIR}/news.xml
.if !defined(NO_TIDY)
	-${TIDY} -xml -wrap 0 ${TIDYOPTS} news.rdf
.endif

newsflash.html: newsflash.xsl news.xml includes.xsl ../includes.xsl
	${XSLTPROC} ${XSLTPROCOPTS} -o ${.TARGET} \
		${.CURDIR}/newsflash.xsl ${.CURDIR}/news.xml
.if !defined(NO_TIDY)
	-${TIDY} ${TIDYOPTS} ${.TARGET}
.endif

.include "${WEB_PREFIX}/share/mk/web.site.mk"
