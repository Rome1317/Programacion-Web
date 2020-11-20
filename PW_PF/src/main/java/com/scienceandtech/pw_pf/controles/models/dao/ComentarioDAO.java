/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.scienceandtech.pw_pf.controles.models.dao;

import com.scienceandtech.pw_pf.controles.controles.DB_Connection.DbConection;
import com.scienceandtech.pw_pf.controles.models.Comentario;
import com.scienceandtech.pw_pf.controles.models.Guardadas;
import com.scienceandtech.pw_pf.controles.models.Noticia;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author edgar
 */
public class ComentarioDAO {
    public static void newComentario(String email, int id_noticia, String comentario, int id_padre){
        try {
            Connection con = DbConection.getConnection();        
            CallableStatement statement = con.prepareCall("{call prc_comentarios_nuevo(?,?,?,?)}");
            statement.setString(1,email);
            statement.setInt(2,id_noticia);
            statement.setString(3,comentario);
            statement.setInt(4,id_padre);
            
            statement.executeUpdate();
            con.close();
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        } finally {
        
        }   
    }
    
    public static List<Comentario> getComentarios(int id_noticia){
        List<Comentario> comentarios = new ArrayList<>();
        try{
            Connection con = DbConection.getConnection();        
            CallableStatement statement = con.prepareCall("{call prc_comentarios_id(?)}");
            statement.setInt(1,id_noticia); 
            ResultSet resultSet = statement.executeQuery();
            
             while(resultSet.next()){
                int id_comentario = resultSet.getInt(1);
                String comentario = resultSet.getString(2);
                String fk_usuario = resultSet.getString(3);
                int fk_noticia = resultSet.getInt(4);
                int id_padre = resultSet.getInt(5);
                comentarios.add(new Comentario(id_comentario,comentario,fk_usuario,fk_noticia,id_padre));
            }
            con.close();
        }catch (SQLException ex) {
            System.out.println(ex.getMessage());
        } finally {
            return comentarios;
        }   
    }
    
    public static void deleteComentario(int id_comentario){
         try {
            Connection con = DbConection.getConnection();        
            CallableStatement statement = con.prepareCall("{call prc_comentarios_borrar(?)}");
            statement.setInt(1,id_comentario);
            
            statement.executeUpdate();
            con.close();
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        } finally {
        
        }   
    }
}
