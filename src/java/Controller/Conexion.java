/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author Daniel Nempeque
 */
public class Conexion {
    private String USERNAME = "root"; //USUARIO DE CADA UNO
    private String PASSWORD = "DaNiEl963210"; //PASSWORD DE CADA UNO
    private String HOST = "localhost"; //HOST DEL SERVIDOR
    private String PORT = "3306"; //ESTE ES EL PUERTO QUE TIENE MYSQL POR DEFECTO O POR LO MENOS EN LA MIA
    private String DATABASE = "proyecto_final"; //ASI TENGO YO EL NOMBRE; NO COMO PETME
    private String CLASSNAME = "com.mysql.jdbc.Driver"; // COSAS DE lA CONEXION
    private String URL = "jdbc:mysql://"+HOST+":"+PORT+"/"+DATABASE; // CADENA DE CONEXION
    private Connection con; //OBETO PARA CONECTARSE DESDE CUALQUIER LUGAR
    
    public Conexion(){ // CONSTRUCTORA 
        try { //ERRORES COMUNES
            Class.forName(CLASSNAME);
            con = DriverManager.getConnection(URL,USERNAME,PASSWORD);
            System.out.println("Conexion con la base compleatada");            
        } catch (ClassNotFoundException e) {
            System.err.println("ERROR: "+e);
        } catch (SQLException e){
            System.err.println("ERROR: "+e);
        }
    }
    
    public Connection getConnection(){
        return con; //RETORNA LA CONEXION A LA BASE DE DATOS
    }
    public static void main(String[] args) {
        Conexion con = new Conexion();
    }
    
}
