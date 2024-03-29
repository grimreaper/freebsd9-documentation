#
# $FreeBSD: doc/nl_NL.ISO8859-1/books/handbook/Makefile,v 1.17 2011/11/04 21:04:42 rene Exp $
#
# %SOURCE%	en_US.ISO8859-1/books/handbook/Makefile
# %SRCID%	1.118
#
# Bouw het Nederlandse FreeBSD Handboek.
#

# ------------------------------------------------------------------------
#
# Handboekspecifieke variabelen
#
#	WITH_PGPKEYS	De gedrukte verie van het handboek geeft standaard
#			alleen PGP vingerafdrukken weer.  Als het gewenst
#			is dat de complete sleutel wordt weergegeven dan
#			dient deze variabele insteld te worden.  De optie
#			heeft geen invloed op de HTML formaten.
#
# Handboekspecifieke doelen
#
#       pgpkeyring      Dit doel leest de inhoud van pgpkeys/chapter.sgml
#			en schrijft dan alle PGP sleutels naar stdout.
#			De uitvoer kan omgeleid worden naar een bestand
#			en verspreid worden als een publieke sleutelring
#			van FreeBSD ontwikkelaars die eenvoudig in
#			PGP/GPG ingelezen kan worden.
#
# ------------------------------------------------------------------------
# Om een nieuw hoofdstuk aan het Handboek toe te voegen:
#
# - Werk deze Makefile, chapters.ent en book.sgml bij
# - Voeg een beschrijving voor het nieuwe hoofdstuk toe aan preface/preface.sgml
#
# ------------------------------------------------------------------------

.PATH: ${.CURDIR}/../../share/sgml/glossary

MAINTAINER=	remko@FreeBSD.org

DOC?= book

FORMATS?= html-split

HAS_INDEX= true
USE_PS2PDF=	yes

INSTALL_COMPRESSED?= gz
INSTALL_ONLY_COMPRESSED?=

