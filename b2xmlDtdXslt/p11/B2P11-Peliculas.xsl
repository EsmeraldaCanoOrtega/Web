<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:output method="html" version="4.0" encoding="UTF-8" indent="yes"/>
    <xsl:template match="/">
        <html>
            <head>
            </head>
            <body>
                <h2>Peliculas</h2>
                <table border="1">
                    <tr>
                        <td>Título</td>
                        <th>T.Original</th>
                        <th>Nacionalidad</th>
                        <th>Idioma</th>
                        <th>Año de producción</th>
                        <th>Director</th>
                        <th>Intérpretes</th>
                    </tr>
                    <xsl:for-each select="peliculas/pelicula">
                        <tr>
                            <td>
                                <xsl:value-of select="Título"/>
                            </td>
                            <td>
                                <xsl:value-of select="TítuloOriginal"/>
                            </td>
                            <xsl:if test='Nacionalidad="EEUU"' >
                                <td><img src="./descarga.png" height="50"></img></td>
                            </xsl:if>
                            <xsl:if test='Nacionalidad!="EEUU"' >
                                <td>No es EEUU</td>
                            </xsl:if>
                            <td>
                                <xsl:value-of select="Idioma"/>
                            </td>
                            <td>
                                <xsl:value-of select="Año_de_producción"/>
                            </td>
                            <td>
                                <xsl:value-of select="Director"/>
                            </td>
                            <td>
                                <ul>
                                    <xsl:for-each select="Intérpretes/Interprete">
                                        <li>
                                            <xsl:value-of select="current()"/>
                                        </li>
                                    </xsl:for-each>
                                </ul>
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>