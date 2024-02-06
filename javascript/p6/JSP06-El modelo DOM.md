###### *Lenguajes de Marcas - Curso 2022/2023 - IES Leonardo da Vinci - Alberto Ruiz*

## JSP06 - Iteración

##### 1. Cálculo de área y perímetro con botones

Añade este código a una página web:

```html
<h2>Triángulo rectángulo</h2>
<h3>Base:</h3>
<p id="base">4</p>
<h3>Altura:</h3>
<p id="altura">6</p>
<h3>Área:</h3>
<p id="area"> - </p>
<h3>Perímetro:</h3>
<p id="perimetro"> - </p>
```

Añade dos funciones JavaScript, "calcularArea" y "calcularPerimetro". Estas funciones **no** recibirán parámetros: localizarán los valores de base y altura dentro del código HTML.

Añade dos botones "calcular área" y "calcular perímetro". Al pulsar cada uno, aparecerá el valor del área o del perímetro en su correspondiente párrafo.

###### Variante 1.a: varias acciones asociadas a un solo evento

Añade un nuevo botón "calcular área y perímetro" que haga ambos cálculos de una vez. Comprueba que dentro de "onclick" puedes poner tantas sentencias JavaScript como desees (aunque lógicamente conviene poner sólo una para generar código fácil de leer).

###### Variante 1.b: formato de tabla

Incluye los datos en formato de tabla, utilizando atributos "id" para referenciar cada celda.

##### 2. Cálculo de área y perímetro con botones

Añade este código a tu cabecera HTML (se aconseja usar una página diferente en cada ejercicio para no mezclar):

```html
<style>
.elegante {
  background-color: teal;
  border: none;
  color: white;
  padding: 20px;
  text-align: center;
  font-size: 15px;
  font-weight: bold;
  cursor: pointer;
  }
</style>
```

Ahora añade tres botones:

* Botón "Sobrevolar": mientras el ratón esté por encima se le aplicará la clase "elegante"
* Botón "Púlsame": cuando pulsemos el botón, se le aplicará el estilo "elegante". Cuando lo volvamos a pulsar, se le quitará, y así sucesivamente.
* Botón "Entrada": cuando el ratón entra en el elemento se produce el evento (pero noa salir). El evento motiva que se quite o se ponga la clase.

##### 3. Valores aleatorios

Ya conoces la clase predefinida Math, que ofrece funciones matemáticas. Vamos a trabajar con la función "random", que genera un número aleatorio entre 0 y 1 (con decimales), sin estar el 1 incluido, es decir, el número siempre será menor que uno.  Se suele combinar con la función "round" para redondear. También podemos multiplicar por un valor y obtendremos un número aleatorio entre el cero y dicho valor. Ejemplos:

```javascript
var aleatorio  = Math.round(Math.random()*10);   // número aleatorio entre 0 y 10
var aleatorio2 = Math.round(Math.random()*9); // número aleatorio entre 0 y 9
var aleatorio3 = Math.round(Math.random()*9)+1; // número aleatorio entre 1 y 10
```

###### 3.1: Botón con número aleatorio

Crea un botón que, al ser pulsado, escriba en su interior un número aleatorio entre el 0 y el 255.

###### 3.2: Función obtenerColor()

Observa la siguiente regla CSS:

```css
background-color: rgb(100,210,0);
```

O esta sentencia JavaScript:

```javascript
elemento.style.backgroundColor="rgb(100,210,0)";
```

Es posible expresar un color mediante sus componentes de rojo, verde o azul. Cada uno de los componentes tiene 8 bits, por tanto sus valores admitidos son entre 0 y 255.

Escribe la función "obtenerColor" que no recibe parámetros y devuelve el texto "rgb(50,100,150)" donde los tres números serán generados de forma aleatoria.

###### 3.3: Botón con color aleatorio

Combina los ejercicios anteriores y obtén un botón que, al ser pulsado, cambie su color de fondo a uno aleatorio y diferente.

###### 3.4: Título con color aleatorio

Ahora prueba una variante: incluye un título "h1" con tu nombre, y añade debajo los botones "Cambiar color del texto" y "Cambiar color de fondo". Cada vez que pulsemos el botón correspondiente, cambiará a un valor aleatorio el color de texto o de fondo. Cuando pasemos el ratón por encima del título, sus colores de texto y fondo se restablecerán a negro sobre blanco.

##### 4. Preguntas más frecuentes (FAQ)

Las secciones de FAQ o preguntas más frecuentes son un listado de preguntas con sus correspondientes respuestas. Hay dos estilos principales de FAQ:

* Las que se basan en enlaces internos (enlaces a una parte de la página identificada por un "id") y al hacer clic en la pregunta nos llevan a la zona de la página donde está la respuesta ([ejemplo](https://www.gnu.org/gnu/gnu-linux-faq.es.html)). 
* Las más modernas, que tienen cada respuesta a continuación de su pregunta pero permiten mostrarla u ocultarla ([ejemplo](http://www.seg-social.es/wps/portal/wss/internet/FAQ/48414/48416)). Esta será la que intentaremos conseguir en este ejercicio.

Crea en una página al menos tres preguntas frecuentes (FAQ) con el texto que quieras, de forma que cada pregunta tenga la siguiente estructura:

* Un título con el nombre de la pregunta
* Un párrafo con la respuesta

Inicialmente sólo veremos los títulos de preguntas, pero al hacer clic en un título se mostrará justo después la respuesta. Si volvemos a hacer clic en el título, la respuesta se ocultará.

Indicaciones para conseguirlo:

* Consulta la sección de apuntes en la que se explica cómo ocultar elementos

* Puedes hacer que un elemento HTML tenga una determinada propiedad por defecto mediante los atributos class o style:
  
  ```html
  <p class="elegante">Al cargar la página ya tiene la clase elegante</p>
  <p style="color:red">Al cargar la página ya se escribe en rojo</p>
  ```

* Debes utilizar la función `toggle` para que cada vez que haga clic en el título se muestre o se oculte su respuesta.
