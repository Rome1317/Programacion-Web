<%-- 
    Document   : newsform
    Created on : 8/11/2020, 11:41:22 PM
    Author     : Gonzalez
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>News Form | Science & Tech</title>

    <!-- Bootstrap -->
      <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
      integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">

    <!--Font awesome-->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.14.0/css/all.min.css"
        integrity="sha512-1PKOgIY59xJ8Co8+NE6FZ+LOAZKjy+KY8iq0G4B3CyeY6wYHN3yt9PW0XpSriVlkMXe40PTKnXrLnZ9+fkDaog=="
        crossorigin="anonymous" />

    <!-- Logo Icon -->
    <link
    rel="shortcut icon"
    type="image/x-icon"
    href="assets/Recursos/Logo/favicon2.ico"
    sizes="50x50"
    />

    <!-- Icons -->
    <script src="https://kit.fontawesome.com/ab5a1a4d66.js" crossorigin="anonymous"></script>

    <!-- Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Jura:wght@300;400;600;800&display=swap" 
    rel="stylesheet">

    <link href="https://fonts.googleapis.com/css2?family=Oswald:wght@300;400;500&display=swap" rel="stylesheet">

    <!--Custom css-->
    <link rel="stylesheet" href="assets/CSS/styles.css">
    <link rel="stylesheet" href="assets/CSS/form.css">

