/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Gestion;

import Model.Cliente;
import Model.Usuario;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author Daniel Nempeque
 */
public class GestionCliente extends Controller.ConnectionDB {
   public Cliente getClienteLogin(Usuario us)
   {
       super.makeConnection();
        PreparedStatement pst = null;
        ResultSet rs = null;
        Cliente cli = null;
        try {
            String Query = "Select id_cliente,nombre,correo,No_documento from cliente where id_login = ?";
            pst = getConnection().prepareStatement(Query);
            pst.setInt(1,Integer.parseInt(us.getIdLogin()));            
            rs = pst.executeQuery();
            
            while(rs.next())
            {
                cli = new Cliente(rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(1));
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
            
        return cli;
   }
}