IMAGES_EN = advanced-networking/isdn-bus.eps
IMAGES_EN+= advanced-networking/isdn-twisted-pair.eps
IMAGES_EN+= advanced-networking/natd.eps
IMAGES_EN+= advanced-networking/net-routing.pic
IMAGES_EN+= advanced-networking/static-routes.pic
IMAGES_EN+= bsdinstall/bsdinstall-adduser1.png
IMAGES_EN+= bsdinstall/bsdinstall-adduser2.png
IMAGES_EN+= bsdinstall/bsdinstall-adduser3.png
IMAGES_EN+= bsdinstall/bsdinstall-boot-loader-menu.png
IMAGES_EN+= bsdinstall/bsdinstall-choose-mode.png
IMAGES_EN+= bsdinstall/bsdinstall-config-components.png
IMAGES_EN+= bsdinstall/bsdinstall-config-hostname.png
IMAGES_EN+= bsdinstall/bsdinstall-config-keymap.png
IMAGES_EN+= bsdinstall/bsdinstall-config-services.png
IMAGES_EN+= bsdinstall/bsdinstall-configure-network-interface-ipv4-dhcp.png
IMAGES_EN+= bsdinstall/bsdinstall-configure-network-interface-ipv4.png
IMAGES_EN+= bsdinstall/bsdinstall-configure-network-interface-ipv4-static.png
IMAGES_EN+= bsdinstall/bsdinstall-configure-network-interface-ipv6.png
IMAGES_EN+= bsdinstall/bsdinstall-configure-network-interface-ipv6-static.png
IMAGES_EN+= bsdinstall/bsdinstall-configure-network-interface-slaac.png
IMAGES_EN+= bsdinstall/bsdinstall-configure-network-interface.png
IMAGES_EN+= bsdinstall/bsdinstall-configure-network-ipv4-dns.png
IMAGES_EN+= bsdinstall/bsdinstall-configure-wireless-accesspoints.png
IMAGES_EN+= bsdinstall/bsdinstall-configure-wireless-scan.png
IMAGES_EN+= bsdinstall/bsdinstall-configure-wireless-wpa2setup.png
IMAGES_EN+= bsdinstall/bsdinstall-distfile-extracting.png
IMAGES_EN+= bsdinstall/bsdinstall-distfile-fetching.png
IMAGES_EN+= bsdinstall/bsdinstall-distfile-verifying.png
IMAGES_EN+= bsdinstall/bsdinstall-final-confirmation.png
IMAGES_EN+= bsdinstall/bsdinstall-finalconfiguration.png
IMAGES_EN+= bsdinstall/bsdinstall-keymap-select-default.png
IMAGES_EN+= bsdinstall/bsdinstall-mainexit.png
IMAGES_EN+= bsdinstall/bsdinstall-netinstall-files.png
IMAGES_EN+= bsdinstall/bsdinstall-netinstall-mirrorselect.png
IMAGES_EN+= bsdinstall/bsdinstall-part-entire-part.png
IMAGES_EN+= bsdinstall/bsdinstall-part-guided-disk.png
IMAGES_EN+= bsdinstall/bsdinstall-part-guided-manual.png
IMAGES_EN+= bsdinstall/bsdinstall-part-manual-addpart.png
IMAGES_EN+= bsdinstall/bsdinstall-part-manual-create.png
IMAGES_EN+= bsdinstall/bsdinstall-part-manual-partscheme.png
IMAGES_EN+= bsdinstall/bsdinstall-part-review.png
IMAGES_EN+= bsdinstall/bsdinstall-post-root-passwd.png
IMAGES_EN+= bsdinstall/bsdinstall-set-clock-local-utc.png
IMAGES_EN+= bsdinstall/bsdinstall-timezone-confirm.png
IMAGES_EN+= bsdinstall/bsdinstall-timezone-country.png
IMAGES_EN+= bsdinstall/bsdinstall-timezone-region.png
IMAGES_EN+= bsdinstall/bsdinstall-timezone-zone.png
IMAGES_EN+= geom/striping.pic
IMAGES_EN+= install/adduser1.scr
IMAGES_EN+= install/adduser2.scr
IMAGES_EN+= install/adduser3.scr
IMAGES_EN+= install/boot-loader-menu.scr
IMAGES_EN+= install/boot-mgr.scr
IMAGES_EN+= install/config-country.scr
IMAGES_EN+= install/config-keymap.scr
IMAGES_EN+= install/console-saver1.scr
IMAGES_EN+= install/console-saver2.scr
IMAGES_EN+= install/console-saver3.scr
IMAGES_EN+= install/console-saver4.scr
IMAGES_EN+= install/disklabel-auto.scr
IMAGES_EN+= install/disklabel-ed1.scr
IMAGES_EN+= install/disklabel-ed2.scr
IMAGES_EN+= install/disklabel-fs.scr
IMAGES_EN+= install/disklabel-root1.scr
IMAGES_EN+= install/disklabel-root2.scr
IMAGES_EN+= install/disklabel-root3.scr
IMAGES_EN+= install/disk-layout.eps
IMAGES_EN+= install/dist-set.scr
IMAGES_EN+= install/dist-set2.scr
IMAGES_EN+= install/docmenu1.scr
IMAGES_EN+= install/ed0-conf.scr
IMAGES_EN+= install/ed0-conf2.scr
IMAGES_EN+= install/edit-inetd-conf.scr
IMAGES_EN+= install/fdisk-drive1.scr
IMAGES_EN+= install/fdisk-drive2.scr
IMAGES_EN+= install/fdisk-edit1.scr
IMAGES_EN+= install/fdisk-edit2.scr
IMAGES_EN+= install/ftp-anon1.scr
IMAGES_EN+= install/ftp-anon2.scr
IMAGES_EN+= install/hdwrconf.scr
IMAGES_EN+= install/keymap.scr
IMAGES_EN+= install/main1.scr
IMAGES_EN+= install/mainexit.scr
IMAGES_EN+= install/main-std.scr
IMAGES_EN+= install/main-options.scr
IMAGES_EN+= install/main-doc.scr
IMAGES_EN+= install/main-keymap.scr
IMAGES_EN+= install/media.scr
IMAGES_EN+= install/mouse1.scr
IMAGES_EN+= install/mouse2.scr
IMAGES_EN+= install/mouse3.scr
IMAGES_EN+= install/mouse4.scr
IMAGES_EN+= install/mouse5.scr
IMAGES_EN+= install/mouse6.scr
IMAGES_EN+= install/mta-main.scr
IMAGES_EN+= install/net-config-menu1.scr
IMAGES_EN+= install/net-config-menu2.scr
IMAGES_EN+= install/nfs-server-edit.scr
IMAGES_EN+= install/ntp-config.scr
IMAGES_EN+= install/options.scr
IMAGES_EN+= install/pkg-cat.scr
IMAGES_EN+= install/pkg-confirm.scr
IMAGES_EN+= install/pkg-install.scr
IMAGES_EN+= install/pkg-sel.scr
IMAGES_EN+= install/probstart.scr
IMAGES_EN+= install/routed.scr
IMAGES_EN+= install/security.scr
IMAGES_EN+= install/sysinstall-exit.scr
IMAGES_EN+= install/timezone1.scr
IMAGES_EN+= install/timezone2.scr
IMAGES_EN+= install/timezone3.scr
IMAGES_EN+= install/userconfig.scr
IMAGES_EN+= install/userconfig2.scr
IMAGES_EN+= mail/mutt1.scr
IMAGES_EN+= mail/mutt2.scr
IMAGES_EN+= mail/mutt3.scr
IMAGES_EN+= mail/pine1.scr
IMAGES_EN+= mail/pine2.scr
IMAGES_EN+= mail/pine3.scr
IMAGES_EN+= mail/pine4.scr
IMAGES_EN+= mail/pine5.scr

