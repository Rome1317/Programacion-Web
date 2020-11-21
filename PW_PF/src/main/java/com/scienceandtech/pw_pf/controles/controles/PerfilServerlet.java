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

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

/**
 *
 * @author edgar
 */
@WebServlet(name = "PerfilServerlet", urlPatterns = {"/PerfilServerlet"})
@MultipartConfig(maxFileSize = 1000 * 1000 * 5, maxRequestSize = 1000 * 1000 * 25, fileSizeThreshold = 1000 * 1000)
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

   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        HttpSession session = request.getSession();
        Usuario usuario = (Usuario)session.getAttribute("USER"); //trae datos del controller login con la sesion activa

        //Usuario
        String user = request.getParameter("user");
        
        //Password
        String pass = request.getParameter("pass");
        
        //Facebook
        String fb = request.getParameter("fb");
        
        //Twitter
        String tw = request.getParameter("tw");
        
        
         //Ubicacion
        String path = request.getServletContext().getRealPath("");
        
        File fileSaveDir = new File(path + FileUtils.RUTE_USER_IMAGE);
        
        if(!fileSaveDir.exists()){
            fileSaveDir.mkdir();
        }

        //Imagen 1
        Part file = request.getPart("image1");
        String contentType = file.getContentType();
        
        String nameImage = file.getName() + System.currentTimeMillis() + FileUtils.GetExtension(contentType);
        String fullPath = path + FileUtils.RUTE_USER_IMAGE + "/" + nameImage;
    
        file.write(fullPath);
        
        
        Usuario user2 = new Usuario(usuario.getEmail(),user, pass,fb,tw,FileUtils.RUTE_USER_IMAGE + "/" + nameImage);
    
        UsuarioDAO.editUser(user2);
        
        usuario = UsuarioDAO.getEscritor(usuario.getEmail());
        
        session.setAttribute("USER", usuario);    
        
        
        /* recargar pagina */
         
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

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

 

}
