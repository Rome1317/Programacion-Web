var btn3 = document.getElementById("btnop3");
var btn2 = document.getElementById("btnop2");
var btn4 = document.getElementById("btnop4");

btn3.addEventListener("click", () =>{
    btn2.classList.toggle("d-none")
    btn3.classList.add("d-none")
    btn4.classList.add("d-none")
});

var reject = document.getElementById("reject");
var cancel = document.getElementById("cancel");

btn4.addEventListener("click", () =>{
    reject.classList.toggle("d-none");
});

cancel.addEventListener("click", () =>{
    reject.classList.toggle("d-none");
});