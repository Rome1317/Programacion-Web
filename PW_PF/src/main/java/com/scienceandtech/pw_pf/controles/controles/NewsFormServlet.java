/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.scienceandtech.pw_pf.controles.controles;


import com.scienceandtech.pw_pf.controles.models.Imagen;
import com.scienceandtech.pw_pf.controles.models.Noticia;
import com.scienceandtech.pw_pf.controles.models.Noticia_Categoria;
import com.scienceandtech.pw_pf.controles.models.dao.ImagenDAO;
import com.scienceandtech.pw_pf.controles.models.dao.NoticiasDAO;


import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 *
 * @author Gonzalez
 */
@WebServlet(name = "NewsFormServlet", urlPatterns = {"/NewsFormServlet"})
@MultipartConfig(maxFileSize = 1000 * 1000 * 5, maxRequestSize = 1000 * 1000 * 25, fileSizeThreshold = 1000 * 1000)
public class NewsFormServlet extends HttpServlet {

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
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {

        }
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
        processRequest(request, response);
        
      

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
        
        //Titulo
        String title = request.getParameter("title");
        
        //Categorias
        String[] checked = request.getParameterValues("categories[]");
        
        if(checked != null){
            
        }

        //Resumen
        String summary = request.getParameter("summary");
        
        //Subtitulo
        String subtitle = request.getParameter("subtitle");
        
                
        //Contenido
        String content = request.getParameter("content");
        
        
        String user = "";
        
        Noticia article = new Noticia(title,summary,subtitle,content, user);
        
        NoticiasDAO.insertNews(article);
        
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
        
        
        //Imagen 2
        Part file2 = request.getPart("image2");
        String contentType2 = file.getContentType();
        
        String nameImage2 = file2.getName() + System.currentTimeMillis() + FileUtils.GetExtension(contentType2);
        String fullPath2 = path + FileUtils.RUTE_USER_IMAGE + "/" + nameImage2;
    
        file2.write(fullPath2);
       
         
        //Imagen 3
        Part file3 = request.getPart("image3");
        String contentType3 = file.getContentType();
        
        String nameImage3 = file3.getName() + System.currentTimeMillis() + FileUtils.GetExtension(contentType3);
        String fullPath3 = path + FileUtils.RUTE_USER_IMAGE + "/" + nameImage3;
    
        file3.write(fullPath3);
        
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