<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <body>
                <h3>Коли</h3>
                    <xsl:for-each select="dealership/cars/car">
                        <table border="1">
                        <tr bgcolor="#9acd32">
                            <th style="text-align:center">№</th>
                            <td colspan="4" style="text-align:center"><xsl:value-of select="manufactureDetails/manufacturer"/>
                                <xsl:text> </xsl:text><xsl:value-of select="manufactureDetails/model"/></td>
                        </tr>
                        <tr>
                            <td rowspan="2"><xsl:value-of select="@id"/></td>
                            <td>
                                <table>
                                    <tr bgcolor="#C1CCB9">
                                        <td>Технически Данни</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <table border="1">
                                                <tr>
                                                    <th>Година</th>
                                                    <td><xsl:value-of select="manufactureDetails/year"/></td>
                                                </tr>
                                                <tr>
                                                    <th>Двигател</th>
                                                    <td><xsl:value-of select="engineDetails/engineType"/></td>
                                                </tr>
                                                <tr>
                                                    <th>Кубатура</th>
                                                    <td><xsl:value-of select="engineDetails/engineVolume"/></td>
                                                </tr>
                                                <tr>
                                                    <th>Мощност</th>
                                                    <td><xsl:value-of select="engineDetails/horsePower"/> к.с.</td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                            <td>
                                <table>
                                    <tr bgcolor="#C1CCB9">
                                        <td>Визуални Характеристики</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <table border="1">
                                                <tr>
                                                    <th>Шаси</th>
                                                    <td><xsl:value-of select="visualDetails/bodyType"/></td>
                                                </tr>
                                                <tr>
                                                    <th>Брой врати</th>
                                                    <td><xsl:value-of select="visualDetails/doorCount"/></td>
                                                </tr>
                                                <tr>
                                                    <th>Цвят</th>
                                                    <td><xsl:value-of select="visualDetails/color"/></td>
                                                </tr>
                                                <tr>
                                                    <th>Спойлер</th>
                                                    <td>
                                                        <xsl:if test="visualDetails/hasWing = 1">
                                                            Да
                                                        </xsl:if>
                                                        <xsl:if test="visualDetails/hasWing = 0">
                                                            Не
                                                        </xsl:if>
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                            <td>
                                <table>
                                    <tr bgcolor="#C1CCB9">
                                        <td>Джанти</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <table border="1">
                                                <tr>
                                                    <th>Размер</th>
                                                    <td><xsl:value-of select="wheels/rims/size"/></td>
                                                </tr>
                                                <tr>
                                                    <th>Марка</th>
                                                    <td><xsl:value-of select="wheels/rims/brand"/></td>
                                                </tr>
                                                <tr>
                                                    <th>Модел</th>
                                                    <td><xsl:value-of select="wheels/rims/model"/></td>
                                                </tr>
                                                <tr>
                                                    <th>Цвят</th>
                                                    <td><xsl:value-of select="wheels/rims/color"/></td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                            <td>
                                <table>
                                    <tr bgcolor="#C1CCB9">
                                        <td>Гуми</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <table border="1">
                                                <tr>
                                                    <th>Марка</th>
                                                    <td><xsl:value-of select="wheels/tires/brand"/></td>
                                                </tr>
                                                <tr>
                                                    <th>Сезон</th>
                                                    <td><xsl:value-of select="wheels/tires/season"/></td>
                                                </tr>
                                                <tr>
                                                    <th>Диаметър</th>
                                                    <td><xsl:value-of select="wheels/tires/diameter"/></td>
                                                </tr>
                                                <tr>
                                                    <th>Широчина</th>
                                                    <td><xsl:value-of select="wheels/tires/width"/></td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                            <tr>
                                <th colspan="3">Цена</th>
                                <td><xsl:value-of select="price"/>лв.</td>
                            </tr>
                        </tr>
                        </table>
                    </xsl:for-each>

            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>

