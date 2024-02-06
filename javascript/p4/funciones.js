/*              Metodo apartado: 1               */
function escribirSumatorio(a, b,c,d) {
    var resultado = a + b +c+d;
    document.write("<p>Resultado: " + resultado + "</p>");
}
/*              Metodo apartado: 2               */
function obtenerAreaTriangulo(baseT=30, alturaT=10){
    
    if(typeof(baseT)=="number" && typeof(baseT)=="number"){
        var resultado=(baseT*alturaT)/2;
        document.write("El área del triángulo de base " +baseT+ " y altura " +alturaT+ " es: " +resultado);
    }else if(typeof(baseT)==String || typeof(baseT)==String){
        document.write("Error.Hay un string")
    } else{
        document.write("<p>Error. Hay un nulo</p>");
    }
}
/*              Funcion apartado: 3               */
function obtenerAreaTriangulo2(baseT=30, alturaT=10){
    var resultado
    
    if(typeof(baseT)=="number" && typeof(baseT)=="number"){
        resultado= (baseT*alturaT)/2;
    }
    return resultado;  
}
/*              Metodo apartado: 4               */
function escribirSaludo(nombre, mostrarTamaño){
    if(mostrarTamaño==false){
        document.write("<p>"+ nombre+"<p>");
    }else if(mostrarTamaño==true){
        var tamaño = nombre.length;
        document.write("<p>Hello there "+ nombre+"</p>")
        console.log(nombre+" tiene un tamaño de "+tamaño);
    }
}
/*              Metodo apartado: 5               */
function escribirSaludo2(nombre, mostrarTamaño=false){
    if(mostrarTamaño==false){
        document.write("<p>"+ nombre+"<p>");
    }else if(mostrarTamaño==true){
        var saludo= "Hello there "+nombre;
        document.write("<p>Hello there "+ nombre+"</p>")
        console.log(saludo+" tamaño: "+saludo.length);
    }
}
/*              Funcion apartado: 6               */
function obtenerHipotenusa(c1, c2){
    var resultado= Math.pow(c1,2)+Math.pow(c2,2);
    return resultado;
}
/*              Metodo apartado: 7               */
function escribirPerimetro(c1, c2){
    if(typeof(c1)=="number" && typeof(c2)=="number"){
        var trianguloBase =10;
		var trianguloAlt = 5
        var hipotenusa = obtenerHipotenusa(c1,c2);
        var perimetro7 = ( hipotenusa+trianguloBase+trianguloAlt);
        document.write("El perímetro es " +perimetro7+ ".");
    }else{
        document.write("Error.Recuerde pasar por parametro dos catetos que sean numericos")
    }

}