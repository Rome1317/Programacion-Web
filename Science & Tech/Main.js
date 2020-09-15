var navMenu = document.querySelector('#nav-menu');var btnExitMenu = document.querySelector('#btn-exit-menu');
navMenu.addEventListener('click', ()=>{    var menu = document.querySelector('#menu');    menu.classList.toggle('menu-activo');});
btnExitMenu.addEventListener('click', ()=>{    var menu = document.querySelector('#menu');    menu.classList.toggle('menu-activo');});