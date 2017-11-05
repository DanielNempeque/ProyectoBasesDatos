/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Gestion;


import Model.Usuario;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author Daniel Nempeque
 */
public class GestionUsuario extends Controller.ConnectionDB{
     public Usuario AuthCliente(Usuario us){
        super.makeConnection();
        PreparedStatement pst = null;
        ResultSet rs = null;
        Usuario user = null;
        try {
            String Query = "SELECT L.id_login, L.Usuario, L.password, T.Nombre FROM Login L\n"
                    + "INNER JOIN Tipo_Usuario T ON L.id_TipoUsuario = T.id_TipoUsuario\n"
                    + "WHERE (L.usuario = ? AND L.password = ?)OR(L.Correo = ? AND L.password = ?)";
            pst = getConnection().prepareStatement(Query);
            pst.setString(1, us.getUser());
            pst.setString(2, us.getPassword());
            pst.setString(3, us.getUser());
            pst.setString(4, us.getUser());
            rs = pst.executeQuery();
            
            while(rs.next()){
                String idLogin = rs.getString(1);
                String Usuario = rs.getString(2);
                String Password = rs.getString(2);
                String TipoU = rs.getString(4);
                
                user = new Usuario(idLogin, Usuario, Password, TipoU);
            }
            return user;            
            
        } catch (Exception e) {
            System.err.println("ERROR: " + e );
        }finally{
            try {
                if(getConnection() != null){
                    getConnection().close();
                }  
                if(pst != null){
                    pst.close();
                }
                if(rs != null){
                    pst.close();
                }
            } catch (Exception e) {
                System.err.println("ERROR: " + e );
            }
        }
            
        return null;
    }
     public boolean AuthClienteBoolean(Usuario us){
        super.makeConnection();
        PreparedStatement pst = null;
        ResultSet rs = null;
        try {
            String Query = "SELECT L.id_login, L.Usuario, L.password, T.Descripcion FROM Login L\n"
                    + "INNER JOIN Tipo_Usuario T ON L.id_TipoUsuario = T.id_TipoUsuario\n"
                    + "WHERE (L.usuario = ? AND L.password = ?)OR(L.Correo = ? AND L.password = ?)";
            pst = getConnection().prepareStatement(Query);
            pst.setString(1, us.getUser());
            pst.setString(2, us.getPassword());
            pst.setString(3, us.getUser());
            pst.setString(4, us.getUser());
            rs = pst.executeQuery();
            
            if(rs.absolute(1)){
                return true;
            }
        } catch (Exception e) {
            System.err.println("ERROR: " + e );
        }finally{
            try {
                if(getConnection() != null){
                    getConnection().close();
                }  
                if(pst != null){
                    pst.close();
                }
                if(rs != null){
                    pst.close();
                }
            } catch (Exception e) {
                System.err.println("ERROR: " + e );
            }
        }
            
        return false;
    }
}
