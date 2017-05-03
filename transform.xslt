<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
>
  <xsl:output method="html" indent="yes"/>

  <xsl:template match="/">
    <xsl:for-each select="mediaPlayerConfig/config/video">
            <table>
                <tr style="background-color: #1214f6; color: white;">
                    <th>Proměnná</th>
                    <th>Hodnota</th>
                </tr>
                <tr>
                    <th>zobrazovací jednotka</th>
                    <th><xsl:value-of select ="imagingDevice"/></th>
                </tr>
                <tr>
                    <th>Vždy navrchu</th>
                    <th><xsl:value-of select ="alwaysOnTop"/></th>
                </tr>
                <tr>
                    <th>Fulscreen</th>
                    <th><xsl:value-of select ="fullscreen"/></th>
                </tr>
            </table>
    </xsl:for-each>
  </xsl:template>
</xsl:stylesheet>