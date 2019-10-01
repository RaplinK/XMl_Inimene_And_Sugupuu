<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
>
    <xsl:output method="xml" indent="yes" encoding="utf-8"/>

    <xsl:template match="/">
      <table border="1">
        <xsl:attribute name="style">border-collapse:collapse;</xsl:attribute>
        <tr>
          <th>Название компьютера</th>
          <th>Материнская плата</th>
          <th>Процессор</th>
          <th>Видеокарта</th>
          <th>Хранилище данных</th>
          <th>Операционная система</th>
          <th>Оперативная память</th>
          <th>Блок питания</th>
        </tr>
        <xsl:for-each select="компьютеры/компьютер">
          <tr>
            <td>
              <h1><xsl:value-of select="название"/>
              </h1>
            </td>
            <td>
              <xsl:attribute name="style">background-color: red;</xsl:attribute>
              <xsl:value-of select="материнскаяПлата"></xsl:value-of>              
            </td>
            <td>
              <xsl:attribute name="style">background-color: red;</xsl:attribute>
              <xsl:value-of select="процессор/название"/>
              <tr>
                <td>
                  <xsl:attribute name="style">background-color: yellow;</xsl:attribute>
                  <xsl:value-of select="процессор/ядра"/>
                </td>
              </tr>
            </td>
            <td>
              <xsl:attribute name="style">background-color: red;</xsl:attribute>
              <xsl:value-of select="видеокарта"/>
            </td>
            <td>
              <xsl:attribute name="style">background-color: red;</xsl:attribute>
              <xsl:value-of select="хранилищеДанных"/>
            </td>
            <td>
              <xsl:attribute name="style">background-color: red;</xsl:attribute>
            <xsl:value-of select="операционнаяСистема"/>
            </td>
            <td>
              <xsl:attribute name="style">background-color: red;</xsl:attribute>
            <xsl:value-of select="оперативнаяПамять"/>
            </td>
            <td>
              <xsl:attribute name="style">background-color: red;</xsl:attribute>
            <xsl:value-of select="блокПитания"/>
            </td>
          </tr>
        </xsl:for-each>
      </table>
    </xsl:template>
</xsl:stylesheet>
