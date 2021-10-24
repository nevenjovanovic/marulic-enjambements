<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:tei="http://www.tei-c.org/ns/1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0"
    exclude-result-prefixes="tei">
    <xsl:output method = "xml" indent="yes" omit-xml-declaration="no" /> 
    <!-- Add reference to line to the note contained by it, as @corresp -->
    <!-- Add @xml:id to the note, with nota-, replace . with - -->
    <!-- Use for Marulić with annotated enjambements -->
    <xsl:include href="copy.xsl"/>
    <xsl:template match="//tei:text//tei:div/tei:l/tei:note">
             <xsl:element name="{local-name()}" namespace="http://www.tei-c.org/ns/1.0">
                 <xsl:attribute name="xml:id" xmlns:tei="http://www.tei-c.org/ns/1.0">nota-<xsl:value-of select="(replace(../@n, '\.', '-'))"/></xsl:attribute>
                 <xsl:attribute name="corresp" xmlns:tei="http://www.tei-c.org/ns/1.0">#versus-<xsl:value-of select="(../@n)"/></xsl:attribute>
                 <xsl:apply-templates/>
             </xsl:element>
    </xsl:template> 
</xsl:stylesheet>

