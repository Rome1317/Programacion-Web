/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.scienceandtech.pw_pf.controles.models.dao;

import com.scienceandtech.pw_pf.controles.controles.DB_Connection.DbConection;
import com.scienceandtech.pw_pf.controles.models.Usuario;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author Gonzalez
 */
public class UsuarioDAO {
    /*
    public static int insertUser(Usuario user){
        
            try {
            Connection con = DbConection.getConnection();
            CallableStatement statement = con.prepareCall("INSERT INTO Tbl_Usuario(email,username,pass,rol) values (?,?,?,?)");
            //ResultSet resultSet = statement.executeQuery();           
            
            statement.setString(1,user.getEmail());
            statement.setString(2,user.getUsername());
            statement.setString(3,user.getPass());
            statement.setString(4,"Usuario");
            
            return statement.executeUpdate();           
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        } finally {
            return 0;
        }
    }
    */
  
    public static int insertUser(Usuario user){       
            try {
                Connection con = DbConection.getConnection();
                CallableStatement statement = con.prepareCall("CALL prc_signin(?,?,?,?);");         

                statement.setString(1,user.getEmail());
                statement.setString(2,user.getUsername());
                statement.setString(3,user.getPass());
                statement.setString(4,"Usuario");

                return statement.executeUpdate();           
            } catch (SQLException ex) {
                System.out.println(ex.getMessage());
            } finally {
                return 0;
            }
    }
        
    public static Usuario loginUser(String user, String password){
            Usuario usuario = null;
            try {
            Connection con = DbConection.getConnection();
            CallableStatement statement = con.prepareCall("CALL prc_usuario(?,?);");         
            
            statement.setString(1,user);
            statement.setString(2,password);           
            
            ResultSet resultSet = statement.executeQuery();
            while (resultSet.next()) {            
                String email = resultSet.getString("email");
                String username = resultSet.getString("username");
                String pass = resultSet.getString("pass");
                String facebook = resultSet.getString("facebook");
                String twitter = resultSet.getString("twitter");
                String imagenes = resultSet.getString("imagen");
                String rol = resultSet.getString("rol");
                boolean baneado = resultSet.getBoolean("baneado");
                usuario = new Usuario(email,username,pass,facebook, twitter, imagenes,rol, baneado);
            }      
            con.close();
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        } finally {
            return usuario;
        }
    }
        
    public static Usuario getEscritor(String _email){
        Usuario escritor = null;
        try {
            Connection con = DbConection.getConnection();
            CallableStatement statement = con.prepareCall("CALL prc_usuario_escritor(?);");                   
            statement.setString(1,_email);          
            
            ResultSet resultSet = statement.executeQuery();
            while (resultSet.next()) {            
                String email = resultSet.getString("email");
                String username = resultSet.getString("username");
                String pass = resultSet.getString("pass");
                String facebook = resultSet.getString("facebook");
                String twitter = resultSet.getString("twitter");
                String imagenes = resultSet.getString("imagen");
                String rol = resultSet.getString("rol");
                boolean baneado = resultSet.getBoolean("baneado");
                escritor = new Usuario(email,username,pass,facebook, twitter, imagenes,rol, baneado);
            }      
            con.close();
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        } finally {
            return escritor;
        }
    }  
    
    public static void banUser(boolean estatus, String _email){
          try {
                Connection con = DbConection.getConnection();
                CallableStatement statement = con.prepareCall("CALL prc_usuario_estatus(?,?);");         

                statement.setBoolean(1,estatus);
                statement.setString(2,_email);

                statement.executeUpdate(); 
                con.close();
            } catch (SQLException ex) {
                System.out.println(ex.getMessage());
            } finally {
             
            }
    }
        
    public static int editUser(Usuario user){
        
            try {
            Connection con = DbConection.getConnection();
            CallableStatement statement = con.prepareCall("CALL prc_editusuario(?,?,?,?,?,?);");         
            
            statement.setString(1,user.getEmail());
            statement.setString(2,user.getUsername());
            statement.setString(3,user.getPass());
            statement.setString(4,user.getFacebook());
            statement.setString(5,user.getTwitter());
            statement.setString(6,user.getImagen());
            
            return statement.executeUpdate();           
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        } finally {
            return 0;
        }
    }
        
}
