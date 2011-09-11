# $FreeBSD: www/Makefile,v 1.27 2009/08/13 06:43:07 remko Exp $

WEB_PREFIX=	${.CURDIR}

SUBDIR= da \
		de \
		el \
		en \
		es \
		fr \
		hu \
		it \
		ja \
		mn \
		nl \
		pt_BR \
		ru \
		tr \
		zh_CN \
		zh_TW 

links:

update:
.if defined(SUPHOST)
SUPFLAGS+=	-h ${SUPHOST}
.endif
update:
.if defined(SUP_UPDATE) && defined(WWWSUPFILE)
	@echo "--------------------------------------------------------------"
	@echo ">>> Running ${SUP}"
	@echo "--------------------------------------------------------------"
	@${SUP} ${SUPFLAGS} ${WWWSUPFILE}
.endif

.include <bsd.obj.mk>
