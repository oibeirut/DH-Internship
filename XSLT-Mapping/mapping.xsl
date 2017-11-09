<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0"
    xmlns="http://www.tei-c.org/ns/1.0"
    xmlns:tei="http://www.tei-c.org/ns/1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    >
    
    <xsl:output method="xml" encoding="UTF-8" indent="yes"/>
    
    <!-- idendity transform -->
    
    <xsl:template match="node() | @*">
        <xsl:copy>
            <xsl:apply-templates select="@* | node()"/>
        </xsl:copy>
    </xsl:template>
     
   <!-- Important note: in a first round we look solely at content of nodes and do NOT replace them entirely. This must be done in a second step -->
   <!-- add pb tag for pagebreak -->
    <xsl:template match="text()">
        <xsl:analyze-string select="." regex="\[(\d+\D)\]|\[\.\.\.\]">
            <xsl:matching-substring>
                <xsl:message>
                    <xsl:text>regex found</xsl:text>
                </xsl:message>
                <xsl:choose>
                    <xsl:when test="matches(.,'\[(\d+\D)\]')">
                        <xsl:message>
                            <xsl:text>Found page break </xsl:text><xsl:value-of select="regex-group(1)"/>
                        </xsl:message>
                        <pb n="{regex-group(1)}"/>
                    </xsl:when>
                    <xsl:when test="matches(.,'\[\.\.\.\]')">
                        <xsl:message terminate="no">
                            <xsl:text>Found gap.</xsl:text>
                        </xsl:message>
                        <gap/>
                    </xsl:when>
                </xsl:choose>
            </xsl:matching-substring>
            <xsl:non-matching-substring>
                <xsl:value-of select="."/>
            </xsl:non-matching-substring>
        </xsl:analyze-string>
    </xsl:template>
    
    <!-- insufficient solution -->
    <!--<xsl:template match="tei:p[matches(.,'\[\.\.\.\]')]">
        <xsl:element name="tei:gap"/>
    </xsl:template>-->
    
    <!-- Second step: replace all <p> that have only a single child which is a <tei:pb> with that child. -->
    <xsl:template match="tei:p[count(child::node())=1][tei:pb]">
        <xsl:element name="tei:pb">
            <xsl:attribute name="n" select="tei:pb/@n"/>
        </xsl:element>
    </xsl:template>

</xsl:stylesheet>
