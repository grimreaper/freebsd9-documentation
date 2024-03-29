<?xml version="1.0" encoding="iso-8859-1"?>
<!--
     The FreeBSD Dutch Documentation Project

     $FreeBSD: doc/nl_NL.ISO8859-1/share/sgml/transtable-local.xsl,v 1.1 2009/03/23 12:36:04 rene Exp $

     %SOURCE%	share/sgml/transtable-local.xsl
     %SRCID%	1.2
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <!-- must point to master copy, doc/share/sgml/transtable-master.xsl -->
  <xsl:import href="../../../share/sgml/transtable-master.xsl" />

  <xsl:output type="xml"
	      indent="yes"/>

  <!-- these params should be externally bound. The values
       here are not used actually -->
  <xsl:param name="transtable.xml" select="'./transtable.xml'" />
  <xsl:param name="transtable-sortkey.xml" select="'./transtable-sortkey.xml'" />

  <xsl:param name="transtable-target-element" select="''" />
  <xsl:param name="transtable-word-group" select="''" />
  <xsl:param name="transtable-mode" select="''" />

</xsl:stylesheet>