IMAGES_EN+= install/example-dir1.eps
IMAGES_EN+= install/example-dir2.eps
IMAGES_EN+= install/example-dir3.eps
IMAGES_EN+= install/example-dir4.eps
IMAGES_EN+= install/example-dir5.eps
IMAGES_EN+= security/ipsec-network.pic
IMAGES_EN+= security/ipsec-crypt-pkt.pic
IMAGES_EN+= security/ipsec-encap-pkt.pic
IMAGES_EN+= security/ipsec-out-pkt.pic
IMAGES_EN+= vinum/vinum-concat.pic
IMAGES_EN+= vinum/vinum-mirrored-vol.pic
IMAGES_EN+= vinum/vinum-raid10-vol.pic
IMAGES_EN+= vinum/vinum-raid5-org.pic
IMAGES_EN+= vinum/vinum-simple-vol.pic
IMAGES_EN+= vinum/vinum-striped-vol.pic
IMAGES_EN+= vinum/vinum-striped.pic
IMAGES_EN+= virtualization/parallels-freebsd1.png
IMAGES_EN+= virtualization/parallels-freebsd2.png
IMAGES_EN+= virtualization/parallels-freebsd3.png
IMAGES_EN+= virtualization/parallels-freebsd4.png
IMAGES_EN+= virtualization/parallels-freebsd5.png
IMAGES_EN+= virtualization/parallels-freebsd6.png
IMAGES_EN+= virtualization/parallels-freebsd7.png
IMAGES_EN+= virtualization/parallels-freebsd8.png
IMAGES_EN+= virtualization/parallels-freebsd9.png
IMAGES_EN+= virtualization/parallels-freebsd10.png
IMAGES_EN+= virtualization/parallels-freebsd11.png
IMAGES_EN+= virtualization/parallels-freebsd12.png
IMAGES_EN+= virtualization/parallels-freebsd13.png
IMAGES_EN+= virtualization/virtualpc-freebsd1.png
IMAGES_EN+= virtualization/virtualpc-freebsd2.png
IMAGES_EN+= virtualization/virtualpc-freebsd3.png
IMAGES_EN+= virtualization/virtualpc-freebsd4.png
IMAGES_EN+= virtualization/virtualpc-freebsd5.png
IMAGES_EN+= virtualization/virtualpc-freebsd6.png
IMAGES_EN+= virtualization/virtualpc-freebsd7.png
IMAGES_EN+= virtualization/virtualpc-freebsd8.png
IMAGES_EN+= virtualization/virtualpc-freebsd9.png
IMAGES_EN+= virtualization/virtualpc-freebsd10.png
IMAGES_EN+= virtualization/virtualpc-freebsd11.png
IMAGES_EN+= virtualization/virtualpc-freebsd12.png
IMAGES_EN+= virtualization/virtualpc-freebsd13.png
IMAGES_EN+= virtualization/vmware-freebsd01.png
IMAGES_EN+= virtualization/vmware-freebsd02.png
IMAGES_EN+= virtualization/vmware-freebsd03.png
IMAGES_EN+= virtualization/vmware-freebsd04.png
IMAGES_EN+= virtualization/vmware-freebsd05.png
IMAGES_EN+= virtualization/vmware-freebsd06.png
IMAGES_EN+= virtualization/vmware-freebsd07.png
IMAGES_EN+= virtualization/vmware-freebsd08.png
IMAGES_EN+= virtualization/vmware-freebsd09.png
IMAGES_EN+= virtualization/vmware-freebsd10.png
IMAGES_EN+= virtualization/vmware-freebsd11.png
IMAGES_EN+= virtualization/vmware-freebsd12.png

# Images from the cross-document image library
IMAGES_LIB=  callouts/1.png
IMAGES_LIB+= callouts/2.png
IMAGES_LIB+= callouts/3.png
IMAGES_LIB+= callouts/4.png
IMAGES_LIB+= callouts/5.png
IMAGES_LIB+= callouts/6.png
IMAGES_LIB+= callouts/7.png
IMAGES_LIB+= callouts/8.png
IMAGES_LIB+= callouts/9.png
IMAGES_LIB+= callouts/10.png
IMAGES_LIB+= callouts/11.png
IMAGES_LIB+= callouts/12.png
IMAGES_LIB+= callouts/13.png
IMAGES_LIB+= callouts/14.png
IMAGES_LIB+= callouts/15.png

#
# SRCS lists the individual SGML files that make up the document. Changes
# to any of these files will force a rebuild
#

