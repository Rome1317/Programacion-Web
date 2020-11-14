/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.scienceandtech.pw_pf.controles.models.dao;

import com.scienceandtech.pw_pf.controles.controles.DB_Connection.DbConection;
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
public class NoticiasDAO {
    
    public static List<Noticia> getHomeNews(){
        List<Noticia> noticias = new ArrayList<>();
        try {
            Connection con = DbConection.getConnection();        
            CallableStatement statement = con.prepareCall("{call prc_noticia_home()}");
            ResultSet resultSet = statement.executeQuery();
            
            while(resultSet.next()){
                int id_noticia = resultSet.getInt(1);
                String titulo = resultSet.getString(2);
                String descripcion = resultSet.getString(3);
                String noticia = resultSet.getString(4);
                boolean aprobado = resultSet.getBoolean(5);
                String fk_usuario = resultSet.getString(6);
                int likes = resultSet.getInt(7);
                noticias.add(new Noticia(id_noticia, titulo, descripcion, noticia, aprobado, fk_usuario, likes));
            } 
            con.close();
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        } finally {
            return noticias;
        }   
    }
    
    public static List<Noticia> getUserNews(String email){
        List<Noticia> noticias = new ArrayList<>();
        try{
            Connection con = DbConection.getConnection();        
            CallableStatement statement = con.prepareCall("{call prc_noticia_creada(?)}");
            statement.setString(1,email);       
            ResultSet resultSet = statement.executeQuery();
            
            while(resultSet.next()){
                int id_noticia = resultSet.getInt(1);
                String titulo = resultSet.getString(2);
                String descripcion = resultSet.getString(3);
                String noticia = resultSet.getString(4);
                boolean aprobado = resultSet.getBoolean(5);
                String fk_usuario = resultSet.getString(6);
                int likes = resultSet.getInt(7);
                noticias.add(new Noticia(id_noticia, titulo, descripcion, noticia, aprobado, fk_usuario, likes));
            }
            con.close();
        }catch (SQLException ex) {
            System.out.println(ex.getMessage());
        } finally {
            return noticias;
        }   
    }
    
    public static List<Noticia> getSearchNews(String buscar){
        List<Noticia> noticias = new ArrayList<>();
        try{
            Connection con = DbConection.getConnection();        
            CallableStatement statement = con.prepareCall("{call prc_noticia_search(?)}");
            statement.setString(1,buscar);       
            ResultSet resultSet = statement.executeQuery();
            
            while(resultSet.next()){
                int id_noticia = resultSet.getInt(1);
                String titulo = resultSet.getString(2);
                String descripcion = resultSet.getString(3);
                String noticia = resultSet.getString(4);
                boolean aprobado = resultSet.getBoolean(5);
                String fk_usuario = resultSet.getString(6);
                int likes = resultSet.getInt(7);
                noticias.add(new Noticia(id_noticia, titulo, descripcion, noticia, aprobado, fk_usuario, likes));
            }
            con.close();
        }catch (SQLException ex) {
            System.out.println(ex.getMessage());
        } finally {
            return noticias;
        }   
    }
    
    public static List<Noticia> getNotApproved(){
         List<Noticia> noticias = new ArrayList<>();
         try{
            Connection con = DbConection.getConnection();        
            CallableStatement statement = con.prepareCall("{call prc_noticia_noAprobadas()}");
            ResultSet resultSet = statement.executeQuery();
            while(resultSet.next()){
                int id_noticia = resultSet.getInt(1);
                String titulo = resultSet.getString(2);
                String descripcion = resultSet.getString(3);
                String noticia = resultSet.getString(4);
                boolean aprobado = resultSet.getBoolean(5);
                String fk_usuario = resultSet.getString(6);
                int likes = resultSet.getInt(7);
                noticias.add(new Noticia(id_noticia, titulo, descripcion, noticia, aprobado, fk_usuario, likes));
            }
            con.close();
         }catch (SQLException ex) {
            System.out.println(ex.getMessage());
        } finally {
            return noticias;
        }   
    }
    
