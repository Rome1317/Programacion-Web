/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.scienceandtech.pw_pf.controles.controles;

import com.scienceandtech.pw_pf.controles.models.Usuario;
import java.io.IOException;
import java.io.PrintWriter;
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
@WebServlet(name = "LogOutServerlet", urlPatterns = {"/LogOutServerlet"})
public class LogOutServerlet extends HttpServlet {


    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet LogOutServerlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet LogOutServerlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
                    
        Cookie[] lasCookies = request.getCookies();
        if(lasCookies != null){
            for (Cookie galleta : lasCookies){
                 if("login.user".equals(galleta.getName())){
                    galleta.setMaxAge(0);
                 }
                 
                 if("login.password".equals(galleta.getName())){
                     galleta.setMaxAge(0);            
                 }
            }
        }
        HttpSession session = request.getSession();
        Usuario usuario = null;
        session.setAttribute("USER", usuario);
      
        request.getRequestDispatcher("MainServerlet").forward(request, response);
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
