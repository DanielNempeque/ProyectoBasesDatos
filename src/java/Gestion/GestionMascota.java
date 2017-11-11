/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Gestion;

import Model.Mascota;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

/**
 *
 * @author juliana
 */
public class GestionMascota extends Controller.ConnectionDB {
    public ArrayList<Mascota> getMascotaidCliente(String idCliente){
       super.makeConnection();
       PreparedStatement pst = null;
       ResultSet rs = null;
       ArrayList<Mascota> mascotas = new ArrayList<Mascota>();
        System.out.println(idCliente);
       try {
           String Query = "SELECT A.Nombre, A.Fecha_nacimiento, A.Peso, T.Descripcion, E.Nombre\n" +
                            "FROM Estado E INNER JOIN Animal A ON A.id_estado=E.id_estado\n" +
                            "INNER JOIN Tipo_Animal T ON T.id_tipoanimal= A.id_tipoanimal\n" +
                            "INNER JOIN Cliente C ON C.id_cliente=A.id_cliente\n" +
                            "WHERE C.id_cliente=?";
           
           
           pst = getConnection().prepareStatement(Query);
           pst.setInt(1, Integer.parseInt(idCliente));
           rs = pst.executeQuery();
           
           while(rs.next()){
               String Nombre= rs.getString(1);
               String FechaNacimiento= rs.getString(2);
               String Peso= rs.getString(3);
               String Descripcion= rs.getString(4);
               String NombreExamen=rs.getString(5);
               Mascota mas= new Mascota(Nombre, FechaNacimiento, Peso, Descripcion, NombreExamen);
               mascotas.add(mas);
               
               
           } 
           return mascotas;
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
                    pst.close();
                }
           } catch (Exception e) {
               System.err.println("ERROR: " + e);
           }
       }
       return null;
   }
   
}
