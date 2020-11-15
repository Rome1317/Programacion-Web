/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.scienceandtech.pw_pf.controles.controles;

import com.scienceandtech.pw_pf.controles.models.Guardadas;
import com.scienceandtech.pw_pf.controles.models.Imagen;
import com.scienceandtech.pw_pf.controles.models.Noticia;
import com.scienceandtech.pw_pf.controles.models.Usuario;
import com.scienceandtech.pw_pf.controles.models.dao.GuardadasDAO;
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
@WebServlet(name = "GuardadasServerlet", urlPatterns = {"/GuardadasServerlet"})
public class GuardadasServerlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //Nos trae el id de la tabla guardado para borrarla
        String guardada = request.getParameter("guardada");
        int id_guardada = Integer.parseInt(guardada);
        
        //Nos trae el id de la noticia
        Guardadas noticiaStr = GuardadasDAO.getSearchGuardadas(id_guardada);
        
        //Se elimina de la tabla guardada
        GuardadasDAO.deleteSaveNew(id_guardada);
        
        /*Traemos lo necesario para inicializar la pagina otra vez*/
        Noticia cards = NoticiasDAO.getOneNew(noticiaStr.getFk_noticia());
        
        //Trae las imagenes
        List<Imagen> imagenes =ImagenDAO.getHomeImg(cards);
        cards.setImg(imagenes);
        
        //Trae al usuario en las sesion actual
        HttpSession session = request.getSession();
        Usuario usuario = (Usuario)session.getAttribute("USER"); //trae datos del controller login con la sesion activa
        
        //Trae si esta guardada como DESPUES
        Guardadas Despues = GuardadasDAO.getSaveNews(usuario.getEmail(), noticiaStr.getFk_noticia(), "Despues");
        
        //Trae si esta guardada como FAVORITOS
        Guardadas Favoritas = GuardadasDAO.getSaveNews(usuario.getEmail(), noticiaStr.getFk_noticia(), "Favoritos");
        
        //Envia todo al jsp
        request.setAttribute("Despues", Despues);
        request.setAttribute("Favoritas", Favoritas);
        request.setAttribute("usuario", usuario);
        request.setAttribute("cards", cards);
        
        request.getRequestDispatcher("news.jsp").forward(request, response);         
    }

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         request.getRequestDispatcher("NewsServerlet").forward(request, response); 
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