# SGML content
SRCS+= audit/chapter.sgml
SRCS+= book.sgml
SRCS+= bsdinstall/chapter.sgml
SRCS+= colophon.sgml
SRCS+= dtrace/chapter.sgml
SRCS+= freebsd-glossary.sgml
SRCS+= advanced-networking/chapter.sgml
SRCS+= basics/chapter.sgml
SRCS+= bibliography/chapter.sgml
SRCS+= boot/chapter.sgml
SRCS+= config/chapter.sgml
SRCS+= cutting-edge/chapter.sgml
SRCS+= desktop/chapter.sgml
SRCS+= disks/chapter.sgml
SRCS+= eresources/chapter.sgml
SRCS+= firewalls/chapter.sgml
SRCS+= filesystems/chapter.sgml
SRCS+= geom/chapter.sgml
SRCS+= install/chapter.sgml
SRCS+= introduction/chapter.sgml
SRCS+= jails/chapter.sgml
SRCS+= kernelconfig/chapter.sgml
SRCS+= l10n/chapter.sgml
SRCS+= linuxemu/chapter.sgml
SRCS+= mac/chapter.sgml
SRCS+= mail/chapter.sgml
SRCS+= mirrors/chapter.sgml
SRCS+= multimedia/chapter.sgml
SRCS+= network-servers/chapter.sgml
SRCS+= pgpkeys/chapter.sgml
SRCS+= ports/chapter.sgml
SRCS+= ppp-and-slip/chapter.sgml
SRCS+= preface/preface.sgml
SRCS+= printing/chapter.sgml
SRCS+= security/chapter.sgml
SRCS+= serialcomms/chapter.sgml
SRCS+= users/chapter.sgml
SRCS+= vinum/chapter.sgml
SRCS+= virtualization/chapter.sgml
SRCS+= x11/chapter.sgml

# Entities
SRCS+= chapters.ent

SYMLINKS=	${DESTDIR} index.html handbook.html

# Turn on all the chapters.
CHAPTERS?= ${SRCS:M*chapter.sgml}

SGMLFLAGS+= ${CHAPTERS:S/\/chapter.sgml//:S/^/-i chap./}
SGMLFLAGS+= -i chap.freebsd-glossary

pgpkeyring: pgpkeys/chapter.sgml
	@${JADE} -V nochunks ${OTHERFLAGS} ${JADEOPTS} -d ${DSLPGP} -t sgml ${MASTERDOC}

#
# Handbook-specific variables
#
.if defined(WITH_PGPKEYS)
JADEFLAGS+=	-V withpgpkeys
.endif

URL_RELPREFIX?=	../../../..
DOC_PREFIX?=	${.CURDIR}/../../..

#
# rules generating lists of mirror site from XML database.
#
XMLDOCS=	mirrors-ftp:::mirrors.sgml.ftp.inc.tmp \
		mirrors-cvsup:::mirrors.sgml.cvsup.inc.tmp \
		eresources:::eresources.sgml.www.inc.tmp
DEPENDSET.DEFAULT=	transtable mirror
XSLT.DEFAULT=		${XSL_MIRRORS}
XML.DEFAULT=		${XML_MIRRORS}
NO_TIDY.DEFAULT=	yes

PARAMS.mirrors-ftp+=	--param 'type' "'ftp'" \
			--param 'proto' "'ftp'" \
			--param 'target' "'handbook/mirrors/chapter.sgml'"
PARAMS.mirrors-cvsup+=	--param 'type' "'cvsup'" \
			--param 'proto' "'cvsup'" \
			--param 'target' "'handbook/mirrors/chapter.sgml'"
PARAMS.eresources+=	--param 'type' "'www'" \
			--param 'proto' "'http'" \
			--param 'target' "'handbook/eresources/chapter.sgml'"

SRCS+=		mirrors.sgml.ftp.inc \
		mirrors.sgml.cvsup.inc \
		eresources.sgml.www.inc

CLEANFILES+=	mirrors.sgml.ftp.inc mirrors.sgml.ftp.inc.tmp \
		mirrors.sgml.cvsup.inc mirrors.sgml.cvsup.inc.tmp \
		eresources.sgml.www.inc eresources.sgml.www.inc.tmp

.include "${DOC_PREFIX}/share/mk/doc.project.mk"

.for p in ftp cvsup
mirrors.sgml.${p}.inc: mirrors.sgml.${p}.inc.tmp
	${SED} -e 's,<\([^ >]*\)\([^>]*\)/>,<\1\2></\1>,;s,</anchor>,,'\
	    < $@.tmp > $@ || (${RM} -f $@ && false)
.endfor

eresources.sgml.www.inc: eresources.sgml.www.inc.tmp
	${SED} -e 's,<\([^ >]*\)\([^>]*\)/>,<\1\2></\1>,;s,</anchor>,,'\
	    < $@.tmp > $@ || (${RM} -f $@ && false)
