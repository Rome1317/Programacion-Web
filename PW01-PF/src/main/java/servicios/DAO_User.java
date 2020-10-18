/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servicios;

import java.sql.CallableStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import modelos.Usuario;

/**
 * DAO DATA ACCESS OBJECT
 * @author edgar
 */
public class DAO_User {
            
    public static List<Usuario> getUsers(){
        List<Usuario> users = new ArrayList<>();
        try{
            Conexion myConn = new Conexion();
            CallableStatement statement = myConn.getConnection().prepareCall("SELECT * FROM Tbl_Usuario");
            ResultSet resultSet = statement.executeQuery();
            
             while (resultSet.next()) {
                // Obtenemos el valor del result set en base al nombre de la
                // columna
                String email = resultSet.getString("email");
                String username = resultSet.getString("username");
                String pass = resultSet.getString("pass");
                String rol = resultSet.getString("rol");
                // Agregamos el usuario a la lista
                users.add(new Usuario(email, username, pass, rol));
            }
//            CallableStatement myCall = 
//                myConn.getConnection().prepareCall("{call prc_usuario(? , ? , ? , ?, ?, ?, ?)}");
//            
//            myCall.setString(1,user.getEmail());
//            myCall.setString(2,user.getUsername());
//            myCall.setString(3,user.getPass());
//            myCall.setString(4,user.getFacebook());
//            myCall.setString(5,user.getTwitter());
//            myCall.setString(6,user.getImagen());
//            myCall.setString(7,user.getRol());
//            myCall.setString(8,accion);            
//            
//            myCall.execute();
            
        }catch(Exception ex){
            ex.printStackTrace();
        }finally {
            return users;
        }
    }
}
