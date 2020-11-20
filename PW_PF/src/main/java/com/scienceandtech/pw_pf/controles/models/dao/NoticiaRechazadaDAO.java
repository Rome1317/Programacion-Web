/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.scienceandtech.pw_pf.controles.models.dao;

import com.scienceandtech.pw_pf.controles.controles.DB_Connection.DbConection;
import com.scienceandtech.pw_pf.controles.models.Noticia_Denegada;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.SQLException;

/**
 *
 * @author Gonzalez
 */
public class NoticiaRechazadaDAO {
    
    public static int insertDenyNews(Noticia_Denegada noticia){
        
            try {
            Connection con = DbConection.getConnection();
            CallableStatement statement = con.prepareCall("CALL prc_denynews(?,?,?);");         
            
            statement.setInt(1,noticia.getId());
            statement.setString(2,noticia.getComentario());
            statement.setString(3,noticia.getUsuario());
           
            statement.executeUpdate();  
            con.close();
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        } finally {
            return 0;
        }
    }
}
