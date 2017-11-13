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
public class Consulta {
   private int id_Consulta, id_Veterinario,id_Animal;
   private String Fecha,Hora,NombreEnfermedad,DescripcionCon, NombreVet;
   
    @Override
    public String toString() {
        return "Consulta{" + "id_Consulta=" + id_Consulta + ", id_Veterinario=" + id_Veterinario + ", id_Animal=" + id_Animal + ", Fecha=" + Fecha + ", Hora=" + Hora + '}';
    }

    public Consulta(String Fecha, String NombreEnfermedad, String DescripcionCon, String NombreVet) {
        this.Fecha = Fecha;
        this.NombreEnfermedad = NombreEnfermedad;
        this.DescripcionCon = DescripcionCon;
        this.NombreVet = NombreVet;
    }

    public Consulta(int id_Veterinario, int id_Animal, String Fecha) {
        this.id_Veterinario = id_Veterinario;
        this.id_Animal = id_Animal;
        this.Fecha = Fecha;
    }
    
    
    public void setNombreEnfermedad(String NombreEnfermedad) {
        this.NombreEnfermedad = NombreEnfermedad;
    }

    public void setDescripcionCon(String DescripcionCon) {
        this.DescripcionCon = DescripcionCon;
    }

    public void setNombreVet(String NombreVet) {
        this.NombreVet = NombreVet;
    }

    public String getNombreEnfermedad() {
        return NombreEnfermedad;
    }

    public String getDescripcionCon() {
        return DescripcionCon;
    }

    public String getNombreVet() {
        return NombreVet;
    }

    public Consulta(int id_Consulta, int id_Veterinario, int id_Animal, String Fecha, String Hora) {
        this.id_Consulta = id_Consulta;
        this.id_Veterinario = id_Veterinario;
        this.id_Animal = id_Animal;
        this.Fecha = Fecha;
        this.Hora = Hora;
    }

    public Consulta(String NombreEnfermedad, String DescripcionCon,String Fecha) {
        this.Fecha = Fecha;
        this.NombreEnfermedad = NombreEnfermedad;
        this.DescripcionCon = DescripcionCon;
    }

    public int getId_Consulta() {
        return id_Consulta;
    }

    public int getId_Veterinario() {
        return id_Veterinario;
    }

    public int getId_Animal() {
        return id_Animal;
    }

    public String getFecha() {
        return Fecha;
    }

    public String getHora() {
        return Hora;
    }

    public void setId_Consulta(int id_Consulta) {
        this.id_Consulta = id_Consulta;
    }

    public void setId_Veterinario(int id_Veterinario) {
        this.id_Veterinario = id_Veterinario;
    }

    public void setId_Animal(int id_Animal) {
        this.id_Animal = id_Animal;
    }

    public void setFecha(String Fecha) {
        this.Fecha = Fecha;
    }

    public void setHora(String Hora) {
        this.Hora = Hora;
    }
   
}
