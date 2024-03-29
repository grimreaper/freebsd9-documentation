<?xml version="1.0"?>
<!DOCTYPE xsl:stylesheet PUBLIC "-//FreeBSD//DTD FreeBSD XSLT 1.0 DTD//EN"
				"http://www.FreeBSD.org/XML/www/share/sgml/xslt10-freebsd.dtd" [
<!ENTITY base ".">
<!ENTITY title "">
]>
<!-- $FreeBSD: www/hu/security/errata-rss.xsl,v 1.1 2009/04/06 17:56:08 pgj Exp $ -->

<!-- The FreeBSD Hungarian Documentation Project
     Translated by: PALI, Gabor <pgj@FreeBSD.org>
     %SOURCE%	en/security/errata-rss.xsl
     %SRCID%	1.1
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0"
  xmlns:cvs="http://www.FreeBSD.org/XML/CVS"
  exclude-result-prefixes="cvs">

  <xsl:import href="http://www.FreeBSD.org/XML/www/lang/share/sgml/libcommon.xsl"/>

  <xsl:output method="xml" indent="yes"/>

  <xsl:variable name="date">
    <xsl:value-of select="//cvs:keyword[@name='freebsd']"/>
  </xsl:variable>

  <xsl:template match="/">
    <xsl:call-template name="rss-errata-notices">
       <xsl:with-param name="notices.xml" select="$notices.xml" />
    </xsl:call-template>
  </xsl:template>
</xsl:stylesheet>
