# $FreeBSD: www/ja/ports/Makefile,v 1.33 2011/06/26 00:43:28 ryusuke Exp $
# The FreeBSD Japanese Documentation Project
# Original revision: 1.50

.if exists(../Makefile.conf)
.include "../Makefile.conf"
.endif
.if exists(../Makefile.inc)
.include "../Makefile.inc"
.endif
.if exists(../../en/ports/Makefile.inc)
.include "../../en/ports/Makefile.inc"
.endif

FETCH_OPT?=	-am

.if defined(PINDEX_OVERRIDE)
${INDEX}: ${PINDEX_OVERRIDE}
	${CP} ${PINDEX_OVERRIDE} ${INDEX}
.elif defined(NOPORTSNET)
${INDEX}: $${PORTSBASE}/${PINDEX}
	${CP} ${PORTSBASE}/${PINDEX} ${INDEX}
.else
${INDEX}:
	${FETCH} ${FETCH_OPT} -o ${INDEX}.bz2 ${INDEXURI}.bz2
	${BUNZIP2} ${INDEX}.bz2
.endif

HOSTNAME!= hostname
.if ${HOSTNAME} == "hub.freebsd.org" || ${HOSTNAME} == "freefall.freebsd.org" || ${HOSTNAME} == "www.freebsd.org"
CLUSTER_MACHINE=	YES
.endif

# Build the list of available packages, but only on the main FreeBSD machines.
# Don't build the list if NO_PACKAGES_LINK is set and not empty.
#
packages.exists:
.if defined(CLUSTER_MACHINE) && (!defined(NO_PACKAGES_LINK) || empty(NO_PACKAGES_LINK))
.if  exists(${.CURDIR}/../../en/ports/packages.exists)
	cp ${.CURDIR}/../../en/ports/${.TARGET} .
.else
	@if ${SH} ${.CURDIR}/../../en/ports/packages > ${.TARGET}.temp; then \
		${MV} ${.TARGET}.temp ${.TARGET}; \
	else \
		${RM} ${.TARGET}.temp; ${TOUCH} ${.TARGET}; \
	fi;
.endif
.else
	${TOUCH} ${.TARGET}
.endif

Makefile.gen: categories-alpha.sgml categories-grouped.sgml index.sgml \
	installing.sgml master-index.sgml references.sgml searching.sgml \
	statistics.ent updating.sgml .NOTMAIN
	(	${ECHO_CMD} TIDY=${PERL};\
		${ECHO_CMD} TIDYOPTS="-i'' -npe 's,\"-//FreeBSD//DTD HTML 4.01 Transitional-Based Extension//EN\",\"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\",'";\
		${ECHO_CMD} DOCS= *.sgml;\
		${ECHO_CMD} -n "DYNAMIC_DOCS= ";\
		${ECHO_CMD} -n " categories-alpha.sgml";\
		${ECHO_CMD} -n " categories-grouped.sgml";\
		${ECHO_CMD} -n " master-index.sgml";\
		${ECHO_CMD} -n " statistics.ent";\
	) > Makefile.gen
	for categoryfile in ${CATEGORYLIST}; do \
		${ECHO_CMD} -n " $$categoryfile.sgml" >> Makefile.gen; \
	done
	${ECHO_CMD} >> Makefile.gen
.if defined(NO_TIDY)
	${ECHO_CMD} NO_TIDY=${NO_TIDY} >> Makefile.gen
.endif

.if defined(CLUSTER_MACHINE)
PORTS_TARGZ_URL?= ftp://ftp-master.FreeBSD.org/pub/FreeBSD/ports/ports/ports.tar.gz
.else
PORTS_TARGZ_URL?= ftp://ftp.FreeBSD.org/pub/FreeBSD/ports/ports/ports.tar.gz
.endif

ports.size:
.if defined (NOPORTSNET)
	touch ${.TARGET}
.else
	${RM} -f ${.TARGET}
	${FETCH} -s ${PORTS_TARGZ_URL} > ${.TARGET}
.endif

# this builds: categories-alpha.sgml, categories-grouped.sgml,
# master-index.sgml, statistics.ent, <category>.sgml
CATEGORYLIST=`grep "^[a-z]" ../../en/ports/categories | sed -e s"/,.*//"`
categories-alpha.sgml: ${INDEX} categories categories.descriptions \
	packages.exists portindex ports.ent ports.size .NOTMAIN
	${RM} -f categories-alpha.sgml categories-grouped.sgml \
		master-index.sgml statistics.ent
	for categoryfile in ${CATEGORYLIST}; do \
		rm -f "$$categoryfile.sgml"; \
	done
	${PORTINDEX} ${INDEX} ${.CURDIR}

install: all beforeinstall

all install clean:
	cd ${.CURDIR}; \
		${MAKE} ${MAKEFLAGS} -f ${.CURDIR}/Makefile.inc0 ${.TARGET}
.if defined(WITH_PORTS_GROWTH)
# Because We refer www/ports/growth/status.png on web site from ports.inc,
# don't need to have local version of the image file.
#	cd growth; \
#		${MAKE} ${MAKEFLAGS} ${.TARGET}
beforeinstall:
.else
beforeinstall:
	${SED} -i "" -e 's,HREF="growth,href="http://www.FreeBSD.org/ports/growth,' index.html
	${SED} -i "" -e 's,HREF="growth,href="http://www.FreeBSD.org/ports/growth,' references.html
.endif

.include "${WEB_PREFIX}/share/mk/web.site.mk"
