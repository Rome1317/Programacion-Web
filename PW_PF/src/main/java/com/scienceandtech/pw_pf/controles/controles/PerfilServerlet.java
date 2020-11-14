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
@WebServlet(name = "PerfilServerlet", urlPatterns = {"/PerfilServerlet"})
public class PerfilServerlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         HttpSession session = request.getSession();
         Usuario usuario = (Usuario)session.getAttribute("USER"); //trae datos del controller login con la sesion activa
         
         //usuario.getUsername();
//         List<Noticia> noticiasCreadas = NoticiaDAO.;
         request.setAttribute("usuario", usuario);
         request.getRequestDispatcher("perfil.jsp").forward(request, response);

    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         HttpSession session = request.getSession();
         Usuario usuario = (Usuario)session.getAttribute("USER"); //trae datos del controller login con la sesion activa
         
         /*Noticias creadas por el usuario*/
         List<Noticia> noticiasCreadas = NoticiasDAO.getUserNews(usuario.getEmail());
         List<Imagen> imagenes;
         for(Noticia card : noticiasCreadas){
             imagenes = ImagenDAO.getHomeImg(card);
             card.setImg(imagenes);
         }
         
         /*Noticias no aprobadas*/
             List<Noticia> noticiasNoArobadas = NoticiasDAO.getNotApproved();
             imagenes = null;
            for(Noticia card : noticiasNoArobadas){
                imagenes = ImagenDAO.getHomeImg(card);
                card.setImg(imagenes);
            }
         
         /*Favoritos*/
          List<Noticia> noticiasFavoritas = NoticiasDAO.getSaveNews("Favoritos",usuario.getEmail());
         imagenes = null;
            for(Noticia card : noticiasFavoritas){
                imagenes = ImagenDAO.getHomeImg(card);
                card.setImg(imagenes);
            }
         /*Ver mas tarde*/
         List<Noticia> noticiasDespues = NoticiasDAO.getSaveNews("Despues",usuario.getEmail());
         imagenes = null;
            for(Noticia card : noticiasDespues){
                imagenes = ImagenDAO.getHomeImg(card);
                card.setImg(imagenes);
            }
         
         request.setAttribute("noticiasFavoritas", noticiasFavoritas);
         request.setAttribute("noticiasDespues", noticiasDespues);
         request.setAttribute("noticiasNoArobadas", noticiasNoArobadas);
         request.setAttribute("noticiasCreadas", noticiasCreadas);
         request.setAttribute("usuario", usuario);
         request.getRequestDispatcher("perfil.jsp").forward(request, response);         
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
