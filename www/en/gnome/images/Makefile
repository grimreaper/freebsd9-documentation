# $FreeBSD: www/en/gnome/images/Makefile,v 1.55 2009/05/30 19:39:32 marcus Exp $

.if exists(../Makefile.conf)
.include "../Makefile.conf"
.endif
.if exists(../Makefile.inc)
.include "../Makefile.inc"
.endif

# For screenshots, please create 320x240 thumbnails of the images, and name
# them <imagename>-tn.png.  This will minimize the load time for the index
# page.  If your source shot isn't of normal geometry, restrict the height
# to 240 pixels and let the width vary.  You can use the convert tool
# included with ImageMagick to do this:
#
# convert -geometry x240 <imagename>.png <imagename>-tn.png
#
# Screenshots should be named according to the GNOME release they show.
# E.g. the fourth screenshot for GNOME 2.6 is ss26-4.png, and the thumbnail
# is ss26-4-tn.png

DATA=	ss224-1.png
DATA+=	ss224-1-tn.png
DATA+=	ss224-2.png
DATA+=	ss224-2-tn.png
DATA+=	gnome.png

# FreeBSD GNOME Vanity Project

DATA+=	adamw.jpg
DATA+=	ahze.jpg
#DATA+=	bland.jpg
DATA+=	hippobutt.jpg
DATA+=	kwm.jpg
DATA+=	marcus.jpg
DATA+=	mezz.jpg

.include "${WEB_PREFIX}/share/mk/web.site.mk"
