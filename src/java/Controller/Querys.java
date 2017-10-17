/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;


import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.swing.JOptionPane;

/**
 *
 * @author Daniel Nempeque
 */
public class Querys extends Conexion{
    public boolean auth(String user, String password){
        PreparedStatement pst = null;
        ResultSet rs = null;
        try {
            String consulta = "SELECT * FROM login "
                    + "WHERE (Usuario = ? "
                    + "AND Password = ?)"
                    + "OR (Correo = ?"
                    + "AND Password = ?)";
            pst = getConnection().prepareStatement(consulta);
            pst.setString(1, user);
            pst.setString(2, password);
            pst.setString(3, user);
            pst.setString(4, password);
            rs = pst.executeQuery();
            
            if(rs.absolute(1)){
                return true;
            }
            
        } catch (Exception e) {
            System.err.println("ERROR: "+e);
        }finally{
            try {
                if(getConnection() != null ) getConnection().close();
                if(pst != null ) pst.close();
                if(rs != null ) rs.close();
            } catch (Exception e) {
                System.err.println("ERROR: "+e);
            }  
        }
        return false;
    }
    public static void main(String[] args) {
        Querys que = new Querys();
        String usr = JOptionPane.showInputDialog("Usuario");
        String psw = JOptionPane.showInputDialog("Ingrese Password");
        if(que.auth(usr, psw)){
            System.out.println("Existe el usuario");
        }else{
            System.out.println("No existe el usuario");
        }
        
    }
}
