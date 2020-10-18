/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servicios;

import java.sql.*;

/**
 *
 * @author edgar
 */
public class Conexion {
  
    private static Connection conn;
    private static final String driver = "com.mysql.jdbc.Driver";
    private static final String usuario = "root";
    private static final String password = "Reycena99";
    private static final String url = "jdbc:mysql://localhost:3306/CT_DB";

    public Conexion() {
        conn = null;
        try{
            Class.forName(driver); 
            conn = DriverManager.getConnection(url, usuario, password);
            if (conn != null) {
                System.out.println("Conexion establecida...");
            }
        }catch(ClassNotFoundException | SQLException e){
            System.out.println("Error al conectar..." + e);
        }
    }
    
    /*Metodo para obtener la conexion*/
    public Connection getConnection(){
        return conn;
    }
    
    /*Metodo para desconexion*/
    public void desconectar(){
        conn = null;
        if (conn == null) {
            System.out.println("Conexion terminada...");
        }
    }
}
