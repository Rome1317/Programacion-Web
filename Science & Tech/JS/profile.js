document.querySelectorAll('.contenedor-pw .sidebar-pw button').forEach((elemento)=>{
    elemento.addEventListener('click', (e) => {
        document.querySelectorAll('.contenedor-pw .opcion').forEach((opciones) =>{
            opciones.classList.remove('activo');
            if(opciones.dataset.opciones == e.target.dataset.opciones){
                opciones.classList.add('activo');
            }
         });
    });
});