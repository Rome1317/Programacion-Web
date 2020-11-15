<%-- 
    Document   : news
    Created on : 8/11/2020, 11:51:02 PM
    Author     : Gonzalez
--%>

<%@page import="com.scienceandtech.pw_pf.controles.models.Guardadas"%>
<%@page import="com.scienceandtech.pw_pf.controles.models.Usuario"%>
<%@page import="com.scienceandtech.pw_pf.controles.models.Noticia"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    Noticia cards = (Noticia)request.getAttribute("cards");
    Usuario usuario = (Usuario)request.getAttribute("usuario");
    Guardadas Favoritas = (Guardadas)request.getAttribute("Favoritas");
    Guardadas Despues = (Guardadas)request.getAttribute("Despues");
%>
<!DOCTYPE html>
<html lang="en">
<head>

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>News | Science & Tech</title>

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
    <link rel="stylesheet" href="assets/CSS/news.css">


</head>
<body>
        <!--Menu-->
        <nav class="menu" id= "menu">
            <div class="contenedor-pw contenedor-botones-menu">
                <button id="btn-pw-menu-barras" class = "btn-pw-menu-barras"><i class="fas fa-bars"></i></button>
                <a href="MainServerlet"><img src="assets/Recursos/Logo/logo.gif" alt=""></a>
                <div class="contenedor-pw contenedor-enlaces-nav">
                    <div class="enlaces">
                       <div class="search-box" id="search-box"> 
                                <form action="./SearchServerlet" method="GET" class="">
                                    <button type="submit" id="search" class = "search"><i class="fas fa-search"></i></button>
                                <div class="search-text visible" id="search-text">                                   
                                    <input type="text" class="form-control look " name="buscar" id="buscar" placeholder="What are you looking for?">                             
                                </div>
                                </form>
                            </div>
                                               
                        <%
                            if(usuario != null){
                        %>
                        <img src="<%= usuario.getImagen()%>" class="photo hide" >
                        <a href="PerfilServerlet"><%=usuario.getUsername()%></a>
                        <% 
                            }else{ 
                        %>
                        <a href="/HTML/profile.html">Mi Cuenta</a>
                        <%
                            }
                        %>
                        <a href="#">Populares</a>
                        <a href="#">Ayuda</a>
                    </div>
                </div>

                <button id="btn-pw-menu-cerrar" class = "btn-pw-menu-cerrar"><i class ="fas fa-times"></i></button>
            </div>

            <div class="contenedor-pw contenedor-grid">
                <div class="grid" id="grid">
                    <div class="categorias">
                       <button class ="btn-pw-regresar"><i class="fas fa-arrow-left"></i> Regresar</button>
                       <h3 class="subtitulo">Categorias</h3>
                       <a href="SearchServerlet?buscar=Clima y ambiente" data-categoria="climate-enviroment">Clima & ambiente <i class="fas fa-arrow-right"></i></a>
                       <a href="SearchServerlet?buscar=Ciencia" data-categoria="science">Ciencia <i class="fas fa-arrow-right"></i></a>
                       <a href="SearchServerlet?buscar=Multimedia" data-categoria="media">Multimedia <i class="fas fa-arrow-right"></i></a>
                       <a href="SearchServerlet?buscar=Tips Tecnologicos" data-categoria="tech-tips">Tips Tecnologicos <i class="fas fa-arrow-right"></i></a>
                       <a href="SearchServerlet?buscar=Videojuegos" data-categoria="videogames">Videojuegos <i class="fas fa-arrow-right"></i></a>
                       <a href="SearchServerlet?buscar=Autos" data-categoria="cars">Autos <i class="fas fa-arrow-right"></i></a>
                       <a href="SearchServerlet?buscar=Ciberseguridad" data-categoria="Cybersecurity">Ciberseguridad <i class="fas fa-arrow-right"></i></a>
                       <a href="SearchServerlet?buscar=Realidad Virtual" data-categoria="virtual-reality">Realida Virtual <i class="fas fa-arrow-right"></i></a>
                       <a href="SearchServerlet?buscar=Inteligencia Artificial" data-categoria="artificial-intelligence">Inteligencia Artificial <i class="fas fa-arrow-right"></i></a>
                    </div>

                    <div class="contenedor-subcategorias">
                        <div class="subcategoria activo" data-categoria="climate-enviroment">
                            <div class="banner-subcategoria">
                                <a href="SearchServerlet?busqueda=Clima">
                                    <img src="assets/Recursos/Images/clima5.jpg" alt="">
                                </a>
                            </div>  
                            <div class="galeria-subcategoria">
                                <a href="#">
                                    <img src="assets/Recursos/Images/clima2.jpg" alt="">
                                </a>
                                <a href="#">
                                    <img src="assets/Recursos/Images/clima3.jpg" alt="">
                                </a>
                                <a href="#">
                                    <img src="assets/Recursos/Images/clima4.jpg" alt="">
                                 </a>
                                <a href="#">
                                    <img src="assets/Recursos/Images/clima1.jpg" alt="">
                                </a>
                            </div>   
                        </div>  

                        <div class="subcategoria" data-categoria="science">
                            <div class="banner-subcategoria">
                                <a href="#">
                                    <img src="assets/Recursos/Images/ciencia4.jpg" alt="">
                                </a>
                            </div>  
                            <div class="galeria-subcategoria">
                                <a href="#">
                                    <img src="assets/Recursos/Images/ciencia2.jpg" alt="">
                                </a>
                                <a href="#">
                                    <img src="assets/Recursos/Images/ciencia3.jpg" alt="">
                                </a>
                                <a href="#">
                                    <img src="assets/Recursos/Images/ciencia1.jpg" alt="">
                                 </a>
                                <a href="#">
                                    <img src="assets/Recursos/Images/ciencia5.jpg" alt="">
                                </a>
                            </div>   
                        </div>  

                        <div class="subcategoria" data-categoria="media">
                            <div class="banner-subcategoria">
                                <a href="#">
                                    <img src="assets/Recursos/Images/media1.jpg" alt="">
                                </a>
                            </div>  
                            <div class="galeria-subcategoria">
                                <a href="#">
                                    <img src="assets/Recursos/Images/media2.jpg" alt="">
                                </a>
                                <a href="#">
                                    <img src="assets/Recursos/Images/media3.jpg" alt="">
                                </a>
                                <a href="#">
                                    <img src="assets/Recursos/Images/media4.jpg" alt="">
                                 </a>
                                <a href="#">
                                    <img src="assets/Recursos/Images/media5.jpg" alt="">
                                </a>
                            </div>   
                        </div>

                        <div class="subcategoria" data-categoria="tech-tips">
                            <div class="banner-subcategoria">
                                <a href="#">
                                    <img src="assets/Recursos/Images/tech1.jpg" alt="">
                                </a>
                            </div>  
                            <div class="galeria-subcategoria">
                                <a href="#">
                                    <img src="assets/Recursos/Images/tech2.jpeg" alt="">
                                </a>
                                <a href="#">
                                    <img src="assets/Recursos/Images/tech3.png" alt="">
                                </a>
                                <a href="#">
                                    <img src="assets/Recursos/Images/tech4.jpg" alt="">
                                 </a>
                                <a href="#">
                                    <img src="assets/Recursos/Images/tech5.jpg" alt="">
                                </a>
                            </div>   
                        </div>

                        <div class="subcategoria" data-categoria="videogames">
                            <div class="banner-subcategoria">
                                <a href="#">
                                    <img src="assets/Recursos/Images/vg1.jpg" alt="">
                                </a>
                            </div>  
                            <div class="galeria-subcategoria">
                                <a href="#">
                                    <img src="assets/Recursos/Images/vg2.jpg" alt="">
                                </a>
                                <a href="#">
                                    <img src="assets/Recursos/Images/vg3.jpg" alt="">
                                </a>
                                <a href="#">
                                    <img src="assets/Recursos/Images/vg4.jpg" alt="">
                                 </a>
                                <a href="#">
                                    <img src="assets/Recursos/Images/vg1.jpg" alt="">
                                </a>
                            </div>   
                        </div>

                        <div class="subcategoria" data-categoria="cars">
                            <div class="banner-subcategoria">
                                <a href="#">
                                    <img src="assets/Recursos/Images/car3.jpg" alt="">
                                </a>
                            </div>  
                            <div class="galeria-subcategoria">
                                <a href="#">
                                    <img src="assets/Recursos/Images/car2.jpg" alt="">
                                </a>
                                <a href="#">
                                    <img src="assets/Recursos/Images/car1.jpg" alt="">
                                </a>
                                <a href="#">
                                    <img src="assets/Recursos/Images/car4.jpg" alt="">
                                 </a>
                                <a href="#">
                                    <img src="assets/Recursos/Images/car5.jpg" alt="">
                                </a>
                            </div>   
                        </div>

                        <div class="subcategoria" data-categoria="Cybersecurity">
                            <div class="banner-subcategoria">
                                <a href="#">
                                    <img src="assets/Recursos/Images/cs5.jpg" alt="">
                                </a>
                            </div>  
                            <div class="galeria-subcategoria">
                                <a href="#">
                                    <img src="assets/Recursos/Images/cs1.jpg" alt="">
                                </a>
                                <a href="#">
                                    <img src="assets/Recursos/Images/cs2.jpg" alt="">
                                </a>
                                <a href="#">
                                    <img src="assets/Recursos/Images/cs3.jpg" alt="">
                                 </a>
                                <a href="#">
                                    <img src="assets/Recursos/Images/cs4.jpg" alt="">
                                </a>
                            </div>   
                        </div>

                        <div class="subcategoria" data-categoria="virtual-reality">
                            <div class="banner-subcategoria">
                                <a href="#">
                                    <img src="assets/Recursos/Images/rv1.jpg" alt="">
                                </a>
                            </div>  
                            <div class="galeria-subcategoria">
                                <a href="#">
                                    <img src="assets/Recursos/Images/rv3.jpg" alt="">
                                </a>
                                <a href="#">
                                    <img src="assets/Recursos/Images/rv2.jpg" alt="">
                                </a>
                                <a href="#">
                                    <img src="assets/Recursos/Images/rv4.png" alt="">
                                 </a>
                                <a href="#">
                                    <img src="assets/Recursos/Images/rv5.jpg" alt="">
                                </a>
                            </div>   
                        </div>

                        <div class="subcategoria" data-categoria="artificial-intelligence">
                            <div class="banner-subcategoria">
                                <a href="#">
                                    <img src="assets/Recursos/Images/ia1.jpeg" alt="">
                                </a>
                            </div>  
                            <div class="galeria-subcategoria">
                                <a href="#">
                                    <img src="assets/Recursos/Images/ia2.jpg" alt="">
                                </a>
                                <a href="#">
                                    <img src="assets/Recursos/Images/ia3.jpg" alt="">
                                </a>
                                <a href="#">
                                    <img src="assets/Recursos/Images/ia4.jfif" alt="">
                                 </a>
                                <a href="#">
                                    <img src="assets/Recursos/Images/ia5.jpg" alt="">
                                </a>
                            </div>   
                        </div>
                    </div>
                </div>
            </div>
        </nav>

    <div class="sidebar pt-1" id="panel"> <!--Sidebar Comments-->
        
        <div class="close_btn" id="close">
            <button type="button"  class="btn btn-light"> <i class="fas fa-times"></i></button>
            <br>
        </div>

        <div class="side mt-5">

            <div>
                <h2>Comments</h2>
                <h2 class="total">327</h2>
            </div>

            <form>
                <div class="form-group mt-2">
                    <textarea rows="1" class="form-control mb-3 texta " id="text1" placeholder="Share your thoughts."></textarea>

                    <div class="options d-none" id="opt"> 
                        <button type="button" class="btn btn-outline-dark" id="btnc"> Cancel </button>
                        <button type="submit" class="btn btn-primary btnpost" id="btnp"> Post </button>
                    </div>

                    <h6 class="text2 mb-3">Science & Tech needs your voice. We welcome your on-topic commentary, criticism and expertise.</h6>
                </div>
            </form>

            <div class="bar mb-4">
                <ul class="list-inline">
                    <li class="list-inline-item">
                        <a href="#">All</a>
                     </li>
                    <li class="list-inline-item">
                        <a href="#">Popular</a>
                    </li>
                </ul>
            </div>

            <form>
            <div class="post answer ml-1" id ="post">
                <div class="mb-3">
                    <h6 class="font-weight-bold mb-0">Rome Glz</h6>
                    <h6 class="text-muted">Victoria </h6>
                    <h6 class="text-muted">|</h6>
                    <h6 class="text-muted">2min ago </h6>
                </div>

                <div class="opinion">
                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Et minima exercitationem quasi, at nemo ab numquam voluptas qui enim, deleniti laboriosam ratione similique voluptatibus dolores, neque impedit ipsa ducimus consectetur.</p>
                </div>

                <div class="mb-1 " id="">
                    <form action="" >
                        <a href="#" class="mr-2" id="reply_btn">Reply</a>
                        <a href="#" class="mr-2">Share</a>

                        <div class="btns">

                            <button type="submit" class="btn btn-link " id="ban"><i class="fas fa-ban"></i> </button>
                            <button type="submit" class="btn btn-link " id="delete"><i class="far fa-trash-alt"></i> </button>

                        </div>


                        <div class="d-none" id="respond">

                            <textarea rows="1" class="form-control mb-3 texta " id="text2" placeholder="Reply to this comment."></textarea>

                           
                            <div class="options"> 
                                <button type="button" class="btn btn-outline-dark" id="btnc2"> Cancel </button>
                                <button type="submit" class="btn btn-primary btnpost" id="btnp2"> Post </button>
                            </div>

                        </div> 
                
                    </form>
                </div>

                <div class="replies ml-4">
                    <div class="mb-3">
                        <h6 class="font-weight-bold mb-0">Rome Glz</h6>
                        <h6 class="text-muted">Victoria </h6>
                        <h6 class="text-muted">|</h6>
                        <h6 class="text-muted">2min ago </h6>
                    </div>

                    <div class="opinion">
                        <p>Donas me la pela.</p>
                    </div>

                    <div class="btns">

                        <button type="submit" class="btn btn-link" id="ban"><i class="fas fa-ban"></i> </button>
                        <button type="submit" class="btn btn-link" id="delete"><i class="far fa-trash-alt"></i> </button>
           
                    </div>

                </div> 

            </div>
            </form>


        </div>
    </div>

    <div class="container">
        <div class="title">
            
        <!--titulo-->
            <img src="assets/Recursos/Images/15.jpg" alt="" class="main-img">
            <h2><%= cards.getTitulo() %> </h2>
        </div>

        <div class="foot">
            <!-- descripcion -->
            <h2><%=cards.getDescripcion()%></h2>
        </div>

        <div class="writer">
            <!--PERFIL IMAGENES -->
            <img src="<%= usuario.getImagen()%>" alt="" class="perfil">
            <h2>Por <%= usuario.getUsername()%></h2>

            <h6><%=cards.getFecha()%></h6>

            <div class="butts">
                <button type="submit"  class="btn btn-light"> <i class="fab fa-facebook-f"></i></button>
                <button type="submit"  class="btn btn-light"> <i class="fab fa-twitter"></i></i></button>
                <!--Favoritos-->
                <%
                    if(Favoritas != null){
                %>
                <!--SI ES SU NOTICIA FAV ASI QUE SI LE PICA SI QUITA DE LA TABLA-->
                <a href="GuardadasServerlet?guardada=<%= Favoritas.getId_guardadas()%>" type="submit"  class="btn"><i class="fas fa-crown"></i></i></a>
                <%
                   }else{
                %>
                <!--NO ES SU NOTICIA FAVORITA ASI QUE SI LE PICA SE AGREGA A LA TABLA-->
                <a href="GuardadasNewServerlet?guardada=<%= cards.getId_noticia()%>" type="submit"  class="btn btn-light"><i class="fas fa-crown"></i></i></a>
                <%
                    }
                %>
                <button type="submit"  class="btn btn-light"><i class="fas fa-share"></i></button>
                
                <!--Ver mas tarde-->
                <%
                    if(Despues != null){
                %>
                <!--ESTA EN SU LISTA DE VER DESPUES ASI QUE SE QUITA DE LA TABLA-->
                <button type="submit"  class="btn"><i class="fas fa-bookmark"></i></i></button>
                 <%
                   }else{
                %>
                <!--NO ESTA EN SU LISTA DE VER DESPUES ASI QUE AGREGGAR A LA TRABLA-->
                <button type="submit"  class="btn btn-light"><i class="fas fa-bookmark"></i></i></button>
                 <%
                    }
                %>
                
                <button type="submit"  class="btn btn-link" id="btnop"><i class="fas fa-comments"></i></button>
            </div>

        </div>

        <div class="text">
            <h2><%= cards.getTitulo() %> </h2>
            <p><%= cards.getDescripcion() %></p>
            
            <img src="<%=cards.getMainImg()%>" alt="" class = "images">
           
             <p><%= cards.getResumen() %></p>        
             <img src="<%=cards.getImg().get(1).getExtencion()%>" alt="" class = "images">
             <p><%= cards.getNoticia() %></p>
             <img src="<%=cards.getImg().get(2).getExtencion()%>" alt="" class = "images">
        </div>

        <div class="comment">
            <div class="butts">
                <button type="submit" class="btn btn-primary btncom d-none" id="btnop2"> Read Comments </button>
                <%if(cards.isAprovado() == false && (usuario.getRol().equals("Administrador") == true || usuario.getRol().equals("Editor") == true)){%>
                <button type="button" class="btn btn-outline-success btncom" id="btnop3"> Approve </button>
                <%}%>
                <button type="<%=usuario.getFacebook()%>"  class="btn btn-light"> <i class="fab fa-facebook-f"></i></button>
                <button type="<%=usuario.getTwitter()%>"  class="btn btn-light"> <i class="fab fa-twitter"></i></i></button>
                <button type="submit"  class="btn btn-light"><i class="fas fa-crown"></i></button>
                <button type="submit"  class="btn btn-light"><i class="fas fa-share"></i></button>
                <button type="submit"  class="btn btn-link"><i class="fas fa-bookmark"></i></i></button>
       
            </div>
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

    <script src="assets/JS/comments.js"></script>
    
    <script src="assets/JS/news.js"></script>

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