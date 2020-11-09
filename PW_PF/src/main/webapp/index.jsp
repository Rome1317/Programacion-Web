<%-- 
    Document   : Home
    Created on : Nov 7, 2020, 5:50:43 PM
    Author     : Edgar Donato
--%>
<%@page import="com.scienceandtech.pw_pf.controles.models.Imagen"%>
<%@page import="com.scienceandtech.pw_pf.controles.models.Noticia"%>
<%@page import="java.util.List"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
        List<Noticia> cards = (List<Noticia>)request.getAttribute("cards");
%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Science & Tech</title>

        <!-- Bootstrap -->
          <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
          integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">

        <!--Font awesome-->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.14.0/css/all.min.css"
            integrity="sha512-1PKOgIY59xJ8Co8+NE6FZ+LOAZKjy+KY8iq0G4B3CyeY6wYHN3yt9PW0XpSriVlkMXe40PTKnXrLnZ9+fkDaog=="
            crossorigin="anonymous" />

        <!--Font oswald-->
        <link href="https://fonts.googleapis.com/css2?family=Oswald:wght@300;400;500&display=swap" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css2?family=Jura:wght@300&display=swap" 
        rel="stylesheet"
        >

        <!--Custom css-->
        <link rel="stylesheet" href="assets/CSS/styles.css">
        <link rel="stylesheet" href="assets/CSS/main_page.css">
    </head>
    <body>
        <!--Menu-->
        <nav class="menu" id= "menu">
            <div class="contenedor-pw contenedor-botones-menu">
                <button id="btn-pw-menu-barras" class = "btn-pw-menu-barras"><i class="fas fa-bars"></i></button>
                <a href="pagina_principal.html"><img src="assets/Recursos/Logo/logo.gif" alt=""></a>
                <div class="contenedor-pw contenedor-enlaces-nav">
                    <div class="enlaces">
                        <a href="/HTML/profile.html">Mi Cuenta</a>
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
                       <a href="#" data-categoria="climate-enviroment">Clima & ambiente <i class="fas fa-arrow-right"></i></a>
                       <a href="#" data-categoria="science">Ciencia <i class="fas fa-arrow-right"></i></a>
                       <a href="#" data-categoria="media">Multimedia <i class="fas fa-arrow-right"></i></a>
                       <a href="#" data-categoria="tech-tips">Tips Tecnologicos <i class="fas fa-arrow-right"></i></a>
                       <a href="#" data-categoria="videogames">Videojuegos <i class="fas fa-arrow-right"></i></a>
                       <a href="#" data-categoria="cars">Autos <i class="fas fa-arrow-right"></i></a>
                       <a href="#" data-categoria="Cybersecurity">Ciberseguridad <i class="fas fa-arrow-right"></i></a>
                       <a href="#" data-categoria="virtual-reality">Realida Virtual <i class="fas fa-arrow-right"></i></a>
                       <a href="#" data-categoria="artificial-intelligence">Inteligencia Artificial <i class="fas fa-arrow-right"></i></a>
                    </div>

                    <div class="contenedor-subcategorias">
                        <div class="subcategoria activo" data-categoria="climate-enviroment">
                            <div class="banner-subcategoria">
                                <a href="#">
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

        <!-- Container -->

        <div class="contenedor-pw">
            <!--show case-->
            <header class="showcase">
                <h2>¡Grandes noticias de hoy!</h2>
                <p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Accusamus odio voluptatem, labore saepe dolor
                    quo iure enim inventore quod beatae vero nulla animi obcaecati aspernatur dignissimos quam, ut ea quae.
                </p>
                <a href="#" class="btn-pw">Leer Mas <i class="fas fa-angle-double-right"></i></a>
            </header>

            <!--News-->
            <div class="news-cards">
                <%              
                for (Noticia card : cards){ 
                %>
                <div class="new">
                    <img src="<%= card.getMainImg()%>" alt="Noticia 1">              
                    <h3><%= card.getTitulo()%></h3>
                    <p><%= card.getDescripcion()%></p>
                    <a href="#">Aprender Mas <i class="fas fa-angle-double-right"></i></a>
                </div>
                <% } %>    
            </div>

            <!--Banner-->
            <section class="cards-banner-one">
                <div class="content">
                    <h2>Lorem, ipsum dolor.</h2>
                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ipsam dolorum, qui recusandae eum sed
                        voluptas esse nisi. Dolores, nam reprehenderit.</p>
                    <a href="#" class="btn-pw">Leer Mas <i class="fas fa-angle-double-right"></i></a>
                </div>
            </section>

            <!--News-->
            <div class="news-cards">
                <%for(int i = 0; i < 4; i++){ %>
                <div class="new">
                    <img src="assets/Recursos/Images/Playstation5.jpg " alt="Noticia 1">
                    <h3>Lorem, ipsum dolor.</h3>
                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Dicta optio laudantium praesentium labore
                        expedita quibusdam.</p>
                    <a href="#">Aprender Mas <i class="fas fa-angle-double-right"></i></a>
                </div>
                <% } %>
            </div>

            <div class="news-cards">
                <%for(int i = 0; i < 4; i++){ %>
                <div class="new">
                    <img src="assets/Recursos/Images/Ej6.jpg" alt="Noticia 1">
                    <h3>Lorem, ipsum dolor.</h3>
                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Dicta optio laudantium praesentium labore
                        expedita quibusdam.</p>
                    <a href="#">Aprender Mas <i class="fas fa-angle-double-right"></i></a>
                </div>
                <% } %>
            </div>


            <!--Banner 2-->
            <section class="cards-banner-two">
                <div class="content">
                    <h2>Lorem, ipsum dolor.</h2>
                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Aut ab laborum officiis rem maiores sed
                        consequuntur recusandae asperiores odit quibusdam.</p>
                    <a href="#" class="btn-pw">Leer Mas <i class="fas fa-angle-double-right"></i></a>
                </div>
            </section>

            <!--Social-->
            <section class="social">
                <p>Siguenos Science & Tech</p>
                <div class="links">
                    <a href="https://www.facebook.com/Romeesponja" class="btn btn-link ">
                        <i class="fab fa-facebook-f"></i>
                    </a>
                    <a href="#" class="btn btn-link">
                        <i class="fab fa-twitter"></i>
                    </a>
                    <a href="#" class="btn btn-link">
                        <i class="fab fa-linkedin"></i>
                    </a>
                </div>

            </section>
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
