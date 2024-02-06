<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:output method="html" version="4.0" encoding="UTF-8" indent="yes"/>
<!-- con output indicamos el formato de salida del procesamiento, es decir, la página generada -->

<xsl:template match="/catalog"> <!-- el contenido del atributo match es XPath -->
<!-- En este ejemplo vamos a manejar una única plantilla. Esto significa que TODAS las rutas XPath
que aparezcan en el documento se referirán al elemento raíz, y por tanto NUNCA pondremos la / inicial --> 
<html>
  <head>
	<link rel="stylesheet" type="text/css" href="catalogo.css"/>
  </head>
  <body>

	<!-- Mecanismos básicos en XSL: xsl:for-each, xsl:value-of, xsl:comment --> 
  <h2>Colección de discos</h2>
    <table border="1">
      <tr class="header">
        <td>Id</td>
        <th>Title</th>
        <th>Artist</th>
      </tr>
      <xsl:for-each select="cd"> <!-- el contenido del atributo select es XPath -->
      <tr>
        <td><xsl:value-of select="@id"/></td>
        <td><xsl:value-of select="title"/></td>
		<!--Pueden crearse elementos y atributos con xsl:element y xsl:attribute. 
			Notas:
			1. Puedes incluir más de un atributo
			2. El orden importa: los atributos deben ir antes del valor del elemento. 
			   Si quieres prueba a poner antes el "value-of" del elemento y verás que no funciona.-->
		<xsl:element name="td">
			<xsl:attribute name="style">background-color:lightyellow</xsl:attribute>
			<xsl:attribute name="lang">en</xsl:attribute>
			<xsl:value-of select="artist" />
		</xsl:element>		
		<!-- También pueden generarse comentarios con xsl:comment -->
		<xsl:comment>Generado mediante XSLT</xsl:comment>		
      </tr>
      </xsl:for-each>
    </table>


	<!-- Orden con xsl:sort --> 
  <h2>Discos ordenados</h2>
    <table border="1">
      <tr class="header">
        <th>Title</th>
        <th>Artist</th>
      </tr>
      <xsl:for-each select="cd">
		<xsl:sort select="artist"/>
      <tr>
        <td><xsl:value-of select="title"/></td>
        <td><xsl:value-of select="artist"/></td>
      </tr>
      </xsl:for-each>
    </table>

	<!-- Filtros: existen dos enfoques para filtrar: 
	     1. Puedo establecer el filtro en XPath, de forma que los elementos que llegarán a XSL 
		    estarán ya filtrados.
		 2. Puedo establecer el filtro en XSL.
		 
		 Vamos a ver ambos enfoques: -->

	<!-- filtros en XPath -->
  <h2>Discos de Bob Dylan</h2>
    <table border="1">
      <tr class="header">
        <th>Title</th>
        <th>Artist</th>
      </tr>
	  <xsl:for-each select="cd[artist='Bob Dylan']">
	  <!-- se admiten los siguientes operadores:  = != &lt; &gt;  -->
      <tr>
        <td><xsl:value-of select="title"/></td>
        <td><xsl:value-of select="artist"/></td>
      </tr>
      </xsl:for-each>
    </table>

	<!-- filtros en XSL: elemento xsl:if -->
  <h2>Discos de Bob Dylan</h2>
    <table border="1">
      <tr class="header">
        <th>Title</th>
        <th>Artist</th>
      </tr>
	  <xsl:for-each select="cd">
	  <!-- se admiten los siguientes operadores: = != &lt; &gt;  -->
		<xsl:if test="artist='Bob Dylan'">
			<tr>
				<td><xsl:value-of select="title"/></td>
				<td><xsl:value-of select="artist"/></td>
			</tr>
		</xsl:if>
      </xsl:for-each>
    </table>

	<!-- filtros en XSL: comparaciones numéricas -->

  <h2>Discos baratos</h2>
    <table border="1">
      <tr class="header">
        <th>Title</th>
        <th>Artist</th>
      </tr>
      <xsl:for-each select="cd">
	<xsl:if test="price &lt; 10">
      <tr>
        <td><xsl:value-of select="title"/></td>
        <td><xsl:value-of select="artist"/></td>
      </tr>
	  </xsl:if>
      </xsl:for-each>
    </table>
	
	<!-- filtros en XSL: condiciones múltiples con xsl:choose", xsl:when y xsl:otherwise -->

 <h2>Condiciones múltiples</h2>
  <table border="1">
    <tr class="header">
      <th>Title</th>
      <th>Artist</th>
    </tr>
    <xsl:for-each select="cd">
    <tr>
      <td><xsl:value-of select="title"/></td>
      <xsl:choose>
        <xsl:when test="price &gt; 10">
          <td class="alto">
          <xsl:value-of select="artist"/></td>
        </xsl:when>
        <xsl:otherwise>
          <td><xsl:value-of select="artist"/></td>
        </xsl:otherwise>
      </xsl:choose>
    </tr>
    </xsl:for-each>
  </table>	
	
 <h2>Condiciones múltiples con más ramas</h2>
  <table border="1">
    <tr class="header">
      <th>Title</th>
      <th>Artist</th>
    </tr>
    <xsl:for-each select="cd">
    <tr>
      <td><xsl:value-of select="title"/></td>
      <xsl:choose>
        <xsl:when test="price &gt; 10">
          <td class="alto">
          <xsl:value-of select="artist"/></td>
        </xsl:when>
        <xsl:when test="price &gt; 9">
          <td class="medio">
          <xsl:value-of select="artist"/></td>
        </xsl:when>
        <xsl:otherwise>
          <td class="bajo">
		  <xsl:value-of select="artist"/></td>
        </xsl:otherwise>
      </xsl:choose>
    </tr>
    </xsl:for-each>
  </table>	
	
	<!-- ¿Cómo puedo hacer referencia al elemento actual sobre el que
	     he hecho el select? Con la función current() de XPath.
	     Ejemplo: intentamos mostrar los títulos de los CDs.
	-->
	<h2>Artistas de los discos</h2>
	<ul>
	<xsl:for-each select="cd/artist">
		<li>
		<xsl:value-of select="current()"/>
		</li>
	</xsl:for-each>
	</ul>


  <h2>Títulos de los discos</h2>
    <table border="1">
      <tr class="header">
        <th>Títulos de todos los discos</th>
      </tr>
		<tr><td>
		<xsl:for-each select="cd/title">
		 -<xsl:value-of select="current()"/>  
		</xsl:for-each>
		</td></tr>
    </table>
	
	

	<!-- ¿Cómo puedo seleccionar un atributo en una ruta XPath? Con @ en XPath
	     Repetimos el ejemplo anterior pero escribimos el id.  -->

  <h2>Ids de los discos</h2>
    <table border="1">
      <tr class="header">
        <th>Ids de todos los discos</th>
      </tr>
		<tr><td>
		<xsl:for-each select="cd/@id">
		 -<xsl:value-of select="current()"/>  
		</xsl:for-each>
		</td></tr>
    </table>

	
	<!-- current() es una función de XPath. Hay otras muchas, por ejemplo count(): -->
	<h2>Número total de discos</h2>
	<h3><xsl:value-of select="count(cd)"/></h3>
	
	
	<!-- Ahora queremos escribir un enlace con los datos de la tienda, pero no podemos hacer:
	<a href="<xsl:value-of select="catalog/store/www"/>">Texto del enlace</a>
	Es decir, no podemos poner elementos XSL dentro del valor entrecomillado de un atributo.
	
	Existen tres soluciones válidas:
	
	Primera: podemos crear elementos y atributos con XSL
    -->
	<xsl:element name="h2">
		<xsl:element name="a">
			<xsl:attribute name="href">
				<xsl:value-of select="store/www"/>
			</xsl:attribute>
			<xsl:value-of select="store/name"/>
		</xsl:element>
	</xsl:element>
		
	<!-- Segunda: podemos usar expresiones XPath dentro de un atributo, utilizando llaves -->
	
	<h2><a href="{store/www}"><xsl:value-of select="store/name"/></a></h2>
	
	<!-- Tercera: podemos definir variables, que se representan con el símbolo $
         Para mostrar las variables necesitamos un value-of, así que esto no es realmente 
		 una alternativa independiente: debes combinarla con el uso de {} --> 
	<xsl:variable name="link" select="store/www" />
	<h2><a href="{$link}"><xsl:value-of select="store/name"/></a></h2>
	
	</body>
  </html>
 </xsl:template>
</xsl:stylesheet>