    public static List<Noticia> getSaveNews(String tipo, String email){
        List<Noticia> noticias = new ArrayList<>();
        try{
            Connection con = DbConection.getConnection();        
            CallableStatement statement = con.prepareCall("{call prc_noticia_guardadas(?,?)}");
            statement.setString(1,tipo); 
            statement.setString(2,email);
            ResultSet resultSet = statement.executeQuery();
            while(resultSet.next()){
                int id_noticia = resultSet.getInt(1);
                String titulo = resultSet.getString(2);
                String descripcion = resultSet.getString(3);
                String noticia = resultSet.getString(4);
                boolean aprobado = resultSet.getBoolean(5);
                String fk_usuario = resultSet.getString(6);
                int likes = resultSet.getInt(7);
                noticias.add(new Noticia(id_noticia, titulo, descripcion, noticia, aprobado, fk_usuario, likes));
            }
            con.close();
         }catch (SQLException ex) {
            System.out.println(ex.getMessage());
        } finally {
            return noticias;
        }   
    }
    
    /*COSAS DE ROME*/
    
    public static Noticia getOneNew(int id){
        Noticia noticias = null;
        try{
            Connection con = DbConection.getConnection();        
            CallableStatement statement = con.prepareCall("{call pcr_noticia_one(?)}");
            statement.setInt(1,id);       
            ResultSet resultSet = statement.executeQuery();
            while(resultSet.next()){
                int id_noticia = resultSet.getInt(1);
                String titulo = resultSet.getString(2);
                String descripcion = resultSet.getString(3);
                String noticia = resultSet.getString(4);
                boolean aprobado = resultSet.getBoolean(5);
                String fk_usuario = resultSet.getString(6);
                int likes = resultSet.getInt(7);
                noticias = new Noticia(id_noticia, titulo, descripcion, noticia, aprobado, fk_usuario, likes);
            }
        }catch (SQLException ex) {
            System.out.println(ex.getMessage());
        } finally {
            return noticias;
        }  
    }
    
    public static int insertNews(Noticia article){
        
            try {
            Connection con = DbConection.getConnection();
            CallableStatement statement = con.prepareCall("CALL prc_noticia(?,?,?,?,?,?,?,?);");         
            
            statement.setInt(1,1);
            statement.setString(2,article.getTitulo());
            statement.setString(3,article.getResumen());
            statement.setString(4,article.getDescripcion());
            statement.setString(5,article.getNoticia());
            statement.setBoolean(6,false);
            statement.setString(7,article.getFk_usuario());
            statement.setString(8,"nuevo");
            
           
            statement.executeUpdate();  
            con.close();
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        } finally {
            return 0;
        }
    }
    
    /*
    public static int getnewsid(String title){
        int id = 0;
         try {
            Connection con = DbConection.getConnection();
            CallableStatement statement = con.prepareCall("CALL prc_getidnews(?);");         
            
            statement.setString(1,title);
            
            ResultSet resultSet = statement.executeQuery();
            
            while(resultSet.next()){
               id = resultSet.getInt("id_noticia");
             
            }
            
            con.close();
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        } finally {
            return id;
        }
    }
    */
    
    
        public static int getnewsid(Noticia news){
        int id = 0;
         try {
            Connection con = DbConection.getConnection();
            CallableStatement statement = con.prepareCall("CALL prc_getidnews(?,?,?,?);");         
            
            statement.setString(1,news.getTitulo());
            statement.setString(2,news.getDescripcion());
            statement.setString(3,news.getNoticia());
            statement.setString(4,news.getFk_usuario());
            
            
            ResultSet resultSet = statement.executeQuery();
            
            while(resultSet.next()){
               id = resultSet.getInt(1);
             
            }
            
            con.close();
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        } finally {
            return id;
        }
    }
}