</head>
<body>
 <!--Menu-->
    <jsp:include page="navbar.jsp"/>

    <div class="container">
        <div class=" col-xl-10 d-flex flex-column m-auto">
            
            <form action="NewsFormServlet"  method="POST" enctype="multipart/form-data"  >
                <div class="form-group">
                  <label for="title">Title</label>
                  <input type="text" class="form-control" name="title" id="title" placeholder="Enter your news title">
                </div>

                <div class="butts">
                    <label>Categories</label>
                    <br>

                    <div class="btn-group-toggle text-xl-center text-lg-center text-md-center" data-toggle="buttons">
                        <label class="btn btn-outline-dark mr-2 mb-2 check" id="btn9">
                          <input type="checkbox" name="categories[]" value="1"> Clima & Ambiente
                        </label>
                        <label class="btn btn-outline-dark mr-2 mb-2 check" id="btn8">
                            <input type="checkbox" name="categories[]" value="2"> Ciencia
                        </label>
                        <label class="btn btn-outline-dark mr-2 mb-2 check" id="btn7">
                            <input type="checkbox" name="categories[]" value="3"> Multimedia
                        </label>
                        <label class="btn btn-outline-dark mr-2 mb-2 check" id="btn6">
                            <input type="checkbox" name="categories[]" value="4"> Tips Tecnologicos
                        </label>
                        <label class="btn btn-outline-dark mr-2 mb-2 check" id="btn5">
                            <input type="checkbox" name="categories[]" value="5"> Videojuegos
                        </label>
                        <label class="btn btn-outline-dark mr-2 mb-2 check" id="btn4">
                            <input type="checkbox" name="categories[]" value="6"> Autos
                        </label>
                        <label class="btn btn-outline-dark mr-2 mb-2 check" id="btn3">
                            <input type="checkbox" name="categories[]" value="7"> Ciberseguridad
                        </label>
                        <label class="btn btn-outline-dark mr-2 mb-2 check" id="btn2">
                            <input type="checkbox" name="categories[]" value="8"> Realidad Virtual
                        </label>
                        <label class="btn btn-outline-dark mr-2 mb-2 check" id="btn">
                            <input type="checkbox" name="categories[]" value="9"> Inteligencia Artificial
                        </label>
                    </div>
                </div>
                
                <div class="form-group">
                  <label for="summary">Summary</label>
                  <textarea class="form-control" name="summary" id="summary" rows="3" placeholder="Enter a summary of your story"></textarea>
                </div>

                <div class="form-group">
                    <label for="exampleFormControlFile1">Image</label>
                    <input type="file" class="form-control-file" name="image1" id="exampleFormControlFile1">
                </div>

                <!--
                <div class="form-group">
                    <label for="caption">Image caption</label>
                    <input type="text" class="form-control" name="caption" id="caption" placeholder="Enter image caption">
                </div>
                -->

                <div class="form-group">
                    <label for="sub1">Subtitle</label>
                    <input type="text" class="form-control" name="subtitle" id="sub1" placeholder="Enter subtitle">
                </div>
                
                <div class="form-group">
                    <label for="exampleFormControlFile2">Image 2</label>
                    <input type="file" class="form-control-file" name="image2" id="exampleFormControlFile2">
                </div>

                <div class="form-group">
                    <label for="text1">Content</label>
                    <textarea class="form-control" name="content" id="text1" rows="3" placeholder="Enter description"></textarea>
                </div>

                <div class="d-none" id="second">

                    <div class="form-group">
                        <label for="sub2">Subtitle 2</label>
                        <input type="text" class="form-control" id="sub2" placeholder="Enter subtitle">
                    </div>

                    <div class="form-group">
                        <label for="text2">Content</label>
                        <textarea class="form-control" id="text2" rows="3" placeholder="Enter description"></textarea>
                    </div>
                </div>

                <div class="d-none" id="third">
                    <div class="form-group">
                        <label for="sub3">Subtitle 3</label>
                        <input type="text" class="form-control" id="sub3" placeholder="Enter subtitle">
                    </div>

                    <div class="form-group">
                        <label for="text3">Content</label>
                        <textarea class="form-control" id="text3" rows="3" placeholder="Enter description"></textarea>
                    </div>
                </div>
                
                <div class="form-group">
                    <label for="exampleFormControlFile3">Image 3</label>
                    <input type="file" class="form-control-file" name="image3" id="exampleFormControlFile3">
                </div>

                <button type="button" class="btn btn-outline-link font-weight-bold mb-4" id="plus"> <i class="fas fa-plus"></i> Add Subtitle</button>
                <button type="submit" class="btn btn-primary font-weight-bold px-4 float-right">Publish</button>
                
              </form>
        </div>
    </div>


     <!--footer-->
     <div class="footer-links">
        <div class="footer-contenedor-pw">
            <ul>
                <li>
                    <a href="#">
                        <h3>S&TCo</h3>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <h6>About Us</h6>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <h6>People</h6>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <h6>History</h6>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <h6>Social Responsability</h6>
                    </a>
                </li>
            </ul>
            <ul>
                <li>
                    <a href="#">
                        <h3>WORK WITH US</h3>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <h6>Newsroom</h6>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <h6>Technology</h6>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <h6>Product & Design</h6>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <h6>Data & Insights Group</h6>
                    </a>
                </li>
            </ul>
            <ul>
                <li>
                    <a href="#">
                        <h3>CONTACT US</h3>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <h6>Press</h6>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <h6>Newsroom</h6>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <h6>Media</h6>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <h6>International Contacts</h6>
                    </a>
                </li>
            </ul>
            <ul>
                <li>
                    <a href="#">
                        <h3>HELP</h3>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <h6>Give Feedback</h6>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <h6>Report</h6>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <h6>Use Website</h6>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <h6>Customer Service</h6>
                    </a>
                </li>
            </ul>
        </div>
    </div>

    <footer class="footer">
        <h6>&#169 2020 Science & Tech. Todos los derechos reservados. </h6>
    </footer>

    <!--SCRIPTS-->

    <!--scroll reveal-->
    <script src="https://unpkg.com/scrollreveal"></script>

    <!--custom js-->
    <script src="assets/JS/header.js"></script>

    <script src="assets/JS/news_form.js"></script>

    <!-- Bootstrap -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
        integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"
        integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN"
        crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"
        integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV"
        crossorigin="anonymous"></script>

</body>
</html>
