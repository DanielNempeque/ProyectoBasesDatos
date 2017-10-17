/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import com.mysql.jdbc.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author Daniel Nempeque
 */
public class Querys extends Conexion{
    public boolean auth(String user, String password){
        PreparedStatement pst = null;
        ResultSet rs = null;
        try {
            String consulta = "SELECT C.id_login, L.Usuario, L.Correo FROM login L";
        } catch (Exception e) {
        }
        return false;
    }
}
