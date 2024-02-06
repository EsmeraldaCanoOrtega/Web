function modificarTexto(elemento)
{
    elemento.innerHTML = new Date();
    elemento.style.backgroundColor= "yellow";
    elemento.style.color = "red";
}
/*              Metodo apartado: 1               */
function escribirSuma(num) {
    var suma = 0;
    var i;
    if (typeof (num) == "number" && num > 0) {
        for (i = 0; i < num; i++) {
            document.write((i + 1) + " ");
        }
        suma = i;
        document.writeln("La suma es: " + suma + ".");
    } else {
        document.write("Número menor o igual a cero");
    }
}
/*              Metodo apartado: 2               */
function escribirPotencia(num1, num2) {
    var potencia = 1;
    document.write("<p></p>La base " + num1 + " con potencia " + num2 + ", ");
    while (typeof (num1) == "number" && typeof (num2) == "number" && num2 > 0) {
        potencia = potencia * num1;
        num2--;
    }
    document.write("da un resultado de: " + potencia + "");
}
/*              Metodo apartado: 3               */
function obtenerFactorial(x) {
    var num = 1;

    for (var i = x; i > 0; i--) {
        num = num * i;
        document.write(i + " x ");
    }
    document.write("El resultado es: " + num + "");
}
/*              Metodo apartado: 4               */
function escribirDiferencia(num1, num2) {
    var resta;

    if ((num1 > 0 && num1 <= 10) && (num2 > 0 && num2 <= 10)) {
        if (num1 > num2) {
            resta = num1 - num2;
            document.write("La diferencia es: " + resta + "");
            document.write("<p></p>");
            var i = resta;

            while (i > 0) {
                document.write("*");
                i--;
            }
            for (var j = resta; j > 0; j--) {
                document.write("#");
            }

        } else {
            resta = num2 - num1;
            document.write("La diferencia es: " + resta + "");
            document.write("<p></p>");

            var i = resta;

            while (i > 0) {
                document.write("*");
                i--;
            }
            for (var j = resta; j > 0; j--) {
                document.write("#");
            }
        }
    }
}
/*              Metodo apartado: 5               */
function escribirCuadrado(Nfilas){
               
    for(var i = 1; i <= Nfilas; i++){
        for(var j = i; j <= Nfilas*i; j = j + i){
            if(i%2==0){
                document.write("<td style='background-color: aqua;''>"+j+"</td>");
            }else{
                document.write("<td>"+j+"</td>");
            }
        }

    document.write("<tr></tr>");
    }             
}

