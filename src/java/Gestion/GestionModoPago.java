/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Gestion;

import Controller.ConnectionDB;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.swing.table.DefaultTableModel;

/**
 *
 * @author JORDAN
 */
public class GestionModoPago {
    static ConnectionDB connMySQL = new ConnectionDB();	
	static Statement s = null;
	static PreparedStatement ps = null;  
    public DefaultTableModel getAllKindPay() throws ClassNotFoundException, SQLException, InstantiationException, IllegalAccessException
    {
            Connection conn = connMySQL.setConeccion();   
            ResultSet rs;
            DefaultTableModel mo = new DefaultTableModel(){
            @Override
            public boolean isCellEditable(int rowIndex,int columnIndex){return false;}
            };
            String[] columns = {"ID","Nombre"};
            mo.setColumnIdentifiers(columns);
            Object[] fila = new Object[2];
            ps = conn.prepareStatement("select id_mediopago,Nombre from medio_pago");		
		rs = ps.executeQuery();
		while (rs.next()) {
			fila[0] = rs.getInt(1);
                        fila[1] = rs.getString(2);                        
                        mo.addRow(fila);
                }
            conn.close();
            return mo;
    }
}
