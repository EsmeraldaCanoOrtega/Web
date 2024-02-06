###### *Lenguajes de Marcas - Curso 2022/2023 - IES Leonardo da Vinci - Alberto Ruiz*

## B2P12 - Discos con XQuery

Una vez hayas probado los ejemplos incluidos en los apuntes con la base de datos de libros, crea una base de datos en BaseX para el catálogo de discos con el que estudiamos previamente XSL.

Vamos a intentar reproducir los mismos filtros que usábamos en el ejercicio de transformaciones XSLT. Recuerda que las consultas XQuery pueden dar dos tipos de resultado:

- Un elemento XML que contenga el resultado

- Una página web HTML. No olvides que la forma recomendada de generar código HTML es mediante XSLT: sin embargo, como ejercicio comprobaremos que también es posible hacerlo mediante XQuery. 

Resuelve las siguientes consultas XQuery. Si se pide "los discos" se refiere a los elementos `<cd>` completos, aunque en algunos casos se pedirá renombrar `<cd>` a otra cosa. Si se pide HTML, **no puede** haber mezclados elementos XML:

1. Todos los elementos "cd" (resultado en XML, agrupados en elemento `<todos>`)
2. Los datos de todos los discos en formato de tabla (resultado en HTML)
3. Los discos ordenados por artista (resultado en XML, agrupados en un elemento contenedor `<ordenados>`)
4. Los discos de Bob Dylan poniendo el filtro en XPath (resultado XML)
5. Los discos de Bob Dylan poniendo el filtro en XQuery (resultado XML)
6. Los títulos de los discos de Bob Dylan en formato de lista HTML (haz el filtro como prefieras)
7. Los discos de menos de 10 euros (salida en XML)
8. Los títulos de los discos con el formato `<discoBarato>` (menos de 9 euros), `<discoNormal>` (menos de 10 euros) y `<discoCaro>` (el resto)
9. Los discos mostrados con tres colores según su rango de precios, distinguiendo menos de 9, entre 9 y 10, y mayor de 10 (resultado en HTML)
10. Los ID de los discos (resultado en XML, elemento `<ids>`, subelementos `<id>`)
11. Generar un enlace HTML (`<a>`) con la URL y el nombre de la tienda.

** Formato de entrega: **

Incluye en un único documento los enunciados numerados de las 11 consultas, y después de cada enunciado incluye el código XQuery que le da solución y una captura de BaseX en la que se vea el resultado
