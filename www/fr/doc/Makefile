#
# $FreeBSD: www/fr/doc/Makefile,v 1.2 2003/12/15 16:16:39 stephane Exp $
#
# Build the FreeBSD documentation *outside* of the www tree, and install it
# in to the right place as necessary.
#
# This assumes that you have the www/ and doc/ trees checked out beside
# one another -- this was always the case anyway, so there are no extra
# requirements here.
#

# The FreeBSD French Documentation Project
# Original revision: 1.8

# all: all-all all-install all-pgpkeyring
all: all-all all-install

all-all:
	@unset DESTDIR || true; \
	 cd ${.CURDIR}/../../../doc/fr_FR.ISO8859-1; \
		${MAKE} FORMATS="html-split html" \
			INSTALL_COMPRESSED= all
all-install:
	@unset DESTDIR || true; \
	 cd ${.CURDIR}/../../../doc/fr_FR.ISO8859-1; \
		${MAKE} FORMATS="html-split html" DOCDIR=${.OBJDIR} \
			INSTALL_COMPRESSED= install
all-pgpkeyring:
	@unset DESTDIR || true; \
	 cd ${.CURDIR}/../../../doc/fr_FR.ISO8859-1/books/handbook; \
		${MAKE} \
			pgpkeyring > ${.OBJDIR}/pgpkeyring.txt

install clean:
	@unset DESTDIR || true; \
	 cd ${.CURDIR}/../../../doc/fr_FR.ISO8859-1; \
		${MAKE} FORMATS="html-split html" DOCDIR=${DESTDIR}/data/doc \
			INSTALL_COMPRESSED= ${.TARGET}
# .if make(install)
# 	@unset DESTDIR || true; \
# 	 cd ${.CURDIR}/../../../doc/fr_FR.ISO8859-1/books/handbook; \
# 		${MAKE} \
# 			pgpkeyring > ${DESTDIR}/data/doc/pgpkeyring.txt
# .endif
.if make(clean)
#	${RM} -rf fr* handbook faq pgpkeyring.txt
	${RM} -rf fr*
.endif

.include "${.CURDIR}/../../share/mk/web.site.mk"

obj: _OBJUSE

_OBJUSE: .USE
	@unset DESTDIR || true; \
	 cd ${.CURDIR}/../../../doc/fr_FR.ISO8859-1; \
		${MAKE} ${.TARGET}
