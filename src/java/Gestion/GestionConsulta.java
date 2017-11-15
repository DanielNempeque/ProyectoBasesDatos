/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Gestion;

import Model.Consulta;
import Model.Enfermedad;
import Model.TipoEnfermedad;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

/**
 *
 * @author Daniel Nempeque
 */
public class GestionConsulta extends Controller.ConnectionDB {
    public ArrayList<Consulta> GetConsultaIdCliente(String id_Cliente){
        super.makeConnection();
        PreparedStatement pst = null;
        ResultSet rs = null;
        ArrayList<Consulta> consultas = new ArrayList<>();
        try {
            String Query = "SELECT E.Nombre, Ce.Descripcion, Co.Fecha, V.Nombre\n" +
                            "FROM Cliente C INNER JOIN Animal A ON C.id_cliente=A.id_cliente\n" +
                            "LEFT OUTER JOIN Consulta Co ON A.id_animal= Co.id_animal\n" +
                            "INNER JOIN Veterinario V ON V.id_veterinario=Co.id_veterinario\n" +
                            "INNER JOIN Consulta_Enfermedad Ce ON Co.id_consulta= Ce.id_consulta\n" +
                            "INNER JOIN Enfermedad E ON Ce.id_enfermedad= E.id_enfermedad\n" +
                            "WHERE C.id_cliente= ? ORDER BY Co.Fecha";
            pst = getConnection().prepareStatement(Query);
            pst.setString(1, id_Cliente);
            rs = pst.executeQuery();
            
            while(rs.next()){
                String Nombre= rs.getString(1);
                String Descripcion=rs.getString(2);
                String Fecha = rs.getString(3);
                String NombreVet= rs.getString(4);
                Consulta con=new Consulta(Fecha,Nombre, Descripcion, NombreVet);
                consultas.add(con);
            }
            return consultas;
        } catch (Exception e) {
            System.err.println("ERROR: " + e);
        }finally{
            try {
                if(getConnection() != null){
                    getConnection().close();
                }
                if(pst != null){
                    pst.close();
                }
                if(rs != null){
                    rs.close();
                }
            } catch (Exception e) {
                System.err.println("ERROR: " + e);
            }
        }
        return null;
    }
    public void CreateConsulta(Consulta consulta){
        super.makeConnection();
        PreparedStatement pst = null;
        int rs = 0;
        Date date = Date.valueOf(consulta.getFecha());
        System.out.println(consulta.getId_Veterinario());
        try {
            String Query = "Insert into Consulta(Fecha, Hora, id_veterinario, id_animal) values (?, NOW(),?,?)";
            pst = getConnection().prepareStatement(Query);
            pst.setDate(1, date);
            pst.setInt(2, consulta.getId_Veterinario());
            pst.setInt(3, consulta.getId_Animal());
            rs = pst.executeUpdate();
                        
        } catch (Exception e) {
            System.err.println("ERROR: " + e +"Es aqui");
        }finally{
            try {
                if(getConnection() != null){
                    getConnection().close();
                }
                if(pst != null){
                    pst.close();
                }
                
            } catch (Exception e) {
                System.err.println("ERROR: " + e);
            }
        }
    }
}
