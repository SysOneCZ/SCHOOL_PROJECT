<!--author: Vaclav Zdvihal-->
<!-- transform.xslt  -->
<!-- https://github.com/CastielCZ/xmlSeminar.git -->
<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:output method="html"/>
  <xsl:template match="/">
    <html>
      <body>
        <h1>Nastavení jazyka ve hře BCG</h1>
        <table border="1">
          <tr bgcolor="#dddddd">
            <th>Jmeno profilu</th>
            <th>Zapnute titulky</th>
            <th>Jazyk titulku</th>
            <th>Jazyk menu</th>
            <th>Jazyk dabingu</th>
          </tr>
            <xsl:for-each select="gameSettings/profiles/profile">
            <tr>
              <td>
                <xsl:value-of select="@name"/>
              </td>
              <td>
                <xsl:value-of select="game/language/@enableSubtitles"/>
              </td>
                <td><xsl:value-of select="game/language/subtitles"/>
                </td>
              <td>
                <xsl:value-of select="game/language/menu"/>
              </td>
              <td>
                <xsl:value-of select="game/language/dabing"/>
              </td>
            </tr>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>