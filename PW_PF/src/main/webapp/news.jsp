<%-- 
    Document   : news
    Created on : 8/11/2020, 11:51:02 PM
    Author     : Gonzalez
--%>

<%@page import="com.scienceandtech.pw_pf.controles.models.Comentario"%>
<%@page import="java.util.List"%>
<%@page import="com.scienceandtech.pw_pf.controles.models.Guardadas"%>
<%@page import="com.scienceandtech.pw_pf.controles.models.Usuario"%>
<%@page import="com.scienceandtech.pw_pf.controles.models.Noticia"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    Noticia cards = (Noticia)request.getAttribute("cards");
    Usuario usuario = (Usuario)request.getAttribute("usuario");
    Guardadas Favoritas = (Guardadas)request.getAttribute("Favoritas");
    Guardadas Despues = (Guardadas)request.getAttribute("Despues");
    List<Comentario> comentarios = (List<Comentario>)request.getAttribute("comentarios");
    Usuario escritor = (Usuario)request.getAttribute("escritor");
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
        <jsp:include page="navbar.jsp"/>

    <div class="sidebar pt-1" id="panel"> <!--Sidebar Comments-->
        
        <div class="close_btn" id="close">
            <button type="button"  class="btn btn-light"> <i class="fas fa-times"></i></button>
            <br>
        </div>

        <div class="side mt-5">
            <div>
                <h2>Comentarios</h2>
