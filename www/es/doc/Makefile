#
# $FreeBSD: www/es/doc/Makefile,v 1.3 2002/11/25 17:18:58 keramida Exp $
#
# Build the FreeBSD documentation *outside* of the www tree, and install it
# in to the right place as necessary.
#
# This assumes that you have the www/ and doc/ trees checked out beside
# one another -- this was always the case anyway, so there are no extra
# requirements here.
#

all: all-all all-install

all-all:
	@unset DESTDIR || true; \
	cd ${.CURDIR}/../../../doc/es_ES.ISO8859-1; \
		${MAKE} FORMATS="html-split html" \
			INSTALL_COMPRESSED= all

all-install:
	@unset DESTDIR || true; \
	 cd ${.CURDIR}/../../../doc/es_ES.ISO8859-1; \
		${MAKE} FORMATS="html-split html" DOCDIR=${.OBJDIR} \
			INSTALL_COMPRESSED= install

install clean:
	@unset DESTDIR || true; \
	 cd ${.CURDIR}/../../../doc/es_ES.ISO8859-1; \
		${MAKE} FORMATS="html-split html" DOCDIR=${DESTDIR}/data/doc \
			INSTALL_COMPRESSED= ${.TARGET}

.if make(clean)
	${RM} -rf es*
.endif

.include "${.CURDIR}/../../share/mk/web.site.mk"

obj: _OBJUSE

_OBJUSE: .USE
	@unset DESTDIR || true; \
	 cd ${.CURDIR}/../../../doc/es_ES.ISO8859-1; \
		${MAKE} ${.TARGET}
