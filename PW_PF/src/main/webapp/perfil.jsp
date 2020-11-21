<%-- 
    Document   : perfil
    Created on : Nov 11, 2020, 11:47:37 PM
    Author     : edgar
--%>

<%@page import="java.util.List"%>
<%@page import="com.scienceandtech.pw_pf.controles.models.Noticia"%>
<%@page import="com.scienceandtech.pw_pf.controles.models.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% 
    Usuario usuario = (Usuario)request.getAttribute("usuario");
    List<Noticia> noticiasCreadas = (List<Noticia>)request.getAttribute("noticiasCreadas");
    List<Noticia> noticiasNoArobadas = (List<Noticia>)request.getAttribute("noticiasNoArobadas");
    List<Noticia> noticiasDespues = (List<Noticia>)request.getAttribute("noticiasDespues");
    List<Noticia> noticiasFavoritas = (List<Noticia>)request.getAttribute("noticiasFavoritas");
    
%>
<!DOCTYPE html>
<html>
    <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Perfil</title>

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

    <link rel="stylesheet" href="assets/CSS/profile_page.css">
    </head>
    
    <body>
         <!-- Header/Menu  -->
     <jsp:include page="navbar.jsp"/>

    <!-- Container -->
    <div class="contenedor-pw" id="contenedor-pw">
        <!-- CSS GRID -->
        <div class="profile" id="profile">

            <header class="header-pw">
                <!-- <img src="/Recursos/Images/rv1.jpg" alt="" class="portada-pw"> -->
                <img src="<%= usuario.getImagen()%>" alt="" class = "avatar-pw">
                <h2 class="user-name"><%= usuario.getUsername()%></h2>
<!--                <h2 class="user-name"><%= usuario.getRol()%></h2>-->
                <!-- <h2>EDGAR DONATO CALVILLO LUMBRERAS</h2> -->
            </header>

            <aside class="sidebar-pw">
                <button data-opciones="informacion"> <i class="fas fa-id-card"></i></i>   Informacion</a>
                <%if(usuario.getRol().equals("Administrador") == true || usuario.getRol().equals("Creador Contenido" ) == true ){ %>
                <button data-opciones="mis-noticias"> <i class="fas fa-book-open"></i>   Mis Noticias</button>
                <% } %>  
                <%if(usuario.getRol().equals("Administrador") == true || usuario.getRol().equals("Editor") ) {%>
                <button data-opciones="gestion"> <i class="fas fa-tasks"></i>   Gestionar Noticias</button> 
                <% } %>  
                <%if(usuario.getRol().equals("Moderador") == false) {%>
                <button data-opciones="mas-tarde"> <i class="fas fa-clock"></i>   Ver mas tarde</button>
                <% } %>  
                <%if(usuario.getRol().equals("Moderador") == false) {%>
                <button data-opciones="favoritos"> <i class="fas fa-crown"></i>   Favoritos</button>  
                <% } %> 