<!--                <h2 class="total">327</h2>-->
            </div>

            <form  action="NewComentarioServerlet?id=<%=cards.getId_noticia()%>&id_padre=0" method="POST">
                <%if(usuario.isBaneado() == false){%>
                <div class="form-group mt-2">
                    <textarea rows="1" class="form-control mb-3 texta " id="text1" placeholder="Share your thoughts."  name = "comentario"></textarea>
                    
                    <div class="options d-none" id="opt"> 
                        <button type="button" class="btn btn-outline-dark" id="btnc"> Cancel </button>
                        <button type="submit" class="btn btn-primary btnpost" id="btnp" name=" "> Post </button>
                    </div>

                    <h6 class="text2 mb-3">Science & Tech needs your voice. We welcome your on-topic commentary, criticism and expertise.</h6>
                </div>
                <%}%>
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

                                   
            <div class="post answer ml-1" id ="post">
                <!--PRIMER FOR DE COMENTRAIOS PADRE-->
                <%
                    for(Comentario com : comentarios){
                        if(com.getId_padre() == 0){
                %>
                <div class="mb-3">
                    <h6 class="font-weight-bold mb-0"><%= com.getFk_usuario()%></h6>
<!--                    <h6 class="text-muted">Victoria </h6>
                    <h6 class="text-muted">|</h6>
                    <h6 class="text-muted">2min ago </h6>-->
                </div>
                <div class="opinion">
                   <!--COMENTARIO-->
                    <p><%= com.getComentario()%></p>
                </div>
                
                  <div class="mb-1" id="">
                    
                    <form action = "NewComentarioServerlet?id=<%=cards.getId_noticia()%>&id_padre=<%=com.getId_comentario()%>" method="POST">
                        <a href="#" class="mr-2" id="reply_btn">Reply</a>
                        <a href="#" class="mr-2">Share</a>
                        
                        <div class="btns">
                            <%if(usuario.getRol().equals("Administrador") == true || usuario.getRol().equals("Moderador") == true){%>
                            <a href = "BanServerlet?email=<%=com.getFk_usuario()%>&id_not=<%=cards.getId_noticia()%>" type="submit" class="btn btn-link unpressed" id="ban"><i class="fas fa-ban"></i> </a>
                            <a href = "BorrarComServerlet?id_com=<%=com.getId_comentario()%>&id_not=<%=cards.getId_noticia()%>" type="submit" class="btn btn-link unpressed" id="delete"><i class="far fa-trash-alt"></i> </a>
                            <%
                                }
                            %>
                        </div>
                        <%if(usuario.isBaneado() == false){%>
                        <div class="d-none" id="respond">
                            <textarea rows="1" class="form-control mb-3 texta " id="text2" placeholder="Reply to this comment." name ="comentario"></textarea>                          
                            <div class="options"> 
                                <button type="button" class="btn btn-outline-dark" id="btnc2"> Cancel </button>
                                <button type="submit" class="btn btn-primary btnpost" id="btnp2"> Post </button>
                            </div>
                        </div> 
                        <%}%>
                    </form>
                </div>
                <% } %>
                    <%
                        for(Comentario comen : comentarios){
                            if(com.getId_comentario() == comen.getId_padre()){
                    %>
                <div class="replies ml-4">
                    <div class="mb-3">
                        <h6 class="font-weight-bold mb-0"><%=comen.getFk_usuario()%></h6>
                        <h6 class="text-muted">2min ago </h6>
                    </div>

                    <div class="opinion">
                        <p><%=comen.getComentario()%></p>
                    </div>

                    <div class="btns">
                        <%if(usuario.getRol().equals("Administrador") == true || usuario.getRol().equals("Moderador") == true){%>
                        <a href = "BanServerlet?email=<%=com.getFk_usuario()%>&id_not=<%=cards.getId_noticia()%>" type="submit" class="btn btn-link unpressed" id="ban"><i class="fas fa-ban"></i> </a>
                        <a href = "BorrarComServerlet?id_com=<%=comen.getId_comentario()%>&id_not=<%=cards.getId_noticia()%>" type="submit" class="btn btn-link unpressed" id="delete"><i class="far fa-trash-alt"></i> </a>
                        <%
                            }
                        %>
                    </div>

                </div> 
                <% 
                    }
                   }
                %>
              
               
                    <%
                       
                     }
                    %>
            </div>
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

            <img src="<%= escritor.getImagen()%>" alt="" class="perfil">
            <h2>Por <%= escritor.getUsername()%></h2>
            
            <%if(usuario.getRol().equals("Administrador") == true || usuario.getRol().equals("Editor") ) {%>
                 <a type="button" class="btn btn-outline-dark edit" id="" href="NewsEditServlet?id=<%=cards.getId_noticia()%>"><i class="far fa-edit"></i></a>
            <% } %>  
           


            <h6><%=cards.getFecha()%></h6>

            <div class="butts">
                <a href="<%=escritor.getFacebook()%>" type="submit"  class="btn btn-light"> <i class="fab fa-facebook-f"></i></a>
                <a href="<%=escritor.getTwitter()%>" type="submit"  class="btn btn-light"> <i class="fab fa-twitter"></i></i></a>
                <!--Favoritos-->
                <%
                    if(usuario.getUsername().equals("Anonimo") == false){
                        if(Favoritas != null){
                %>
                <!--SI ES SU NOTICIA FAV ASI QUE SI LE PICA SI QUITA DE LA TABLA-->
                <a href="GuardadasServerlet?guardada=<%= Favoritas.getId_guardadas()%>" type="submit"  class="btn"><i class="fas fa-crown"></i></i></a>
                <%
                        }else{
                %>
                <!--NO ES SU NOTICIA FAVORITA ASI QUE SI LE PICA SE AGREGA A LA TABLA-->
                <a href="GuardadasNewServerlet?guardada=<%= cards.getId_noticia()%>&etiqueta=Favoritos" type="submit"  class="btn btn-light"><i class="fas fa-crown"></i></i></a>
                <%
                        }
                %>
                <button type="submit"  class="btn btn-light"><i class="fas fa-share"></i></button>
                
                <!--Ver mas tarde-->
                <%
                        if(Despues != null){
                %>
                <!--ESTA EN SU LISTA DE VER DESPUES ASI QUE SE QUITA DE LA TABLA-->
                <a href="GuardadasServerlet?guardada=<%= Despues.getId_guardadas()%>" type="submit"  class="btn"><i class="fas fa-bookmark"></i></i></a>
                <%
                        }else{
                %>
                <!--NO ESTA EN SU LISTA DE VER DESPUES ASI QUE AGREGGAR A LA TRABLA-->
                <a href="GuardadasNewServerlet?guardada=<%= cards.getId_noticia()%>&etiqueta=Despues" type="submit"  class="btn btn-light"><i class="fas fa-bookmark"></i></i></a>
                 <%
                        }
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
             
         <%if(cards.isAprovado() == false && (usuario.getRol().equals("Administrador") == true || usuario.getRol().equals("Editor") == true)){%>
        <div class="comment">
            <div class="butts">
                <div class="cell">

                   
                    <%if(cards.isAprovado() == true) {%>
                         <button type="submit" class="btn btn-primary btncom" id="btnop2"> Read Comments </button>
                    <%}%> 
                    <%if(cards.isAprovado() == false && (usuario.getRol().equals("Administrador") == true || usuario.getRol().equals("Editor") == true)){%>
                        <a href = "AprobarNoticiasServerlet?id=<%= cards.getId_noticia()%>" type="button" class="btn btn-outline-success size mr-3" id="btnop3"> Approve </a>
                        <button type="button" class="btn btn-outline-danger size " id="btnop4"> Reject </button>
                        <div class="reject d-none" id="reject">
                    <form action="NewsDenyServlet?id=<%=cards.getId_noticia()%>"  method="post">
                        <div class="form-group mt-4">
                          <h6>Report your reasons to the writer</h6>
                          <textarea class="form-control" id="reasons" name="reasons" rows="3" placeholder="Share your thoughts about this article"></textarea>
                        </div>

                        <div class="options" id="opt">
                            <button type="button" class="btn btn-outline-dark" id="cancel"> Cancel </button>
                            <button type="submit" class="btn btn-primary btnpost" id="send" href=""> Send </button>
                        </div>
                      </form>
                </div>
                    <%}%>

                </div>

                
            </div>
        </div>
        <%}%>
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