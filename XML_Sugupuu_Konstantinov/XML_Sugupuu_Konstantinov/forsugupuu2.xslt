<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
>
  <xsl:output method="xml" indent="yes" encoding="utf-8"/>
  <xsl:param name="otsing">E</xsl:param>
  <xsl:param name="pikkus">25</xsl:param>
  <xsl:template match="/">
    Имена содержащие комбинацию:
    <xsl:value-of select="$otsing"/>
    <table border="1">
      <tr>
        <th>Nimi</th>
        <th>Vanem</th>
        <th>Vanem süüniaasta</th>
      </tr>
      <xsl:for-each select="//inimene[contains(nimi, $otsing)]">
        <tr>
          <td>
            <xsl:value-of select="nimi"/>
          </td>
          <td>
            <xsl:value-of select="../../nimi"/>
          </td>
          <td>
            <xsl:value-of select="../../synnaaasta"/>
          </td>
        </tr>
      </xsl:for-each>
    </table>
    Имена длинна которых
    <xsl:value-of select="$pikkus"/> и больше:
    <table border="1">
      <tr>
        <th>Nimi</th>
        <th>Pikkus</th>
      </tr>
      <xsl:for-each select="//inimene[string-length(nimi)>=$pikkus]">
        <tr>
          <td>
            <xsl:value-of select="nimi"/>
          </td>
          <td>
            <xsl:value-of select="string-length(nimi)"/>
          </td>
        </tr>
      </xsl:for-each>
    </table>
  </xsl:template>
</xsl:stylesheet>
