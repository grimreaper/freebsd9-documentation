# 
# $FreeBSD: doc/es_ES.ISO8859-1/books/handbook/Makefile,v 1.16 2008/11/22 00:27:05 carvay Exp $
# $FreeBSDes: doc/es_ES.ISO8859-1/books/handbook/Makefile,v 1.6 2004/10/08 22:36:28 jesusr Exp $
#
# Build the FreeBSD Handbook.
#
#  The FreeBSD Spanish Documentation Project

#  %SOURCE%   en_US.ISO8859-1/books/handbook/Makefile
#  %SRCID%    0.0


# ------------------------------------------------------------------------
#
# Handbook-specific variables
#
#	WITH_PGPKEYS	The print version of the handbook only prints PGP
#			fingerprints by default.  If you would like for the
#			entire key to be displayed, then set this variable.
#			This option has no affect on the HTML formats.
#			
# Handbook-specific targets
#
#       pgpkeyring      This target will read the contents of
#                       pgpkeys/chapter.sgml and will extract all of
#                       the pgpkeys to standard out.  This output can then
#                       be redirected into a file and distributed as a 
#                       public keyring of FreeBSD developers that can
#                       easily be imported into PGP/GPG.
#
# ------------------------------------------------------------------------

MAINTAINER=	jesusr@FreeBSD.org

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
IMAGES_EN+= geom/striping.pic
IMAGES_EN+= install/adduser1.scr
IMAGES_EN+= install/adduser2.scr
IMAGES_EN+= install/adduser3.scr
IMAGES_EN+= install/boot-mgr.scr
IMAGES_EN+= install/console-saver1.scr
IMAGES_EN+= install/console-saver2.scr
IMAGES_EN+= install/console-saver3.scr
IMAGES_EN+= install/console-saver4.scr
IMAGES_EN+= install/desktop.scr
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
IMAGES_EN+= install/xf86setup.scr
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

# 
# SRCS lists the individual SGML files that make up the document. Changes
# to any of these files will force a rebuild
#

# SGML content
SRCS+= audit/chapter.sgml
SRCS+=  book.sgml
SRCS+= colophon.sgml
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
SRCS+= updating/chapter.sgml
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

pgpkeyring: pgpkeys/chapter.sgml
	@${JADE} -V nochunks ${JADEOPTS} -d ${DSLPGP} -t sgml ${MASTERDOC}

DOC_PREFIX?= ${.CURDIR}/../../..

#
# Handbook-specific variables
#
.if defined(WITH_PGPKEYS)
JADEFLAGS+=	-V withpgpkeys
.endif

.include "${DOC_PREFIX}/share/mk/doc.project.mk"
