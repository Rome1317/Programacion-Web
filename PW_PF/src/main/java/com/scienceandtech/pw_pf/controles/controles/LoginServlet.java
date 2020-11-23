/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.scienceandtech.pw_pf.controles.controles;


import com.scienceandtech.pw_pf.controles.models.Usuario;
import com.scienceandtech.pw_pf.controles.models.dao.UsuarioDAO;
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
@WebServlet(name = "LoginServlet", urlPatterns = {"/LoginServlet"})
public class LoginServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
   
        }
        
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {        
       
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //Username or Email
        String user = request.getParameter("user");
        //Password
        String password = request.getParameter("password");
 
        //Usuario user = UsuarioDAO.loginUser(user,password);
        Usuario temp = UsuarioDAO.loginUser(user, password);
        
        HttpSession session = request.getSession();
        session.setAttribute("USER", temp);    
       
//        String prueba = "";
//        String prueba2 = "";
       if(temp != null){
//            //Cookie
//            Cookie[] lasCookies = request.getCookies();
//             for (Cookie galleta : lasCookies){
//                 if("login.user".equals(galleta.getName())){
//                    prueba  = galleta.getValue();
//                 }
//                 
//                 if("login.password".equals(galleta.getName())){
//                     prueba2 = galleta.getValue();
//                 }                               
//             }
//            
//            if(prueba.equals("") == true && prueba2.equals("") == true){
//                Cookie cookie_usuario = new Cookie("login.user",user);
//                Cookie cookie_password = new Cookie("login.password",password);
//
//                //Tiempo de vida de la cookie
//                cookie_usuario.setMaxAge(365*24*60*60); //1 a;o
//                cookie_password.setMaxAge(365*24*60*60); 
//
//                response.addCookie(cookie_usuario);
//                response.addCookie(cookie_password);
//            
  //         }else{
//                 for (Cookie galleta : lasCookies){
//                    if("login.user".equals(galleta.getName())){
//                       galleta.setValue(user); 
//                       response.addCookie(galleta);
//                    }
//
//                    if("login.password".equals(galleta.getName())){
//                        galleta.setValue(password);    
//                        response.addCookie(galleta);
//                    }
//                }               
//            }
                
           request.getRequestDispatcher("MainServerlet").forward(request, response);
       }else{
            request.getRequestDispatcher("login.jsp").forward(request, response);
       }             
 }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
