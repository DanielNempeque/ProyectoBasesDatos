/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

/**
 *
 * @author juliana
 */
public class Mascota {
   private int id_Animal, id_cliente, id_estado, id_tipoanimal;
   private String Nombre, FechaNacimiento, Peso,NombreEstado,Descripcion;

    public Mascota(int id_Animal, int id_cliente, int id_estado, int id_tipoanimal, String Nombre, String FechaNacimiento,String Peso) {
        this.id_Animal = id_Animal;
        this.id_cliente = id_cliente;
        this.id_estado = id_estado;
        this.id_tipoanimal = id_tipoanimal;
        this.Nombre = Nombre;
        this.FechaNacimiento = FechaNacimiento;
        this.Peso= Peso;
    }

    public Mascota() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    public int getId_tipoanimal() {
        return id_tipoanimal;
    }
    
    

    public void setNombreEstado(String NombreEstado) {
        this.NombreEstado = NombreEstado;
    }

    public void setDescripcion(String Descripcion) {
        this.Descripcion = Descripcion;
    }

    public String getNombreEstado() {
        return NombreEstado;
    }

    public String getDescripcion() {
        return Descripcion;
    }

    public Mascota(String Nombre, String FechaNacimiento, String Peso, String NombreEstado, String Descripcion) {
        this.Nombre = Nombre;
        this.FechaNacimiento = FechaNacimiento;
        this.Peso = Peso;
        this.Descripcion = Descripcion;
        this.NombreEstado = NombreEstado;
    }
    

    public void setPeso(String Peso) {
        this.Peso = Peso;
    }

    public String getPeso() {
        return Peso;
    }

    @Override
    public String toString() {
        return "Mascota{" + "id_Animal=" + id_Animal + ", id_cliente=" + id_cliente + ", id_estado=" + id_estado + ", Nombre=" + Nombre + ", FechaNacimiento=" + FechaNacimiento + ", Peso=" + Peso + '}';
    }


    public void setId_Animal(int id_Animal) {
        this.id_Animal = id_Animal;
    }

    public void setId_cliente(int id_cliente) {
        this.id_cliente = id_cliente;
    }

    public void setId_estado(int id_estado) {
        this.id_estado = id_estado;
    }

    public void setNombre(String Nombre) {
        this.Nombre = Nombre;
    }

    public void setFechaNacimiento(String FechaNacimiento) {
        this.FechaNacimiento = FechaNacimiento;
    }

    public int getId_Animal() {
        return id_Animal;
    }

    public int getId_cliente() {
        return id_cliente;
    }

    public int getId_estado() {
        return id_estado;
    }

    public String getNombre() {
        return Nombre;
    }

    public String getFechaNacimiento() {
        return FechaNacimiento;
    }
    
}

