/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.scienceandtech.pw_pf.controles.controles;

import com.scienceandtech.pw_pf.controles.models.Comentario;
import com.scienceandtech.pw_pf.controles.models.Guardadas;
import com.scienceandtech.pw_pf.controles.models.Imagen;
import com.scienceandtech.pw_pf.controles.models.Noticia;
import com.scienceandtech.pw_pf.controles.models.Usuario;
import com.scienceandtech.pw_pf.controles.models.dao.ComentarioDAO;
import com.scienceandtech.pw_pf.controles.models.dao.GuardadasDAO;
import com.scienceandtech.pw_pf.controles.models.dao.ImagenDAO;
import com.scienceandtech.pw_pf.controles.models.dao.NoticiasDAO;
import com.scienceandtech.pw_pf.controles.models.dao.UsuarioDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author edgar
 */
@WebServlet(name = "GuardadasNewServerlet", urlPatterns = {"/GuardadasNewServerlet"})
public class GuardadasNewServerlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet GuardadasNewServerlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet GuardadasNewServerlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //Nos trae el id de la noticia
        String guardada = request.getParameter("guardada");
        int id_guardada = Integer.parseInt(guardada);
        
        //Nos trae en que lista se ve a guardar
        String etiqueta = request.getParameter("etiqueta");

        //Trae al usuario en las sesion actual
        HttpSession session = request.getSession();
        Usuario usuario = (Usuario)session.getAttribute("USER"); //trae datos del controller login con la sesion activa
        
         //Preguntamos si hay alguien logueado
        if(usuario == null){
            usuario = new Usuario("Anonimo","Anonimo","","", "", "assets/Recursos/Images/perfil.jpg","Registrada", false);
        }
        
        //Agregar a la tabla guardadas
        GuardadasDAO.newSaveNew(usuario.getEmail(),id_guardada, etiqueta);
        
         //Trae si esta guardada como DESPUES
        Guardadas Despues = GuardadasDAO.getSaveNews(usuario.getEmail(), id_guardada, "Despues");
        
        //Trae si esta guardada como FAVORITOS
        Guardadas Favoritas = GuardadasDAO.getSaveNews(usuario.getEmail(), id_guardada, "Favoritos");
        
        //Trae la noticia
         Noticia cards = NoticiasDAO.getOneNew(id_guardada);
        
        //Trae las imagenes
        List<Imagen> imagenes =ImagenDAO.getHomeImg(cards);
        cards.setImg(imagenes);
        
        //Traer datos del que escribio la noticia
        Usuario escritor = UsuarioDAO.getEscritor(cards.getFk_usuario());
        
        //Trae comentarios
        List<Comentario> comentarios = ComentarioDAO.getComentarios(id_guardada);
        
        request.setAttribute("comentarios", comentarios);
        request.setAttribute("escritor", escritor);
        request.setAttribute("Despues", Despues);
        request.setAttribute("Favoritas", Favoritas);
        request.setAttribute("usuario", usuario);
        request.setAttribute("cards", cards);
        request.getRequestDispatcher("news.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
