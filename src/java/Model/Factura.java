/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import java.util.Date;

/**
 *
 * @author JORDAN
 */
public class Factura {
    private int id_factura;
    private String descripcion;
    private Date fecha;
    private Double total;
    private Double impuesto;
    private int id_cliente;
    private String id_mediopago;

    public Factura(int id_factura, String descripcion, Date fecha, Double total, Double impuesto, int id_cliente, String id_mediopago) {
        this.id_factura = id_factura;
        this.descripcion = descripcion;
        this.fecha = fecha;
        this.total = total;
        this.impuesto = impuesto;
        this.id_cliente = id_cliente;
        this.id_mediopago = id_mediopago;
    }
    public Factura(String descripcion, Date fecha, Double total, Double impuesto, int id_cliente, String id_mediopago) {        
        this.descripcion = descripcion;
        this.fecha = fecha;
        this.total = total;
        this.impuesto = impuesto;
        this.id_cliente = id_cliente;
        this.id_mediopago = id_mediopago;
    }

    public int getId_factura() {
        return id_factura;
    }

    public void setId_factura(int id_factura) {
        this.id_factura = id_factura;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public Date getFecha() {
        return fecha;
    }

    public void setFecha(Date fecha) {
        this.fecha = fecha;
    }

    public Double getTotal() {
        return total;
    }

    public void setTotal(Double total) {
        this.total = total;
    }

    public Double getImpuesto() {
        return impuesto;
    }

    public void setImpuesto(Double impuesto) {
        this.impuesto = impuesto;
    }

    public int getId_cliente() {
        return id_cliente;
    }

    public void setId_cliente(int id_cliente) {
        this.id_cliente = id_cliente;
    }

    public String getId_mediopago() {
        return id_mediopago;
    }

    public void setId_mediopago(String id_mediopago) {
        this.id_mediopago = id_mediopago;
    }
    
}
