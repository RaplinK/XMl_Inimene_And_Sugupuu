<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
>
    <xsl:output method="xml" indent="yes" encoding="utf-8"/>

    <xsl:template match="/">
    Регистрационный номер автомобиля
      <xsl:value-of select="/autod/auto[1]/registrinumber"/>
      <br/>
      Цифры номера автомобиля
      <xsl:value-of select="substring(/autod/auto[1], 1,3)"/>
      <br/>
      Буквы номера автомобиля
      <xsl:value-of select="substring(/autod/auto[1], 4,3)"/>
      <br/>
      Первая буква фамилии
      <xsl:value-of select="substring(/autod/auto[1]/perekonnanimi, 1,1)"/>
      <br/>
      Последняя буква фамилии
      <xsl:value-of select="substring(/autod/auto[1]/perekonnanimi, 7) "/>
      <br/>
      Количество людей с фамилией Kaalikas
      <xsl:value-of select="count(/autod/auto[perekonnanimi='Kaalikas'])"/>
      <br/>
      Количество людей у которых фамилия начинается на K
      <xsl:value-of select="count(/autod/auto[starts-with(perekonnanimi, 'K')])"/>
      <br/>
      Количество авто у которых рег номер заканчивается на 2
      <xsl:value-of select="count(/autod/auto/registrinumber[substring(text(), 3, 1) = '2'])"/>
      <br/>
      количество авто, где в рег номере последняя цифра 1 или 2
      <xsl:value-of select="count(autod/auto/registrinumber[substring(text(), 3, 1)='1' or substring(text(), 3, 1)='2'])"/>
      <br/>
      Количество машин с номером 420
      <xsl:value-of select="count(/autod/auto[starts-with(registrinumber, 420)])"/>
    </xsl:template>
</xsl:stylesheet>