<!--                <a href = "LogOutServerlet" data-opciones="logout"> <i class="fas fa-door-open"></i> Log out</a>-->
            </aside>

            <div class="panel-pw">
                <div class="contenedor-opciones">
                    <div class="opcion" id="opcion" data-opciones="informacion">
                        <h2>INFORMACION DEL PERFIL</h2>
                        <hr>
                        <form action="./PerfilServerlet" method="Post" enctype="multipart/form-data">

                            <div class="row mb-3">
                                <div class="col">
                                    <label for="validationCustom01">Email</label>
                                    <input type="text" class="form-control" value="<%= usuario.getEmail()%>" name="email" placeholder="Email">
                                </div>

                                <div class="col">
                                    <label for="validationCustom02">User</label>
                                    <input type="text" class="form-control" value="<%= usuario.getUsername()%>"  name="user" placeholder="Username">
                                </div>

                            </div>


                            <div class="row mb-3">
                                <div class="col">
                                    <label for="validationCustom03">Password</label>
                                    <input type="text" class="form-control" value="<%= usuario.getPass()%>" name="pass" placeholder="Password">
                                </div>

                                <div class="col">
                                    <label for="exampleFormControlFile1">Image</label>
                                    <input type="file" class="form-control-file" value="<%= usuario.getImagen()%>" name="image1" id="exampleFormControlFile1">
                                </div>

                            </div>
                            
                            <div class="row mb-3">
                                <div class="col">
                                    <label for="validationCustom04">Facebook</label>
                                    <input type="text" class="form-control" value="<%= usuario.getFacebook()%>" name="fb" placeholder="Facebook">
                                </div>

                                <div class="col">
                                    <label for="validationCustom05">Twitter</label>
                                    <input type="text" class="form-control" value="<%= usuario.getTwitter()%>" name="tw" placeholder="Twitter">
                                </div>

                            </div>

                            <div class="row float-right mt-2">
                                <div class="col">
                                    <button type="submit" class="btn btn-outline-info">Save Changes</button>
                                </div>

                            </div>

                        </form>
                    </div>
                    
                    <div class="opcion" id="opcion" data-opciones="mis-noticias">
                        <h2>MIS NOTICIAS</h2>
                        <hr>
                        <%
                        if(noticiasCreadas != null){
                        %>
                    <div class="news-cards">
                        <%                            
                            for (Noticia card : noticiasCreadas){                           
                        %>
                        
                        <div class="new">
                            <img src="<%= card.getMainImg()%>" alt="Noticia 1">              
                            <h3><%= card.getTitulo()%></h3>
                            <p><%= card.getDescripcion()%></p>                               
                                
                                <i class="fas fa-angle-double-right"></i></a>
                        </div>                         
                         <% } %>
                     </div>
                        <% 
                        }else{
                        %>
                        <h3>No cuenta con noticias creadas</h3>
                        <%
                        }
                        %>
                    </div>          
                      
                   
                   
                    <div class="opcion" id="opcion" data-opciones="gestion">
                        <h2>GESTIONAR NOTICIAS</h2>
                        <hr>
                         <%
                        if(noticiasCreadas != null){
                        %>
                    <div class="news-cards">
                        <%                            
                            for (Noticia card : noticiasNoArobadas){                           
                        %>
                        
                        <div class="new">
                            <img src="<%= card.getMainImg()%>" alt="Noticia 1">              
                            <h3><%= card.getTitulo()%></h3>
                            <p><%= card.getDescripcion()%></p>
                            <a href="NewsServerlet?noticia=<%=card.getId_noticia()%>">Ver Mas <i class="fas fa-angle-double-right"></i></a>
                        </div>                         
                         <% } %>
                    </div>
                        <% 
                        }else{
                        %>
                        <h3>No cuenta con noticias por aprobar</h3>
                        <%
                        }
                        %>
                    </div>
                 
                    
                    
                    <div class="opcion" id="opcion" data-opciones="mas-tarde">
                        <h2>VER MAS TARDE</h2>
                        <hr>
                        <%
                        if(noticiasCreadas != null){
                        %>
                    <div class="news-cards">
                        <%                            
                            for (Noticia card : noticiasDespues){                           
                        %>
                        
                        <div class="new">
                            <img src="<%= card.getMainImg()%>" alt="Noticia 1">              
                            <h3><%= card.getTitulo()%></h3>
                            <p><%= card.getDescripcion()%></p>
                            <a href="NewsServerlet?noticia=<%=card.getId_noticia()%>">Ver Mas <i class="fas fa-angle-double-right"></i></a>
                        </div>                         
                         <% } %>
                    </div>
                        <% 
                        }else{
                        %>
                        <h3>No cuenta con noticias por aprobar</h3>
                        <%
                        }
                        %>
                    </div>  
                    
                    
                    <div class="opcion" id="opcion" data-opciones="favoritos">
                        <h2>FAVORITOS</h2>
                        <hr>
                         <%
                        if(noticiasCreadas != null){
                        %>
                    <div class="news-cards">
                        <%                            
                            for (Noticia card : noticiasFavoritas){                           
                        %>
                        
                        <div class="new">
                            <img src="<%= card.getMainImg()%>" alt="Noticia 1">              
                            <h3><%= card.getTitulo()%></h3>
                            <p><%= card.getDescripcion()%></p>
                            <a href="NewsServerlet?noticia=<%=card.getId_noticia()%>">Ver Mas <i class="fas fa-angle-double-right"></i></a>
                        </div>                         
                         <% } %>
                    </div>
                        <% 
                        }else{
                        %>
                        <h3>No cuenta con noticias por aprobar</h3>
                        <%
                        }
                        %>
                    </div>  

                </div>
               
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

    <!-- SCRIPS -->

    <!--custom js-->
    <script src="assets/JS/profile.js"></script>
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
