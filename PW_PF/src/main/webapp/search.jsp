<%-- 
    Document   : search
    Created on : Nov 10, 2020, 2:38:20 PM
    Author     : edgar
--%>

<%@page import="java.util.List"%>
<%@page import="com.scienceandtech.pw_pf.controles.models.Noticia"%>
<%@page import="com.scienceandtech.pw_pf.controles.models.Noticia"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    List<Noticia> cards = (List<Noticia>)request.getAttribute("cards");
%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Document</title>

         <!-- Bootstrap -->
         <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
         integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">

        <!--Font awesome-->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.14.0/css/all.min.css"
        integrity="sha512-1PKOgIY59xJ8Co8+NE6FZ+LOAZKjy+KY8iq0G4B3CyeY6wYHN3yt9PW0XpSriVlkMXe40PTKnXrLnZ9+fkDaog=="
        crossorigin="anonymous" />

        <!--Font oswald-->
        <link href="https://fonts.googleapis.com/css2?family=Oswald:wght@300;400;500&display=swap" rel="stylesheet">

        <!--Custom css-->
        <link rel="stylesheet" href="assets/CSS/styles.css">
        <link rel="stylesheet" href="assets/CSS/search.css">       
    </head>
    <body>
        <!--Menu-->
            <jsp:include page="navbar.jsp"/>

          
            <div class="contenedor-pw">               
                <div class="contenedor-noticia">
                    <%
                    for(Noticia card : cards){                             
                    %>
                    <div class = "search-noticia">
                        <a href="NewsServerlet?noticia=<%=card.getId_noticia()%>"><%= card.getTitulo()%>.</a>
                        <p><%= card.getDescripcion()%></p>
                        <img src="<%= card.getMainImg()%>" alt="Noticia 1">
                    </div>
                    <hr>
                    <%
                    }
                    %>
                </div>              
            </div>
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

            <!--custom js-->
        <script src="assets/JS/header.js"></script>
    </body>
</html>
