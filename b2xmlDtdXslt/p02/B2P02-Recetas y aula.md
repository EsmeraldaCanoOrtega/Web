###### *Lenguajes de Marcas - Curso 2022/2023 - IES Leonardo da Vinci - Alberto Ruiz*
## B2P02 - Recetas y aula

Escribe otros dos documentos XML, para los siguientes problemas:

**Recetas**

Queremos realizar una web sobre recetas. Almacenaremos las distintas recetas en un documento XML `recetas.xml`. De cada receta querremos saber:

* Su nombre y su tipo (aperitivos, primeros, segundos, postres...)
* Sus ingredientes, indicando opcionalmente el número (ejemplo: tres cebollas). Ten en cuenta que un atributo debería contener valores "atómicos" o indivisibles, por tanto "2kg" no es un buen valor, es mejor distribuirlo en dos atributos distintos (cantidad "2" y unidad "kg")
* Si el plato es apto para celíacos o no: esto puede ser un valor lógico "true" o "false", o un valor de texto "sí" o "no"
* Los pasos de preparación. Ten en cuenta que si son un listado de pasos, quedará mejor un elemento contenedor para todos los pasos, y luego un elemento individual para cada paso. El orden de cada paso se puede especificar como atributo, o simplemente asumir que los pasos se almacenan ordenados.

Escribe un documento XML poniendo como ejemplo tres recetas.

**Información sobre el aula**

Queremos representar en un archivo `clase.xml` toda la información sobre nuestro curso. Esta información debe incluir:

* El nombre del grupo y el número de aula
* El horario de clases del grupo
* Los equipos del aula con su número número de equipo, dirección ip, máscara, puerta de enlace
* Los alumnos del grupo indicando su nombre y el equipo que utiliza

Haz una propuesta de documento utilizando al menos tres instancias de elementos de cada tipo (tres alumnos, tres equipos, tres días del horario...).

**Forma de entrega**

Entrega un único documento en el que incluyas el código de los dos archivos XML. Consulta la práctica 1 para ver cómo conseguir el resaltado de sintaxis (obligatorio) en tu documento.