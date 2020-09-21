//* Validations

(function(){


    var form = document.getElementsByName("form")[0];
    var button = document.getElementById("button");

    var username = function(e){
        if(form.user.value == 0){

            var user = document.getElementById("user");

            user.setAttribute("class", "invalid");

            e.preventDefault();
        }
    };

    var username = function(e){
        if(form.pass.value == 0){
            e.preventDefault();
        }
    };
    
    var validate = function(e){
        username(e);
        password(e);

    };


    form.addEventListener("submit", validate);


}())
