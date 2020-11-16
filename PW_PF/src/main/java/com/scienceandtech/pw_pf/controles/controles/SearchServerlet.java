/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.scienceandtech.pw_pf.controles.controles;

import com.scienceandtech.pw_pf.controles.models.Imagen;
import com.scienceandtech.pw_pf.controles.models.Noticia;
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

/**
 *
 * @author edgar
 */
@WebServlet(name = "SearchServerlet", urlPatterns = {"/SearchServerlet"})
public class SearchServerlet extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
           List<Noticia> cards = NoticiasDAO.getSearchNews("Xbox");
           List<Imagen> imagenes;
            for(Noticia card : cards){
                imagenes = ImagenDAO.getHomeImg(card);
                card.setImg(imagenes);
            }
           request.setAttribute("cards", cards);
           request.getRequestDispatcher("search.jsp").forward(request, response);        
        }
    }
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String buscar = request.getParameter("buscar");
        
        List<Noticia> cards = NoticiasDAO.getSearchNews(buscar);
           List<Imagen> imagenes;
            for(Noticia card : cards){
                imagenes = ImagenDAO.getHomeImg(card);
                card.setImg(imagenes);
            }
        request.setAttribute("cards", cards);
        request.getRequestDispatcher("search.jsp").forward(request, response);  
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
