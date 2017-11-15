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

    public ArrayList<Mascota> getMascotaidCliente(String idCliente) {
        super.makeConnection();
        PreparedStatement pst = null;
        ResultSet rs = null;
        ArrayList<Mascota> mascotas = new ArrayList<Mascota>();
        System.out.println(idCliente);
        try {
            String Query = "SELECT A.Nombre, TIMESTAMPDIFF(YEAR, A.Fecha_nacimiento, CURDATE()) AS Edad, A.Peso, T.Descripcion, E.Nombre\n"
                    + "FROM Estado E INNER JOIN Animal A ON A.id_estado=E.id_estado\n"
                    + "INNER JOIN Tipo_Animal T ON T.id_tipoanimal= A.id_tipoanimal\n"
                    + "INNER JOIN Cliente C ON C.id_cliente=A.id_cliente\n"
                    + "WHERE C.id_cliente=?";

            pst = getConnection().prepareStatement(Query);
            pst.setInt(1, Integer.parseInt(idCliente));
            rs = pst.executeQuery();

            while (rs.next()) {
                String Nombre = rs.getString(1);
                String FechaNacimiento = rs.getString(2);
                String Peso = rs.getString(3);
                System.out.println(Peso);
                String Descripcion = rs.getString(4);
                String NombreExamen = rs.getString(5);
                Mascota mas = new Mascota(Nombre, FechaNacimiento, Peso, Descripcion, NombreExamen);
                mascotas.add(mas);

            }
            return mascotas;
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

    public int CuentaMascotas(String idEstado) {
        super.makeConnection();
        PreparedStatement pst = null;
        ResultSet rs = null;
        int cantidad = 0;
        try {
            String Query = "Select Count(id_estado) from animal where id_estado = ?";
            pst = getConnection().prepareStatement(Query);
            pst.setInt(1, Integer.parseInt(idEstado));
            rs = pst.executeQuery();
            while (rs.next()) {
                cantidad = rs.getInt(1);
            }
            return cantidad;

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

    public ArrayList<Mascota> getMascotaDocCliente(String documento) {
        super.makeConnection();
        PreparedStatement pst = null;
        ResultSet rs = null;
        ArrayList<Mascota> mascotas = new ArrayList<Mascota>();
        try {
            String Query = "SELECT A.Nombre, TIMESTAMPDIFF(YEAR, A.Fecha_nacimiento, CURDATE()) AS Edad, A.Peso, T.Descripcion, E.Nombre\n"
                    + "FROM Estado E INNER JOIN Animal A ON A.id_estado=E.id_estado\n"
                    + "INNER JOIN Tipo_Animal T ON T.id_tipoanimal= A.id_tipoanimal\n"
                    + "INNER JOIN Cliente C ON C.id_cliente=A.id_cliente\n"
                    + "WHERE C.No_documento=?";

            pst = getConnection().prepareStatement(Query);
            pst.setString(1, documento);
            rs = pst.executeQuery();

            while (rs.next()) {
                String Nombre = rs.getString(1);
                String FechaNacimiento = rs.getString(2);
                String Peso = rs.getString(3);
                String Descripcion = rs.getString(4);
                String NombreExamen = rs.getString(5);
                Mascota mas = new Mascota(Nombre, FechaNacimiento, Peso, Descripcion, NombreExamen);
                mascotas.add(mas);

            }
            return mascotas;
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

    public int idMascotaNombre(String Nombre, String DocumentoPersona) {
        super.makeConnection();
        PreparedStatement pst = null;
        ResultSet rs = null;
        int idMascota = 0;
        try {
            String Query = "SELECT A.id_animal FROM animal A INNER JOIN Cliente C ON A.id_cliente = C.id_cliente WHERE A.nombre = ? AND C.No_documento = ?";
            pst = getConnection().prepareStatement(Query);
            pst.setString(1, Nombre);
            pst.setString(2, DocumentoPersona);
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
    public float[] CuentaMascotaEstado() {
        super.makeConnection();
        PreparedStatement pst = null;
        ResultSet rs = null;
        int cont = 0;
        float[] cantidad = new float[2];
        try {
            String Query = "SELECT E.Nombre, ROUND(AVG(TIMESTAMPDIFF(YEAR,A.Fecha_Nacimiento,NOW())),1) PromedioEdad\n" +
                            "from Estado E\n" +
                            "inner join Animal A ON A.id_estado= E.id_estado\n" +
                            "group by E.Nombre";
            pst = getConnection().prepareStatement(Query);
            rs = pst.executeQuery();
            while (rs.next()) {
                cantidad[cont] = rs.getFloat(2);
                cont++;
            }
            return cantidad;

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
