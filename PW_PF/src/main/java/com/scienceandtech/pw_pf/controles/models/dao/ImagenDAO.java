/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.scienceandtech.pw_pf.controles.models.dao;

import com.scienceandtech.pw_pf.controles.controles.DB_Connection.DbConection;
import com.scienceandtech.pw_pf.controles.models.Imagen;
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
public class ImagenDAO {
    public static List<Imagen> getHomeImg(Noticia news){
        List<Imagen> imagenes = new ArrayList<>();
        try{
            Connection con = DbConection.getConnection();
            
                
                CallableStatement statement = con.prepareCall("{call prc_imagen_home(?)}");
                statement.setInt(1, news.getId_noticia());
                
                ResultSet resultSet = statement.executeQuery(); 
                
                while(resultSet.next()){
                    int id_imagen = resultSet.getInt(1);
                    String extencion = resultSet.getString(2);
                    int fk_noticia = resultSet.getInt(3);
                    
                    imagenes.add(new Imagen(id_imagen,extencion,fk_noticia));
                }
           
          
        }catch(SQLException ex){
            System.out.println(ex.getMessage());
        }finally{
            return imagenes;
        }
    }
}
