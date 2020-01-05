<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="text" encoding="utf-8"/>

    <xsl:template match="dealership/cars">
        <xsl:value-of select="'Номер'"/><xsl:text>,</xsl:text>
        <xsl:value-of select="'Марка'"/><xsl:text>,</xsl:text>
        <xsl:value-of select="'Модел'"/><xsl:text>,</xsl:text>
        <xsl:value-of select="'Година'"/><xsl:text>,</xsl:text>
        <xsl:value-of select="'Тип ДВГ'"/><xsl:text>,</xsl:text>
        <xsl:value-of select="'Обем ДВГ'"/><xsl:text>,</xsl:text>
        <xsl:value-of select="'Коне'"/><xsl:text>,</xsl:text>
        <xsl:value-of select="'Шаси'"/><xsl:text>,</xsl:text>
        <xsl:value-of select="'Бр.Врати'"/><xsl:text>,</xsl:text>
        <xsl:value-of select="'Цвят'"/><xsl:text>,</xsl:text>
        <xsl:value-of select="'Спойлер'"/><xsl:text>,</xsl:text>
        <xsl:value-of select="'Размер джанти'"/><xsl:text>,</xsl:text>
        <xsl:value-of select="'Марка джанти'"/><xsl:text>,</xsl:text>
        <xsl:value-of select="'Модел джанти'"/><xsl:text>,</xsl:text>
        <xsl:value-of select="'Цвят джанти'"/><xsl:text>,</xsl:text>
        <xsl:value-of select="'Марка гуми'"/><xsl:text>,</xsl:text>
        <xsl:value-of select="'Сезон'"/><xsl:text>,</xsl:text>
        <xsl:value-of select="'Диаметър гуми'"/><xsl:text>,</xsl:text>
        <xsl:value-of select="'Ширина гуми'"/><xsl:text>,</xsl:text>
        <xsl:text>&#10;</xsl:text>
        <xsl:for-each select="car">
            <xsl:value-of select="@id"/><xsl:text>,</xsl:text>
            <xsl:value-of select="manufactureDetails/manufacturer"/><xsl:text>,</xsl:text>
            <xsl:value-of select="manufactureDetails/model"/><xsl:text>,</xsl:text>
            <xsl:value-of select="manufactureDetails/year"/><xsl:text>,</xsl:text>
            <xsl:value-of select="engineDetails/engineType"/><xsl:text>,</xsl:text>
            <xsl:value-of select="engineDetails/engineVolume"/><xsl:text>,</xsl:text>
            <xsl:value-of select="engineDetails/horsePower"/><xsl:text>,</xsl:text>
            <xsl:value-of select="visualDetails/bodyType"/><xsl:text>,</xsl:text>
            <xsl:value-of select="visualDetails/doorCount"/><xsl:text>,</xsl:text>
            <xsl:value-of select="visualDetails/color"/><xsl:text>,</xsl:text>
            <xsl:value-of select="visualDetails/hasWing"/><xsl:text>,</xsl:text>
            <xsl:value-of select="wheels/rims/size"/><xsl:text>,</xsl:text>
            <xsl:value-of select="wheels/rims/brand"/><xsl:text>,</xsl:text>
            <xsl:value-of select="wheels/rims/model"/><xsl:text>,</xsl:text>
            <xsl:value-of select="wheels/rims/color"/><xsl:text>,</xsl:text>
            <xsl:value-of select="wheels/tires/brand"/><xsl:text>,</xsl:text>
            <xsl:value-of select="wheels/tires/season"/><xsl:text>,</xsl:text>
            <xsl:value-of select="wheels/tires/diameter"/><xsl:text>,</xsl:text>
            <xsl:value-of select="wheels/tires/width"/><xsl:text>,</xsl:text>
            <xsl:value-of select="price"/><xsl:text>,</xsl:text>
        </xsl:for-each>

    </xsl:template>

</xsl:stylesheet>