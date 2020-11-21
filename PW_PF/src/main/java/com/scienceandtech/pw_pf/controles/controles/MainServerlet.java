/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.scienceandtech.pw_pf.controles.controles;

import com.scienceandtech.pw_pf.controles.models.Imagen;
import com.scienceandtech.pw_pf.controles.models.Noticia;
import com.scienceandtech.pw_pf.controles.models.Usuario;
import com.scienceandtech.pw_pf.controles.models.dao.ImagenDAO;
import com.scienceandtech.pw_pf.controles.models.dao.NoticiasDAO;
import com.scienceandtech.pw_pf.controles.models.dao.UsuarioDAO;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author edgar
 */
@WebServlet(name = "MainServerlet", urlPatterns = {"/MainServerlet"})
public class MainServerlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

         List<Noticia> cards = NoticiasDAO.getHomeNews();
         List<Imagen> imagenes;
         for(Noticia card : cards){
             imagenes = ImagenDAO.getHomeImg(card);
             card.setImg(imagenes);
         }
         
         //Cosas de sesiones
         HttpSession session = request.getSession();
         Usuario usuario = (Usuario)session.getAttribute("USER");
         
         //Cosas de cookies
         String user = "";
         String password = "";
         Usuario temp = null;
         Cookie[] lasCookies = request.getCookies();
         
         if(lasCookies != null){
             for (Cookie galleta : lasCookies){
                 if("login.user".equals(galleta.getName())){
                    user  = galleta.getValue();
                 }
                 
                 if("login.password".equals(galleta.getName())){
                     password = galleta.getValue();
                 }
                 
                 temp = UsuarioDAO.loginUser(user, password);
                 usuario = temp;
             }
         }
                            
         request.setAttribute("cards", cards);
         request.setAttribute("usuario", usuario);
         request.getRequestDispatcher("index.jsp").forward(request, response);        
    }
   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
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
