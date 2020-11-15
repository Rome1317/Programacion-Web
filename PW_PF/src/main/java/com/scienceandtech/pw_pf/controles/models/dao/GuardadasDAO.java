/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.scienceandtech.pw_pf.controles.models.dao;

import com.scienceandtech.pw_pf.controles.controles.DB_Connection.DbConection;
import com.scienceandtech.pw_pf.controles.models.Guardadas;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author edgar
 */
public class GuardadasDAO {
    public static Guardadas getSaveNews(String email, int id_noticia, String etiqueta){
        Guardadas newGuardadas = null;
        try{
            Connection con = DbConection.getConnection();        
            CallableStatement statement = con.prepareCall("{call prc_guardadas_one(?,?,?)}");
            statement.setString(1,email); 
            statement.setInt(2,id_noticia);
            statement.setString(3,etiqueta);
            ResultSet resultSet = statement.executeQuery();
            
             while(resultSet.next()){
                int id_guardado = resultSet.getInt(1);
                String fk_usuario = resultSet.getString(2);
                int fk_id_noticia = resultSet.getInt(3);
                newGuardadas = new Guardadas(id_guardado,fk_usuario,fk_id_noticia);
            }
            con.close();
        }catch (SQLException ex) {
            System.out.println(ex.getMessage());
        } finally {
            return newGuardadas;
        }   
    }
    
    public static Guardadas getSearchGuardadas(int id){
        Guardadas newGuardadas = null;
        try{
            Connection con = DbConection.getConnection();        
            CallableStatement statement = con.prepareCall("{call prc_guardadas_search(?)}");
            statement.setInt(1,id); 
            ResultSet resultSet = statement.executeQuery();
            
             while(resultSet.next()){
                int id_guardado = resultSet.getInt(1);
                String fk_usuario = resultSet.getString(2);
                int fk_id_noticia = resultSet.getInt(3);
                newGuardadas = new Guardadas(id_guardado,fk_usuario,fk_id_noticia);
            }
            con.close();
        }catch (SQLException ex) {
            System.out.println(ex.getMessage());
        } finally {
            return newGuardadas;
        }   
    }
    
    public static void newSaveNew(String email, int id_noticia, String etiqueta){
        try{
            Connection con = DbConection.getConnection();        
            CallableStatement statement = con.prepareCall("{call prc_guardadas_new(?,?,?)}");
            statement.setString(1,etiqueta);
            statement.setString(2,email); 
            statement.setInt(3,id_noticia);
            
            statement.executeUpdate();            
            con.close();
            
        }catch (SQLException ex) {
            System.out.println(ex.getMessage());

        } finally {      
        }   
    }
    
    public static int deleteSaveNew(int id){
        try{
            Connection con = DbConection.getConnection();        
            CallableStatement statement = con.prepareCall("{call prc_guardadas_delete(?)}");
            statement.setInt(1,id); 
            statement.executeUpdate();            
            con.close();
            
        }catch (SQLException ex) {
            System.out.println(ex.getMessage());
            return 1;
        } finally {
            return 0;
        }   
    }
}
