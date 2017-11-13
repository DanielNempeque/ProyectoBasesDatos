/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Gestion;

import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author Daniel Nempeque
 */
public class GestionVeterinario extends Controller.ConnectionDB{
    public int getIdVetDoc(String Documento){
        super.makeConnection();
        PreparedStatement pst = null;
        ResultSet rs = null;
        int idMascota = 0;
        try {
            String Query = "Select id_veterinario from Veterinario WHERE Numero_documento = ?";
            pst = getConnection().prepareStatement(Query);
            pst.setString(1, Documento);
            rs = pst.executeQuery();
            
            while(rs.next()){
                idMascota = rs.getInt(1);
            }
            return idMascota;

        } catch (Exception e) {
            System.err.println("ERROR: " + e);
        } finally {
            try {
                if (getConnection() != null) {
                    getConnection().close();
                }
                if (pst != null) {
                    pst.close();
                }
                if (rs != null) {
                    pst.close();
                }
            } catch (Exception e) {
                System.err.println("ERROR: " + e);
            }

            
        }
        return 0;
    }
}
