/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Gestion;

import Model.Cliente;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author Daniel Nempeque
 */
public class GestionCliente extends Controller.ConnectionDB {

    public String getClienteidCliente(String idCliente) {
        super.makeConnection();
        PreparedStatement pst = null;
        ResultSet rs = null;
        String cli = "";

        try {
            String Query = "SELECT * FROM Cliente c\n"
                    + "INNER JOIN Login L ON C.id_cliente = L.id_cliente\n"
                    + "WHERE c.id_cliente = ?";
            pst = getConnection().prepareStatement(Query);
            pst.setInt(1, Integer.parseInt(idCliente));
            rs = pst.executeQuery();
            while (rs.next()) {
                cli = rs.getString(1);
            }
            return cli;
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

    public String getNombreidCliente(String idCliente) {
        super.makeConnection();
        PreparedStatement pst = null;
        ResultSet rs = null;
        String nombre = "";
        try {
            String Query = "SELECT c.Nombre FROM Cliente c WHERE c.id_cliente=?";
            pst = getConnection().prepareStatement(Query);
            pst.setInt(1, Integer.parseInt(idCliente));
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

    public void createCliente(Cliente cliente) {
        super.makeConnection();
        PreparedStatement pst = null;
        int rs = 0;
        Date date = Date.valueOf(cliente.getBirthDate());
        System.out.println(date);
        try {
            String Query = "insert into Cliente (id_veterinaria, Nombre, telefono, No_documento, Fecha_Nacimiento, Genero) values (1,?,?,?,?,?)";
            pst = getConnection().prepareStatement(Query);
            pst.setString(1, cliente.getName());            
            pst.setString(2, cliente.getPhone());
            pst.setString(3, cliente.getDocument());            
            pst.setDate(4, date);
            pst.setString(5, cliente.getGender());
            
            
            rs = pst.executeUpdate();

        } catch (Exception e) {
            System.err.println("ERROR: " + e + "es aqui");
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
    public int getClienteActual(){
        super.makeConnection();
        PreparedStatement pst = null;
        ResultSet rs = null;
        int id = 0;
        try {
            String Query = "SELECT COUNT(id_cliente) FROM cliente";
            pst = getConnection().prepareStatement(Query);  
            
            rs = pst.executeQuery();
            while(rs.next()){
                id = rs.getInt(1);
            }
            return id;
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
