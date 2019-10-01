<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
>
    <xsl:output method="xml" indent="yes" encoding="utf-8"/>

    <xsl:template match="/">
      Esimene inimene:
      <xsl:value-of select="/inimesed/inimene[1]/nimi"/>
      <br/>
      Last inimene:
      <xsl:value-of select="/inimesed/inimene[last()]/nimi"/>
      <br/>
      1.täht esimeses nimes:
      <xsl:value-of select="substring(/inimesed/inimene[1], 1,1)"/>
      <br/>
      Выделить из текста все буквы до symbol:
      <xsl:value-of select="substring-before(/inimesed/inimene[1], 'Konst')"/>
      <br/>
      
      <xsl:value-of select="substring-after(/inimesed/inimene[1], 'Kon')"/>
      <br/>
      <xsl:value-of select="string-length(/inimesed/inimene[1])"/>
      <br/>
      <xsl:value-of select="translate(/inimesed/inimene[1], 'evi','vin')"/>
      <br/>
      <xsl:value-of select="count(/inimesed/inimene)"/>
      <br/>
      a
      <xsl:value-of select="count(/inimesed/inimene[aasta &gt;1999])"/>
      <br/>
      <xsl:value-of select="count(/inimesed/inimene[nimi='Marina'])"/>  
      <br/>
      <xsl:if test="starts-with(/inimesed/inimene[1]/nimi, 'K')">
        1.nimes esimene täht on K
      </xsl:if>
      <br/>
      <ul>
        <xsl:for-each select="inimesed/inimene">
          <li>
            <xsl:value-of select="nimi "/>
            <xsl:value-of select="2019-aasta"/>
          </li>
        </xsl:for-each>
      </ul>

    </xsl:template>
</xsl:stylesheet>
