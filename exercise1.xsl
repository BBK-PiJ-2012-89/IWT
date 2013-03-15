<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html>
    <head>
    <title><xsl:value-of select="name(/*)"/></title>
    </head>
    <body>
    <xsl:apply-templates/>
    </body>
    </html>
  </xsl:template>
  
  <xsl:template match="/*">
    <table width="600" border="1">
    	<thead>
    		<tr><xsl:apply-templates select="*[1]/*" mode="th"/></tr>
   	    </thead>
   	 <xsl:apply-templates select="*">
        <xsl:sort select="*"/>
      </xsl:apply-templates>
    </table> 
  </xsl:template>
  
  <xsl:template match="/*/*/*" mode="th">
  	<th>
    	<xsl:value-of select="name()"/>
    </th>
  </xsl:template>

  <xsl:template match="/*/*">
    <!--selecting the element nodes-->
    <tr>
      <xsl:apply-templates select="*"/>
    </tr>
  </xsl:template>
  
  <xsl:template match="/*/*/*">
    <!--selecting the text nodes-->
    <td><xsl:value-of select="."/></td>
  </xsl:template>
</xsl:stylesheet>