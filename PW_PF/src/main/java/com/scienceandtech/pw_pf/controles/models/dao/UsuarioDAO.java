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
    
    public static int insertUser(Usuario user){
        
            try {
            Connection con = DbConection.getConnection();
            CallableStatement statement = con.prepareCall("INSERT INTO Tbl_Usuario(email,username,pass,rol) values (?,?,?,'Usuario')");
            ResultSet resultSet = statement.executeQuery();
            
            
            statement.setString(1,user.getEmail());
               statement.setString(2,user.getUsername());
                  statement.setString(3,user.getPass());
       
            return statement.executeUpdate();
            
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        } finally {
            return 0;
        }
    }
    
}
