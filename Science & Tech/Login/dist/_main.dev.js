"use strict";

var carousel = document.getElementById("carousel");
var panel = document.getElementById("panel");
var login = document.getElementById("login");
var register = document.getElementById("register");
var newuser = document.getElementById("newuser");
var olduser = document.getElementById("olduser"); //! Log In

newuser.addEventListener("click", function () {
  return login.classList.add("d-none");
});
newuser.addEventListener("click", function () {
  return register.classList.remove("d-none");
});
newuser.addEventListener("click", function () {
  return panel.classList.add("order-first");
}); //! Sign Up

olduser.addEventListener("click", function () {
  return panel.classList.remove("order-first");
});
olduser.addEventListener("click", function () {
  return register.classList.add("d-none");
});
olduser.addEventListener("click", function () {
  return login.classList.remove("d-none");
});