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
   private String Fecha,Hora,NombreEnfermedad,DescripcionCon;
   
    @Override
    public String toString() {
        return "Consulta{" + "id_Consulta=" + id_Consulta + ", id_Veterinario=" + id_Veterinario + ", id_Animal=" + id_Animal + ", Fecha=" + Fecha + ", Hora=" + Hora + '}';
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
