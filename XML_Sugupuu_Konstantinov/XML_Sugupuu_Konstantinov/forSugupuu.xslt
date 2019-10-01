<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
>
  <xsl:output method="xml" indent="yes" encoding="utf-8"/>

  <xsl:template match="/">
    <h1>Все года рождения</h1>
    <xsl:for-each select="//inimene">
      <xsl:sort select="synnaaasta" order="ascending"/>
      <li>
        <xsl:value-of select="synnaaasta"/>
      </li>
    </xsl:for-each>
    <br/>
    <h1>Вывести все имена, у кого мин 2 ребенка</h1>
    <xsl:for-each select="//inimene">
      <xsl:if test="count(lapsed)" >
        <xsl:value-of select="nimi"/>
      </xsl:if>
    </xsl:for-each>
    <br/>
    <h1>Родословная в виде таблици</h1>
    <table border="1">
      <tr>
        <td>Прородитель</td>
        <td>Родитель</td>
        <td>Имя</td>
        <td>Год рождения</td>
        <td>Возраст</td>
      </tr>
      <xsl:for-each select="//inimene">
        <tr>
          <td>
            <xsl:value-of select="../../../../nimi"/>
          </td>
          <td>
            <xsl:value-of select="../../nimi"/>
          </td>
          <td>
            <xsl:value-of select="nimi"/>
          </td>
          <td>
            <xsl:value-of select="synnaaasta"/>
          </td>
          <td>
            <xsl:value-of select="2019 - synnaaasta "/>
          </td>

        </tr>
      </xsl:for-each>
    </table>
    <h1>Задание Никиты первое</h1>
    <table border="1">
      <tr>
        <td>Люди старше 50</td>
      </tr>
      <xsl:for-each select="//inimene">
        <xsl:if test="2019 - synnaaasta  &gt; 50">
          <tr>
            <td>
              <xsl:value-of select="nimi"></xsl:value-of>
            </td>
          </tr>
        </xsl:if>
      </xsl:for-each>
    </table>
    <h1>Задание Никиты второе</h1>
    <table border="1">
      <tr>
        <td>Люди младше 50</td>
        <td>Возраст людей младше 50</td>
      </tr>

      <xsl:for-each select="//inimene">
        <xsl:if test="2019 - synnaaasta &lt; 50">
          <tr>
            <td>

              <xsl:value-of select="nimi"></xsl:value-of>

            </td>
            <td>

              <xsl:value-of select="2019 - synnaaasta"></xsl:value-of>

            </td>
          </tr>
        </xsl:if>
      </xsl:for-each>
    </table>



  </xsl:template>
</xsl:stylesheet>
