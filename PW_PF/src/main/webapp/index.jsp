<%-- 
    Document   : Home
    Created on : Nov 7, 2020, 5:50:43 PM
    Author     : Edgar Donato
--%>
<%@page import="com.scienceandtech.pw_pf.controles.models.Usuario"%>
<%@page import="com.scienceandtech.pw_pf.controles.models.Imagen"%>
<%@page import="com.scienceandtech.pw_pf.controles.models.Noticia"%>
<%@page import="java.util.List"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
        List<Noticia> cards = (List<Noticia>)request.getAttribute("cards");
        Usuario usuario = (Usuario)request.getAttribute("usuario");
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
        <jsp:include page="navbar.jsp"/>

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
                int j = 0;
                for (Noticia card : cards){ 
                    if(j < 4){
                %>
                <div class="new">
                    <img src="<%= card.getMainImg()%>" alt="Noticia 1">              
                    <h3><%= card.getTitulo()%></h3>
                    <p><%= card.getDescripcion()%></p>
                    <a href="NewsServerlet?noticia=<%=card.getId_noticia()%>">Aprender Mas <i class="fas fa-angle-double-right"></i></a>
                </div>
                <% 
                    }
                    j++;
                } 
                %>    
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
                <%      
                j = 0;
                for (Noticia card : cards){ 
                    if(j >= 4 && j < 12){
                %>
                <div class="new">
                    <img src="<%= card.getMainImg()%>" alt="Noticia 1">              
                    <h3><%= card.getTitulo()%></h3>
                    <p><%= card.getDescripcion()%></p>
                    <a href="NewsServerlet?noticia=<%=card.getId_noticia()%>">Aprender Mas <i class="fas fa-angle-double-right"></i></a>
                </div>
                <% 
                    }
                    j++;
                } 
                %>  
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
