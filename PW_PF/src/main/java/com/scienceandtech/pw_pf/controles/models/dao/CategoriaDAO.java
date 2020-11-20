/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.scienceandtech.pw_pf.controles.models.dao;

import com.scienceandtech.pw_pf.controles.controles.DB_Connection.DbConection;
import com.scienceandtech.pw_pf.controles.models.Noticia_Categoria;
import com.scienceandtech.pw_pf.controles.models.Noticia;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
/**
 *
 * @author Gonzalez
 */

public class CategoriaDAO {
    
     public static int insertCategories(Noticia_Categoria category, String[] categories){

        try{
            Connection con = DbConection.getConnection();
            CallableStatement statement = con.prepareCall("CALL prc_new_not_cat(?,?);");         
            
            for(int i = 0; i<categories.length; i++){
                statement.setInt(1,category.getFk_noticia());
                statement.setInt(2,Integer.valueOf(categories[i]));
            
                statement.executeUpdate();
                
            }
            
            
            con.close();
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        } finally {
            return 0;
        }
        
        
                      

    }
     
      public static List<Noticia_Categoria> getCats(Noticia news){
        List<Noticia_Categoria> categorias = new ArrayList<>();
           
        try{
                Connection con = DbConection.getConnection();
                      
                CallableStatement statement = con.prepareCall("{call prc_cats(?)}");
                statement.setInt(1, news.getId_noticia());
                  
                ResultSet resultSet = statement.executeQuery(); 
                
                while(resultSet.next()){
                    int id_not_cat = resultSet.getInt(1);
                    int fk_noticia = resultSet.getInt(2);
                    int fk_categoria = resultSet.getInt(3);
                    

                    categorias.add(new Noticia_Categoria(fk_noticia,fk_categoria));
                }   
                con.close();
        }catch(SQLException ex){
            System.out.println(ex.getMessage());
        }finally{
            
            return categorias;
        }
    }
     
    
    
}
