#
# Web site build hooks for the release notes.  Also see the README file.
#
# The variable RELNOTES (I couldn't think of a better name) is a poor
# man's list.  Its semantics are very similar to that of MLINKS (see
# bsd.man.mk).  The first word is the directory under which that set
# of relnotes should appear on the web site.  The second word is the
# path to that relnotes set.
#
# $FreeBSD: www/de/relnotes/Makefile,v 1.3 2003/01/20 18:48:23 ue Exp $
# $FreeBSDde: de-www/relnotes/Makefile,v 1.4 2003/01/20 18:56:27 ue Exp $
# basiert auf: 1.5
#

RELNOTES?=	CURRENT ${.CURDIR}/../../../relnotes/doc/de_DE.ISO8859-1 \
		4-STABLE ${.CURDIR}/../../../relnotes4/doc/de_DE.ISO8859-1

all install clean obj:
	@set ${RELNOTES}; \
	while :; do \
		case $$# in \
			0) break;; \
			1) ${ECHO_CMD} "bad \$$RELNOTES value"; false; break;; \
		esac; \
		webname=$$1; shift; realpath=$$1; shift; \
		(unset DESTDIR || true; \
			cd $$realpath && ${MAKE} \
				FORMATS=html \
				DOCDIR=${DESTDIR}/data/de/${.CURDIR:T}/$$webname \
				DOC_PREFIX=${.CURDIR}/../../../doc \
				DIRPRFX=${.CURDIR:T}/$$webname/ \
				NO_LANGCODE_IN_DESTDIR=true \
				${.TARGET}); \
	done;
