/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Gestion;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

/**
 *
 * @author Daniel Nempeque
 */
public class GestionEstadisiticas extends Controller.ConnectionDB {

    public String GetMaxMascotas() {
        super.makeConnection();
        PreparedStatement pst = null;
        ResultSet rs = null;
        String nombre = null;
        try {
            String Query = "SELECT C.Nombre, Count(A.id_cliente)as num FROM Cliente C\n"
                    + "INNER JOIN Animal A ON A.id_cliente= C.id_cliente\n"
                    + "Group by C.id_cliente ORDER BY num DESC LIMIT 1";
            pst = getConnection().prepareStatement(Query);
            rs = pst.executeQuery();

            while (rs.next()) {
                nombre = rs.getString(1);
            }
            return nombre;

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
        return null;
    }
}
