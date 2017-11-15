/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

/**
 *
 * @author Daniel Nempeque
 */
public class TipoEnfermedad {
    private int idTipoEnfermedad;
    private String Nombre;
    private String Descripcion;

    public TipoEnfermedad(int idTipoEnfermedad, String Nombre, String Descripcion) {
        this.idTipoEnfermedad = idTipoEnfermedad;
        this.Nombre = Nombre;
        this.Descripcion = Descripcion;
    }

    public TipoEnfermedad(String Nombre) {
        this.Nombre = Nombre;
    }

    public int getIdTipoEnfermedad() {
        return idTipoEnfermedad;
    }

    public void setIdTipoEnfermedad(int idTipoEnfermedad) {
        this.idTipoEnfermedad = idTipoEnfermedad;
    }

    public String getNombre() {
        return Nombre;
    }

    public void setNombre(String Nombre) {
        this.Nombre = Nombre;
    }

    public String getDescripcion() {
        return Descripcion;
    }

    public void setDescripcion(String Descripcion) {
        this.Descripcion = Descripcion;
    }
    
}
