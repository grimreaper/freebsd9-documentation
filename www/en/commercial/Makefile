# $FreeBSD: www/en/commercial/Makefile,v 1.18 2006/08/19 21:20:31 hrs Exp $

.if exists(../Makefile.conf)
.include "../Makefile.conf"
.endif
.if exists(../Makefile.inc)
.include "../Makefile.inc"
.endif

DOCS=		commercial.sgml
INDEXLINK=	commercial.html

XSLT.DEFAULT=		${XSL_ENTRIES}
DEPENDSET.DEFAULT=	commercial

XMLDOCS=	consult::${XML_COMMERCIAL_CONSULT}:
PARAMS.consult=	--param pagename "'Consulting Services'" \
		--param basename "'consult.html'"

XMLDOCS+=	consult_bycat::${XML_COMMERCIAL_CONSULT}:
PARAMS.consult_bycat=\
		--param pagename "'Consulting Services'" \
		--param basename "'consult.html'" \
		--param sort "'bycat'"

XMLDOCS+=	hardware::${XML_COMMERCIAL_HARDWARE}:
PARAMS.hardware= --param pagename "'Hardware Vendors'"

XMLDOCS+=	isp::${XML_COMMERCIAL_ISP}:
PARAMS.isp=	--param pagename "'Internet Service Providers'"

XMLDOCS+=	misc::${XML_COMMERCIAL_MISC}:
PARAMS.misc=	--param pagename "'Miscellaneous Vendors'"

XMLDOCS+=	software::${XML_COMMERCIAL_SOFTWARE}:
PARAMS.software=--param pagename "'Software Vendors'"

XMLDOCS+=	software_bycat::${XML_COMMERCIAL_SOFTWARE}:
PARAMS.software_bycat=\
		--param pagename "'Software Vendors'" \
		--param basename "'software.html'" \
		--param sort "'bycat'"

.include "${WEB_PREFIX}/share/mk/web.site.mk"
