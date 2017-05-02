<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
>
  <xsl:output method="xml" indent="yes"/>

  <xsl:template match="/">
    [
    <xsl:for-each select="mediaPlayerConfig/config/video">
      <xsl:sort select="poradi" order="descending"/>
      {
      "zobrazovací jednotka": "<xsl:value-of select ="imagingDevice"/>",
      "Vždy navrchu": "<xsl:value-of select ="alwaysOnTop"/>",
      "Fulscreen": "<xsl:value-of select ="fullscreen"/>",
      }<xsl:if test="position() != last()">,</xsl:if>
    </xsl:for-each>
    ]
  </xsl:template>
</xsl:stylesheet>