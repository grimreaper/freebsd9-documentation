# $FreeBSD: www/en/multimedia/Makefile,v 1.3 2008/06/12 19:02:27 remko Exp $

.if exists(../Makefile.conf)
.include "../Makefile.conf"
.endif
.if exists(../Makefile.inc)
.include "../Makefile.inc"
.endif
.if exists(Makefile.inc)
.include "Makefile.inc"
.endif

#all: build
all: build
	cd output && make all DIRPRFX=multimedia/output/

install:
	cd output && make install DIRPRFX=multimedia/output/

TEMPLATES=	multimedia.sgml.intro \
		multimedia.sgml.post \
		multimedia.sgml.pre \
		multimedia.html.intro \
		multimedia.html.post \
		multimedia.html.pre \
		multimedia-input.xml

clean:
	-${RM} output/*

build:
	(test -d output || ${MKDIR} output ) && \
	cd output && \
	${LN} -fs ../Makefile.output Makefile && \
	( for f in ${TEMPLATES}; do ${LN} -fs ../$$f $$f; done ) && \
	${PERL} -Tw ../multimedia.pl && \
	${RM} -f *.html

.include "${WEB_PREFIX}/share/mk/web.site.mk"
