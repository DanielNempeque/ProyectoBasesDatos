/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Gestion;

import Controller.ConnectionDB;
import Model.Factura;
import Model.Producto;
import static com.sun.org.apache.xalan.internal.lib.ExsltDatetime.date;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import javax.swing.table.DefaultTableModel;

/**
 *
 * @author JORDAN
 */
public class GestionFactura {
    static ConnectionDB connMySQL = new ConnectionDB();	
	static Statement s = null;
	static PreparedStatement ps = null;  
    public void MadeBill(Factura fac) throws ClassNotFoundException, SQLException, InstantiationException, IllegalAccessException, ParseException
    {
            Connection conn = connMySQL.setConeccion();
            SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
            DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
            java.util.Date f = new java.util.Date();
            f = formatter.parse(dateFormat.format(fac.getFecha()));
            java.sql.Date a = new  java.sql.Date(f.getTime());
            
            ps = conn.prepareStatement("insert into Factura(descripcion,fecha,total,impuesto,id_cliente,id_mediopago) values (?,?,?,?,?,(select id_mediopago from medio_pago where nombre = ?));");		
            ps.setString(1,fac.getDescripcion());
            ps.setDate(2, a);
            ps.setDouble(3,fac.getTotal());
            ps.setDouble(4,fac.getImpuesto());
            ps.setInt(5,fac.getId_cliente());
            ps.setString(6,fac.getId_mediopago());
            ps.execute();
            conn.close();            
    }
    public void MadeProducts(Producto pro) throws ClassNotFoundException, SQLException, InstantiationException, IllegalAccessException
    {
            Connection conn = connMySQL.setConeccion();                           
            ps = conn.prepareStatement("insert into factura_producto(id_factura,id_producto,cantidad,subtotal) values ((select max(id_factura)from factura),?,?,?);");
            ps.setInt(1, pro.getIdProducto());
            ps.setInt(2,1);
            ps.setDouble(3, pro.getPrice());
            ps.setInt(4, pro.getIdProducto());
            ps.execute();
            conn.close();
    }
}
