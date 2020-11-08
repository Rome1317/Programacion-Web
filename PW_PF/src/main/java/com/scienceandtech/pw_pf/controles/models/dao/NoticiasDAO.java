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
//            CallableStatement statement = con.prepareCall("select id_noticia, titulo, descripcion from Tbl_Noticia \n" +
//            "    where aprovado = 1\n" +
//            "    order by likes DESC\n" +
//            "    LIMIT 4");
            CallableStatement statement = con.prepareCall("{call prc_noticia_home()}");
            ResultSet resultSet = statement.executeQuery();
            
            while(resultSet.next()){
                int id_noticia = resultSet.getInt(1);
                String titulo = resultSet.getString(2);
                String descripcion = resultSet.getString(3);
                noticias.add(new Noticia(id_noticia, titulo, descripcion));
            }          
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        } finally {
            return noticias;
        }
    }
}
