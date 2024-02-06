<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:output method="html" version="4.0" encoding="UTF-8" indent="yes"/>
<xsl:template match="/ies">
<html>
  <head>
  </head>
  <body>
  <h2><xsl:value-of select="@ies"/></h2>
    <table border="1">
        <tr>
            <td>Nombre</td>
            <th>Nivel Educativo</th>
            <th>Decreto</th>
            <th>Alumnos</th>
        </tr>
        <xsl:for-each select="ciclos/ciclo">
        <tr>
            <td><xsl:value-of select="nombre"/></td>
            <xsl:if test='grado="Superior"' >
                <td>Grado Superior</td>
            </xsl:if>
            <xsl:if test='grado="Medio"' >
                <td>Grado Medio</td>
            </xsl:if>
	        <td><a href="decreto/@enlace">Ver decreto <xsl:value-of select="decreto/@año"/></a></td>
            <xsl:choose>
                <xsl:when test="alumnos/@numero &gt;30">
                    <td style="background-color:red;">
                        <xsl:value-of select="alumnos/@numero"/>
                    </td>
                </xsl:when>
                <xsl:when test="alumnos/@numero &gt;25">
                    <td style="background-color:orange;">
                        <xsl:value-of select="alumnos/@numero"/>
                    </td>
                </xsl:when>
                <xsl:otherwise>
                    <td style="background-color:black;color:white;">
                        <xsl:value-of select="alumnos/@numero"/>
                    </td>
                </xsl:otherwise>
            </xsl:choose>
        </tr>
        </xsl:for-each>
    </table>
    </body>
</html>
</xsl:template>
</xsl:stylesheet>