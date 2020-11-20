/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.scienceandtech.pw_pf.controles.controles.DB_Connection;

import java.sql.*;
import org.apache.commons.dbcp.BasicDataSource;

/**
 * Esta clase nos ayuda a crear la conexion a la base de datos
 *
 * @author magoc
 */
public class DbConection {

    // Creamos el objeto conexion
    private static final BasicDataSource dataSource = new BasicDataSource();

    // Inicializamos la conexion
    static {
        // Tipo de Driver, este es el de mysql
        dataSource.setDriverClassName("com.mysql.jdbc.Driver");
        // La URL a la conexion, especificando que es de mysql
        // la ruta que es localhost puerto 3306
        // el nombre de la base de datos que es pwDB
        // lo demas son parametros para que no tengan problemas con zonas horarias
        
        //DONAS
//        dataSource.setUrl("jdbc:mysql://localhost:3306/ct_db?useUnicode=true&useJDBCCompliantTimeZoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC");
//        dataSource.setUsername("root");       
//        dataSource.setPassword("Reycena99");
        // dataSource.setMaxIdle(0);
        // dataSource.setMaxActive(100);
        
        //ROMINA
        dataSource.setUrl("jdbc:mysql://localhost:3306/ct_db2?useUnicode=true&useJDBCCompliantTimeZoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC");
        dataSource.setUsername("root");       
        dataSource.setPassword("itsjohncena17");
        // dataSource.setMaxIdle(0);
        // dataSource.setMaxActive(100);
       
    }

    /**
     * *
     * Metodo para obtener la conexion
     *
     * @return Conexion a Base de datos
     * @throws SQLException
     */
    public static Connection getConnection() throws SQLException {
        return dataSource.getConnection();
    }

    /**
     * Metodo para cerrar la conexion
     *
     * @throws SQLException
     */
    public static void closeConnection() throws SQLException {
        dataSource.close();
    }
}
