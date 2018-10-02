/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pry1bd;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author Mariela
 */
public class Conexion {
    
    private Connection conexion;
    public Connection getConexion() {
        return conexion;
    }    
    public void setConexion(Connection conexion)  {
        this.conexion = conexion;
    }
    public void Conectar()
    {
        try{
            String usuario = "CE";
            String contrasena = "CE";
            Class.forName("oracle.jdbc.OracleDriver");
            String cadenaConexion = "jdbc:oracle:thin:@localhost:1521:dbprueba";
            setConexion(DriverManager.getConnection(cadenaConexion, usuario, contrasena));
            if (getConexion() != null){
                System.out.println("Se ha establecido la conexion");  
            }
            else { System.out.println("Error de conexion");  }
        }catch(Exception e)
        {   e.printStackTrace();    }
        }
}
