<?xml version="1.0" encoding="ISO-8859-1" ?>
<!DOCTYPE xsl:stylesheet PUBLIC "-//FreeBSD//DTD FreeBSD XSLT 1.0 DTD//EN"
				"http://www.FreeBSD.org/XML/www/share/sgml/xslt10-freebsd.dtd" [
<!ENTITY base "..">
<!ENTITY title "Nouvelles sur le projet GNOME pour FreeBSD">
<!ENTITY email "freebsd-gnome">
<!ENTITY % navinclude.developers "INCLUDE">
]>

<!-- $FreeBSD: www/fr/gnome/newsflash.xsl,v 1.6 2006/08/19 21:23:36 hrs Exp $ -->

<!-- 
     The FreeBSD French Documentation Project
     Original revision: 1.8

     Version francaise : Stephane Legrand <stephane@freebsd-fr.org>
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0"
  xmlns:cvs="http://www.FreeBSD.org/XML/CVS" exclude-result-prefixes="cvs">

  <xsl:import href="http://www.FreeBSD.org/XML/www/lang/share/sgml/libcommon.xsl"/>

  <xsl:variable name="date">
    <xsl:value-of select="//cvs:keyword[@name='freebsd']"/>
  </xsl:variable>

  <xsl:output type="html" encoding="iso-8859-1"/>

  <xsl:template match="news">
    <html>
      &header1;
      <body>

	<div id="CONTAINERWRAP">
	  <div id="CONTAINER">
	    &header2;

	    <div id="CONTENT">
              <div id="SIDEWRAP">
                &nav;
              </div> <!-- SIDEWRAP -->

	      <div id="CONTENTWRAP">
		&header3;

	<img src="&enbase;/gifs/news.jpg" align="right" border="0" width="193"
	     height="144" alt="FreeBSD GNOME News"/>

	<xsl:apply-templates select="descendant::month"/>

	<xsl:call-templates name="html-news-list-homelink" />

	      </div> <!-- contentwrap -->

	      <br class="clearboth" />
	    </div> <!-- content -->

            <div id="FOOTER">
	      &copyright;<br />
	      &date;
            </div> <!-- FOOTER -->
	  </div> <!-- container -->
	</div> <!-- containerwrap -->
      </body>
    </html>
  </xsl:template>

  <!-- Everything that follows are templates for the rest of the content -->

  <xsl:template match="month">
    <h1><xsl:value-of select="name"/>
      <xsl:text> </xsl:text>
      <xsl:value-of select="ancestor::year/name"/></h1>

    <ul>
      <xsl:apply-templates select="descendant::day"/>
    </ul>
  </xsl:template>

  <xsl:template match="day">
    <xsl:apply-templates select="event"/>
  </xsl:template>

  <xsl:template match="event">
    <li><p><a>
	  <xsl:attribute name="name">
	    <xsl:call-template name="generate-event-anchor"/>
	  </xsl:attribute>
	</a>

	<b><xsl:value-of select="ancestor::day/name"/>
	  <xsl:text> </xsl:text>
	  <xsl:value-of select="ancestor::month/name"/>,
	  <xsl:value-of select="ancestor::year/name"/>:</b><xsl:text> </xsl:text>
	<xsl:copy-of select="p"/>
	</p>

    </li>
  </xsl:template>

  <xsl:template match="date"/>    <!-- Deliberately left blank -->
</xsl:stylesheet>
