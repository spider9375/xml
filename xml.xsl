<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="xml" encoding="UTF-8" indent="yes"/>

    <xsl:template match="dealership">
        <xsl:for-each select="cars/car">
            <vehicle>
                <id>
                    <xsl:value-of select="@id"/>
                </id>
                <name>
                    <xsl:value-of select="manufactureDetails/manufacturer"/>
                </name>
                <model>
                    <xsl:value-of select="manufactureDetails/model"/>
                </model>
                <year>
                    <xsl:value-of select="manufactureDetails/year"/>
                </year>
                <engine>
                    <xsl:value-of select="engineDetails/engineVolume"/>
                    <xsl:text> </xsl:text>
                    <xsl:value-of select="engineDetails/engineType"/>
                    <xsl:text> </xsl:text>
                    <xsl:value-of select="engineDetails/horsePower"/>
                </engine>
                <transmission>
                    <xsl:value-of select="transmission/type"/>
                </transmission>
                <gears>
                    <xsl:value-of select="transmission/gearCount"/>
                </gears>
                <body>
                    <xsl:value-of select="visualDetails/bodyType"/>
                </body>
                <color>
                    <xsl:value-of select="visualDetails/color"/>
                </color>
                <cost>
                    <xsl:value-of select="price"/>
                </cost>
            </vehicle>
        </xsl:for-each>
    </xsl:template>

</xsl:stylesheet>