"use strict";

var panel = document.getElementById("panel");
var login = document.getElementById("login");
var register = document.getElementById("register");
var newuser = document.getElementById("newuser");
var olduser = document.getElementById("olduser");
var link_s = document.getElementById("link-sign");
var link_l = document.getElementById("link-login"); //! Log In

newuser.addEventListener("click", function () {
  return login.classList.add("d-none");
});
newuser.addEventListener("click", function () {
  return register.classList.remove("d-none");
});
newuser.addEventListener("click", function () {
  return panel.classList.add("white");
});
newuser.addEventListener("click", function () {
  return panel.classList.remove("dark");
});
newuser.addEventListener("click", function () {
  return link_l.classList.remove("d-none");
});
newuser.addEventListener("click", function () {
  return link_s.classList.add("d-none");
}); //! Sign Up

olduser.addEventListener("click", function () {
  return panel.classList.add("dark");
});
olduser.addEventListener("click", function () {
  return panel.classList.remove("white");
});
olduser.addEventListener("click", function () {
  return register.classList.add("d-none");
});
olduser.addEventListener("click", function () {
  return login.classList.remove("d-none");
});
olduser.addEventListener("click", function () {
  return link_l.classList.add("d-none");
});
olduser.addEventListener("click", function () {
  return link_s.classList.remove("d-none");
});