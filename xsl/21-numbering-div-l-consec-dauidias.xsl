<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:tei="http://www.tei-c.org/ns/1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0"
    exclude-result-prefixes="tei">
    <xsl:output method = "xml" indent="yes" omit-xml-declaration="no" /> 
    <!-- 21-numbering-div-l-consec-dauidias: copy everything, number only the l elements in liber divs, consecutively in Judita; honor existing @n and other attributes in tei:l -->
    <xsl:include href="copy.xsl"/>
    <xsl:template match="//tei:div[@type='liber']/tei:l[not(@n)]">
             <xsl:element name="{local-name()}" namespace="http://www.tei-c.org/ns/1.0">
                 <xsl:attribute name="n" xmlns:tei="http://www.tei-c.org/ns/1.0"><xsl:value-of select="concat(../@n ,  '.' , count(preceding-sibling::tei:l) + 1)"/></xsl:attribute>
                 <xsl:apply-templates select="@* | node()"/>
             </xsl:element>
    </xsl:template> 
</xsl:stylesheet>

