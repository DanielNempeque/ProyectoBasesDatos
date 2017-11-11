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
public class Enfermedad {
    private String idEnfermedad;
    private String idTipoEnfermedad;
    private String Nombre;
    private String Descripcion;

    public Enfermedad(String idEnfermedad, String idTipoEnfermedad, String Nombre, String Descripcion) {
        this.idEnfermedad = idEnfermedad;
        this.idTipoEnfermedad = idTipoEnfermedad;
        this.Nombre = Nombre;
        this.Descripcion = Descripcion;
    }

    public Enfermedad(String idTipoEnfermedad, String Nombre, String Descripcion) {
        this.idTipoEnfermedad = idTipoEnfermedad;
        this.Nombre = Nombre;
        this.Descripcion = Descripcion;
    }
    

    public String getIdEnfermedad() {
        return idEnfermedad;
    }

    public void setIdEnfermedad(String idEnfermedad) {
        this.idEnfermedad = idEnfermedad;
    }

    public String getIdTipoEnfermedad() {
        return idTipoEnfermedad;
    }

    public void setIdTipoEnfermedad(String idTipoEnfermedad) {
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
