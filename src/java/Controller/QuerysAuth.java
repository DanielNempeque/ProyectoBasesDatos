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
public class QuerysAuth extends Conexion{
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
    public boolean register(String user,String correo, String password, String nombre, String telefono,String noDocumento, String fechaNacimiento ,String Genenro){
        PreparedStatement pst = null;
        PreparedStatement pst2 = null;
        ResultSet rs = null;
        ResultSet rs2 = null;
        
        try {
            String register = "INSERT (Usuario,Password,Correo) INTO login VALUES (?,?,?)";
            String cliente = "INSERT (Nombre,Telefono,Correo,No_Documento,Fecha_nacimiento,Genero) INTO login VALUES (?,?,?,?,?)";
            pst = getConnection().prepareStatement(register);
            pst2 = getConnection().prepareStatement(cliente);
            pst.setString(1, user);
            pst.setString(2, password);
            pst.setString(3, correo);
            pst2.setString(1, nombre);
            pst2.setString(2, telefono);
            pst2.setString(3, correo);
            pst2.setString(4, noDocumento);
            pst2.setString(5, fechaNacimiento);
            pst2.setString(6, Genenro);
            
            rs = pst.executeQuery();
            rs2 = pst2.executeQuery();
            
            return true;
            
            
        } catch (Exception e) {
            System.err.println("ERROR :" + e );
        }finally{
            try {
                if(getConnection() != null ) getConnection().close();
                if(pst != null ) pst.close();
                if(rs != null ) rs.close();
                if(pst2 != null ) pst2.close();
                if(rs2 != null ) rs2.close();
            } catch (Exception e) {
                System.err.println("ERROR: "+e);
            }  
        }
        return false;        
    }
    public static void main(String[] args) {
        QuerysAuth que = new QuerysAuth();
        String usr = JOptionPane.showInputDialog("Usuario");
        String psw = JOptionPane.showInputDialog("Ingrese Password");
        if(que.auth(usr, psw)){
            System.out.println("Existe el usuario");
        }else{
            System.out.println("No existe el usuario");
        }
        
    }
}
