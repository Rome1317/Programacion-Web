var sub2 = document.getElementById("second");
var sub3 = document.getElementById("third");
var plus = document.getElementById("plus");



plus.addEventListener("click", () =>
    {

        if(sub2.classList.contains("d-none")){

            sub2.classList.remove("d-none")
        }
        else{
            sub3.classList.remove("d-none")
        }

        if(sub3.classList.contains("d-none")){

        }
        else{
            plus.classList.add("disabled")
        }


    }
);







