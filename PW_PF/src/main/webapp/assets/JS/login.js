var panel = document.getElementById("panel");
var login = document.getElementById("login");
var register = document.getElementById("register");
var newuser = document.getElementById("newuser");
var olduser = document.getElementById("olduser");
var link_s = document.getElementById("link-sign");
var link_l = document.getElementById("link-login");

//! Log In
newuser.addEventListener("click", () =>
    login.classList.add("d-none"));

newuser.addEventListener("click", () =>
    register.classList.remove("d-none"));

newuser.addEventListener("click", () =>
    panel.classList.add("white"));

newuser.addEventListener("click", () =>
    panel.classList.remove("dark"));

newuser.addEventListener("click", () =>
    link_l.classList.remove("d-none"));

newuser.addEventListener("click", () =>
    link_s.classList.add("d-none"));

//! Sign Up
olduser.addEventListener("click", () =>
    panel.classList.add("dark"));

olduser.addEventListener("click", () =>
    panel.classList.remove("white"));

olduser.addEventListener("click", () =>
    register.classList.add("d-none"));

olduser.addEventListener("click", () =>
    login.classList.remove("d-none"));

olduser.addEventListener("click", () =>
    link_l.classList.add("d-none"));

olduser.addEventListener("click", () =>
    link_s.classList.remove("d-none"));