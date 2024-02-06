//Practica 1

function calcularArea_a() {
    var p_elements = document.getElementsByTagName('p')
    var base = p_elements.base.innerHTML; // inner el valor interior del elemento base
    var altura = p_elements.altura.innerHTML;
    p_elements.area.innerHTML = ((Number(base) * Number(altura)) / 2);
}

function calcularArea_b() {
    var td_elements = document.getElementsByTagName('td')
    var base = td_elements.base.innerHTML; // inner el valor interior del elemento base
    var altura = td_elements.altura.innerHTML;
    td_elements.area.innerHTML = ((Number(base) * Number(altura)) / 2);
}

function calcularArea_c() {
    var input_elements = document.getElementsByTagName('input')
    var base = input_elements.base.value; // inner el valor interior del elemento base
    var altura = input_elements.altura.value;
    input_elements.area.value = ((Number(base) * Number(altura)) / 2);
}

function calcularPerimetro_a() {
    var p_elements = document.getElementsByTagName('p')
    var base = Number(p_elements.base.innerHTML); // inner el valor interior del elemento base
    var altura = Number(p_elements.altura.innerHTML);
    var hipotenusa = (Math.sqrt((Math.pow((base), 2)) + (Math.pow(altura, 2))));
    var perimetro = (hipotenusa + base + altura);
    p_elements.perimetro.innerHTML = perimetro;
}

function calcularPerimetro_b() {
    var td_elements = document.getElementsByTagName('td')
    var base = Number(td_elements.base.innerHTML); // inner el valor interior del elemento base
    var altura = Number(td_elements.altura.innerHTML);
    var hipotenusa = (Math.sqrt((Math.pow((base), 2)) + (Math.pow(altura, 2))));
    var perimetro = (hipotenusa + base + altura);
    td_elements.perimetro.innerHTML = perimetro;
}

function calcularPerimetro_c() {
    var input_elements = document.getElementsByTagName('input')
    var base = Number(input_elements.base.value); // inner el valor interior del elemento base
    var altura = Number(input_elements.altura.value);
    var hipotenusa = (Math.sqrt((Math.pow((base), 2)) + (Math.pow(altura, 2))));
    var perimetro = (hipotenusa + base + altura);
    input_elements.perimetro.value = perimetro;
}


//Practica 2

function mouseOverButton() {
    var button = document.getElementById('buttonOver')
    button.classList.add('elegante')
}

function mouseOffButton() {
    var button = document.getElementById('buttonOver')
    button.classList.remove('elegante')
}

function mouseClickButton() {
    var button = document.getElementById('buttonClick')
    if(button.classList.contains('elegante'))
        button.classList.remove('elegante')
    else
        button.classList.add('elegante')

}

function mouseEnterButton() {
    var button = document.getElementById('buttonEntry')
    if(button.classList.contains('elegante'))
        button.classList.remove('elegante')
    else
        button.classList.add('elegante')

}

//Practica 3

function randomNumber(){
    var button = document.getElementById('buttonRandomNumber')
    button.innerHTML = Math.round(Math.random()*255);
}

function obtenerColor(){
    var r =  Math.round(Math.random()*255);
    var g =  Math.round(Math.random()*255);
    var b =  Math.round(Math.random()*255);
    return "rgb(" + r + "," + g + "," + b + ")"
}

function changeButtonBackground(){
    var button = document.getElementById('buttonRandomColor')
    button.style.backgroundColor = obtenerColor()
}

function changeTextColor(){
    var title = document.getElementById('h1Name')
    title.style.color = obtenerColor()
}

function changeTitleBackgroundColor(){
    var title = document.getElementById('h1Name')
    title.style.backgroundColor = obtenerColor()
}

// Practica 4

function toogle(id){
    var element = document.getElementById(id)
    element.classList.toggle('Respuesta')
}

