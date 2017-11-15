/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Gestion;

import Model.Enfermedad;
import Model.TipoEnfermedad;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

/**
 *
 * @author Daniel Nempeque
 */
public class GestionEnfermedad extends Controller.ConnectionDB {

    public ArrayList<TipoEnfermedad> GetTipoEnfermedad() {
        super.makeConnection();
        PreparedStatement pst = null;
        ResultSet rs = null;
        ArrayList<TipoEnfermedad> tiposEnfermedad = new ArrayList<>();
        try {
            String Query = "SELECT * FROM tipo_enfermedad";
            pst = getConnection().prepareStatement(Query);
            rs = pst.executeQuery();

            while (rs.next()) {
                int id = rs.getInt(1);
                String nombre = rs.getString(2);
                String descripcion = rs.getString(3);
                TipoEnfermedad enf = new TipoEnfermedad(id, nombre, descripcion);
                tiposEnfermedad.add(enf);
            }
            return tiposEnfermedad;
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
                    rs.close();
                }
            } catch (Exception e) {
                System.err.println("ERROR: " + e);
            }
        }
        return null;
    }

    public void createEnfermedad(Enfermedad enfermedad) {
        super.makeConnection();
        PreparedStatement pst = null;
        int rs = 0;
        try {
            String Query = "INSERT INTO Enfermedad (Nombre, Descripcion, id_tipoenfermedad) values (?,?,?)";
            pst = getConnection().prepareStatement(Query);
            pst.setString(1, enfermedad.getNombre());
            pst.setString(2, enfermedad.getDescripcion());
            pst.setInt(3, Integer.parseInt(enfermedad.getIdTipoEnfermedad()));
            rs = pst.executeUpdate();
            System.out.println("Se creo correctamentes");

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

            } catch (Exception e) {
                System.err.println("ERROR: " + e);
            }
        }
    }

    public int getIdTipoEnfermedad(String Nombre) {
        super.makeConnection();
        PreparedStatement pst = null;
        ResultSet rs = null;
        int idEnfermedad = 0;
        try {
            String Query = "SELECT t.id_tipoenfermedad FROM tipo_enfermedad t\n"
                    + "WHERE t.Nombre = ?";
            pst = getConnection().prepareStatement(Query);
            pst.setString(1, Nombre);
            rs = pst.executeQuery();

            while (rs.next()) {
                idEnfermedad = rs.getInt(1);
            }
            return idEnfermedad;
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
                    rs.close();
                }
            } catch (Exception e) {
                System.err.println("ERROR: " + e);
            }
        }
        return 0;
    }

    public ArrayList<Enfermedad> GetEnfermedades() {
        super.makeConnection();
        PreparedStatement pst = null;
        ResultSet rs = null;
        ArrayList<Enfermedad> Enfermedades = new ArrayList<>();
        try {
            String Query = "SELECT E.id_enfermedad, E.nombre, E.descripcion, T.Nombre FROM Enfermedad E\n"
                    + "INNER JOIN Tipo_Enfermedad T ON E.id_tipoenfermedad = T.id_tipoenfermedad";
            pst = getConnection().prepareStatement(Query);
            rs = pst.executeQuery();

            while (rs.next()) {
                int idEnfermedad = rs.getInt(1);
                String nombre = rs.getString(2);
                String descripcion = rs.getString(3);
                String nombreT = rs.getString(4);
                Enfermedad enf = new Enfermedad(idEnfermedad, nombre, descripcion, nombreT);
                Enfermedades.add(enf);
            }
            return Enfermedades;
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
                    rs.close();
                }
            } catch (Exception e) {
                System.err.println("ERROR: " + e);
            }
        }
        return null;
    }

    public Enfermedad getEnfermedadNombre(String pNombre) {
        super.makeConnection();
        PreparedStatement pst = null;
        ResultSet rs = null;
        Enfermedad enf = null;
        try {
            String Query = "SELECT E.id_enfermedad, E.nombre, E.descripcion, T.Nombre FROM Enfermedad E\n"
                    + "INNER JOIN Tipo_Enfermedad T ON E.id_tipoenfermedad = T.id_tipoenfermedad\n"
                    + "WHERE E.nombre = ?";
            pst = getConnection().prepareStatement(Query);
            pst.setString(1, pNombre);
            rs = pst.executeQuery();

            while (rs.next()) {
                int id = rs.getInt(1);
                String Nombre = rs.getString(2);
                String Desc = rs.getString(3);
                String NombreT = rs.getString(4);
                enf = new Enfermedad(id, Nombre, Desc, NombreT);
            }
            return enf;

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
                    rs.close();
                }
            } catch (Exception e) {
                System.err.println("ERROR: " + e);
            }
        }

        return null;
    }

    public void eliminaEnfermedad(String pNombre) {
        super.makeConnection();
        PreparedStatement pst = null;
        int rs = 0;
        try {
            String Query = "Delete from Enfermedad WHERE Nombre = ?";
            pst = getConnection().prepareStatement(Query);
            pst.setString(1, pNombre);
            rs = pst.executeUpdate();

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
            } catch (Exception e) {
                System.err.println("ERROR: " + e);
            }
        }
    }

    public void eliminaConsultaEnfermedad(String pNombre) {
        super.makeConnection();
        PreparedStatement pst = null;
        int rs = 0;
        try {
            String Query = "Delete from Consulta_enfermedad\n"
                    + "WHERE id_Enfermedad IN (SELECT C.id_Enfermedad FROM Enfermedad E INNER JOIN (Select * from Consulta_enfermedad) C ON E.id_enfermedad = C.id_enfermedad \n"
                    + "WHERE E.Nombre =?\n"
                    + ")";
            pst = getConnection().prepareStatement(Query);
            pst.setString(1, pNombre);
            rs = pst.executeUpdate();

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
            } catch (Exception e) {
                System.err.println("ERROR: " + e);
            }
        }
    }
}
