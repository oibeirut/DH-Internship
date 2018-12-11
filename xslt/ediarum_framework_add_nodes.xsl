<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0"
    xmlns="http://www.tei-c.org/ns/1.0"
    xmlns:tei="http://www.tei-c.org/ns/1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    
    <xsl:output method="xml" encoding="UTF-8" indent="yes"/>
    
    <!-- xslt-Stylesheet to map attribute @dir to @lang="ar" -->
    <!-- author(s): Lena Hofmann, 2018 -->
    
    <xsl:param name="p_editor">
        <tei:persName xml:id="pers_JD">Lena Hofmann</tei:persName>
    </xsl:param>
    
    <!-- reproduce everything with identity transform -->
    <xsl:template match="@* | node()">
        <xsl:copy>
            <xsl:apply-templates select="@* | node()"/>
        </xsl:copy>
    </xsl:template>
   
   <!-- add xml:lang="de"-->
    <xsl:template match="String[parent::field[@name=('name','title','description')]]" priority="100">
       <xsl:copy>
            <xsl:attribute name="xml:lang">
                <xsl:value-of select="'de'"/>
            </xsl:attribute>
            <xsl:apply-templates select="@*|node()"/>
       </xsl:copy>
        <xsl:element name="String">
            <xsl:attribute name="xml:lang">
                <xsl:value-of select="'en'"/>
            </xsl:attribute> 
        </xsl:element>  
    </xsl:template>        
    
</xsl:stylesheet>
