const btnCat = document.getElementById('btn-pw-menu-barras'),
    grid = document.getElementById('grid'),
    contenedorEnlacesNav = document.querySelector('#menu .contenedor-enlaces-nav'),
    esDispositivoMovil = () => window.innerWidth <= 800;

btnCat.addEventListener('click', () => {
    if(!esDispositivoMovil()){
        grid.classList.add('activo');
    }
});

grid.addEventListener("mouseleave", () => {
    if(!esDispositivoMovil()){
        grid.classList.remove('activo');
    }
});

document.querySelectorAll('#menu .categorias a').forEach((elemento)=>{
    elemento.addEventListener('mouseenter', (e) => {
        document.querySelectorAll('#menu .subcategoria').forEach((categoria) =>{
            categoria.classList.remove('activo');
            if(categoria.dataset.categoria == e.target.dataset.categoria){
                categoria.classList.add('activo');
            }
         });
    });
});

// LISTENERS PARA DISPOSITIVOS MOVILES
document.querySelector('#btn-pw-menu-barras').addEventListener('click', (e)=>{
    if(esDispositivoMovil()){
        if(contenedorEnlacesNav.classList.contains('activo')){
            contenedorEnlacesNav.classList.remove('activo');
            document.querySelector('body').style.overflow = 'visible';
        }else{
            contenedorEnlacesNav.classList.add('activo');
            document.querySelector('body').style.overflow = 'hidden';
        }
    }   
});

// BOTON DE BUSQUEDA
var search = document.getElementById("search");
var box = document.getElementById("search-text");
var look = document.getElementById("look");

search.addEventListener("click", () =>{

    var x = document.getElementById("look").value;
    
    if (x != ""){
        document.getElementById("look").value = ""
        window.open("Search.html")
    }
    
    
    box.classList.toggle("d-none")

});
    

look.addEventListener('keypress', function (e) {
    var x = document.getElementById("look").value;
    if (e.key === 'Enter' && x != "") {
        window.open("Search.html")
    }
});

