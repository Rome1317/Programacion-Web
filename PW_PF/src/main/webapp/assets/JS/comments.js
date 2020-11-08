var btn = document.getElementById("btnop");
var btn2 = document.getElementById("btnop2");
var closebtn = document.getElementById("close");
var sidebar = document.getElementById("panel");
var text = document.getElementById("text1");
var opt = document.getElementById("opt");
var clear = document.getElementById("btnc");

btn.addEventListener("click", () =>
    sidebar.classList.toggle("active"));

btn2.addEventListener("click", () =>
    sidebar.classList.toggle("active"));

closebtn.addEventListener("click", () =>
    sidebar.classList.remove("active"));

text.addEventListener("click", () =>
    text.rows="5"     
);

clear.addEventListener("click", () =>
    text.value = ''
);

document.addEventListener('click', function(event) {
    var isClickInside = text.contains(event.target);
  
    if (!isClickInside) {
      //the click was outside the specifiedElement, do something
      text.rows="1"
      opt.classList.add("d-none")
    }
    else{
        opt.classList.remove("d-none")
    }
  });