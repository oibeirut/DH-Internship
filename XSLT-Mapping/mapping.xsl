<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0"
   xmlns:html="http://www.w3.org/1999/xhtml"
    xmlns="http://www.w3.org/1999/xhtml"
    xmlns:tei="http://www.tei-c.org/ns/1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    
    <xsl:output method="xml" encoding="UTF-8" indent="yes"/>
    
    <!-- idendity transform -->
    
    <xsl:template match="node() | @*">
        <xsl:copy>
            <xsl:apply-templates select="@* | node()"/>
        </xsl:copy>
    </xsl:template>
    
    <!-- add gap for missing text [...] -->
    <xsl:template match="tei:p">
        <xsl:analyze-string select="." regex="\[\.\.\.\]">
            <xsl:matching-substring>
                <gap></gap>  
            </xsl:matching-substring>
            <xsl:non-matching-substring>
                <p>
                  <xsl:value-of select="."/>
                </p>
            </xsl:non-matching-substring>
        </xsl:analyze-string>
    </xsl:template>
   
   <!-- add pb tag for pagebreak -->
    <xsl:template match="tei:p">
        <xsl:analyze-string select="." regex="\[\d*\D\]">
            <xsl:matching-substring>
                <pb n="{current()}"/>
            </xsl:matching-substring>
            <xsl:non-matching-substring>
                <p>
                  <xsl:value-of select="."/>
                </p>
            </xsl:non-matching-substring>
        </xsl:analyze-string>
    </xsl:template>

</xsl:stylesheet>
