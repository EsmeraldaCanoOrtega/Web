###### *Lenguajes de Marcas - Curso 2022/2023 - IES Leonardo da Vinci - Alberto Ruiz*

## B2P09 - Estilos con XML

**Parte 1: XML y CSS**

Hemos visto que puedes aplicar estilos CSS a un archivo XML. Escoge uno de nuestros ejemplos (películas, recetas, clase) y dale un estilo CSS sin intentar hacer estructuras complejas como tablas, simplemente muéstralo en forma de listas y juega con tipos de letra, colores, etc.

**Parte 2: XML y XSL**

Haz una copia de los archivos que hemos utilizado para explicar XSLT (“catalog”), y renómbralos a catalogo.xml, catalogo.css y catalogo.xsl.

Observa que la plantilla que hemos utilizado en el ejemplo es **match="/"**, y por tanto todas las rutas a elementos se expresan desde la raíz del documento. Ahora vamos a modificarla para que la plantilla sea **match="/catalog**"

Una vez hagas ese cambio, tendrás que realizar todos los cambios necesarios en el resto de expresiones XPath del documento para que todo siga funcionando igual.

En adelante puedes usar la plantilla que desees para el resto de ejercicios.

***Entrega**

* Los tres archivos P01 de la Parte 1
* El archivo B4P01-ciclos.xml con su archivo XSL asociado
  **Forma de entrega:**

Un único documento en el que se incluyan bien separados e identificados con títulos: 

* De la parte 1:
  
  * El archivo XML escogido
  
  * El archivo CSS generado
  
  * Captura de cómo se viaualiza

* De la parte 2:
  
  * El archivo xsl modificado
  
  * No hace falta captura de cómo se visualiza ya que debería ser exactamente igual
