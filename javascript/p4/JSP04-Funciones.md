###### *Lenguajes de Marcas - Curso 2022/2023 - IES Leonardo da Vinci - Alberto Ruiz*

## JSP04 - Funciones

En esta práctica se pide codificar funciones, pero debes acompañar el código de las mismas de una o varias pruebas de llamadas a esa función. **No utilices funciones predefinidas que no hayan sido estudiadas**.

1. Escribe una función "escribirSumatorio" que sume no dos, sino cuatro números que recibirá como parámetros y los escribirá por pantalla. 

2. Escribe una función "escribirAreaTriangulo" que reciba como parámetros la base y la altura de un triángulo y muestre su área. 
   
   Para la llamada, utiliza variables, por ejemplo:

```javascript
   var base=5;
   var altura=7;
   escribirAreaTriangulo(base,altura);
```

   Una vez lo hayas resuelto incluye las siguientes mejoras: **antes** de realizar los cálculos, debes hacer las siguientes comprobaciones:

* Si los parámetros de base o altura son variables que no han sido definidas (son nulos), se mostrará un error

* Si la base o la altura no son números, se mostrará un error
  
  Para probar los errores modifica tu código así:

```javascript
   var base; // provocará error de valor no definido
   var altura= "J"; // provocará error de valor no numérico
   escribirAreaTriangulo(base,altura);
```

3. Variante: codifica la función "obtenerAreaTriangulo" que no escribirá el área sino que la devolverá. Después de llamarla, escribe manualmente el valor del área con `document.write()`. Es muy importante que entiendas la diferencia entre funciones que no devuelven valores (llamados en algunos lenguajes procedimientos) y funciones que sí devuelven valores. Si sólo queremos escribir valores en pantalla, usaremos procedimientos. Si luego pensamos utilizar el resultado, necesitaremos funciones.

4. Codifica una variante de la función "escribirSaludo", que reciba además del nombre de la persona, un parámetro booleano "mostrarTamaño".  Cuando el parámetro vale `false` se muestra el saludo al nombre como siempre; pero si el parámetro vale true, por ejemplo en esta llamada: `escribirSaludo("Alberto", true)` entonces además del saludo se indicará en la consola cuántos caracteres tiene el nombre.

5. Variante: ahora el parámetro "mostrarTamaño" será opcional, y valdrá por defecto "false". Además, en lugar de mostrar el número de caracteres que tiene el nombre, se mostrará el número de caracteres que tiene el saludo completo (incluyendo el nombre).

6. Escribir la función "obtenerHipotenusa" , que dados los dos catetos de un triángulo rectángulo, devuelve (return) su hipotenusa (si no conoces la fórmula, busca el teorema de Pitágoras)

7. Dada la base y la altura de un triángulo rectángulo, codificar una función "escribirPerimetro" que primero compruebe si los parámetros son numéricos y, si es así, calcule y escriba su perímetro (suma de base, altura e hipotenusa). Para calcular la hipotenusa, utiliza la función que creaste en el apartado anterior. * 
   
   * Observa que si hubiésemos creado un procedimiento en el apartado anterior (es decir, una función que no devuelve nada y simplemente escribe el resultado en pantalla), no podríamos haberlo usado ahora.

8. Organiza el código que hemos generado en esta práctica. Separa en un archivo `funciones.js`las declaraciones de funciones y en otro `jsp054html` el código que resuelve los problemas utilizando llamadas a función. En el archivo del programa debes enlazar el archivo de funciones.