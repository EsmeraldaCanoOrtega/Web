###### *Lenguajes de Marcas - Curso 2022/2023 - IES Leonardo da Vinci - Alberto Ruiz*

## JSP05 - Iteración

Notas previas:

* Puedes utilizar la estructura iterativa que prefieras, salvo cuando se indique una específicamente.

* No son válidas soluciones que no utilicen estructuras iterativas.

* Se recomienda resolver estos problemas con diferentes estructuras para comprobar sus diferencias de funcionamiento.

* Verás que se pide resolver casi todos los ejercicios en formato de función: más adelante veremos que así resulta muy sencillo integrarlos en ejercicios que recojan los valores de formularios.

Trabajo a realizar:

1. **Suma**: crea una función `escribirSuma` que reciba un número n  y calcule la suma de los n primeros números naturales. Por ejemplo si el número introducido es 4, escribiremos el resultado de sumar 1 + 2 + 3 + 4.   Comprobaciones previas: que el número sea mayor que cero
   
   * Consejo: resuelve primero el problema sin función, forzando tú el valor del número. Una vez lo tengas añade la estructura de función.
   
   * Consejo: Necesitarás tener una variable acumuladora en la que vayas almacenando la suma parcial. Los acumuladores...
     
     * Se inicializan antes del bucle: si lo haces dentro del bucle se inicializarán a cada vuelta
     
     * Se imprimen después del bucle: si lo haces dentro del bucle se irán imprimiendo los valores parciales

2. **Potencia**: función `escribirPotencia` que reciba dos números a y b y calcule la potencia a elevado a b utilizando iteraciones (no una función matemática predefinida). Por ejemplo, calcularemos `2^3` como `2*2*2`. Utilizar estructura "while"
   
   * Pista: el exponente (3 en el ejemplo) es el que actúa de contador y te sirve para ajustar el número de veces que multiplicamos

3. **Factorial**: función `obtenerFactorial` que reciba un número x y calcule su factorial utilizando iteraciones. Utilizar estructura "for"
   
   * Pista: este ejercicio es muy parecido al primero de suma, pero con multiplicaciones en lugar de sumas

4. **Diferencia**: función `escribirDiferencia` que reciba dos números A y B entre el 1 y el 10 (debes comprobarlo). Escribir en pantalla tantos símbolos de asterisco ("*") como diferencia haya entre los números (resolviéndolo con while, mientras uno sea menor que otro se escribe asterisco) y repetir con almohadillas (resolviéndolo con for utilizando la diferencia entre a y b como número de repeticiones).
* Ejemplos: Introduzco 6 y 3: `*** ###` Introduzco 2 y 7: `***** #####`
5. **Cuadrado**: función `escribirCuadrado` que reciba un valor de lado y genere un cuadrado como el que se muestra en la figura (en este caso el lado es 10). Una vez resuelto, mejorarlo para que las filas pares salgan en un color más claro ("lightblue" por ejemplo) para facilitar la lectura. En la figura se ha usado `border='1'` para el elemento `table` y `style='padding:3px'` para los elementos de celda (`td`).
   * Este ejercicio requiere un bucle para escribir las X filas y un bucle interno para escribir las X celdas de columna (elementos `td`)
   * Consejo: para simplificar, comienza poniendo un asterisco en todas las celdas.  Cuando consigas la estructura correcta, utiliza las variables de control de ambos bucles para poner el número pedido en cada celda

![](JSP05-Iteración.png)
