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
public class Cliente {
    private String Name;
    private String Mail;
    private String Phone;
    private String Document;
    private String BirthDate;
    private String Gender;
    private String idClient;
    private String idVet;
    private String vetName;

    public Cliente(String Name, String Mail, String Phone, String Document, String BirthDate, String Gender, String idClient, String idVet, String vetName) {
        this.Name = Name;
        this.Mail = Mail;
        this.Phone = Phone;
        this.Document = Document;
        this.BirthDate = BirthDate;
        this.Gender = Gender;
        this.idClient = idClient;
        this.idVet = idVet;
        this.vetName = vetName;
    }

    public String getName() {
        return Name;
    }

    public void setName(String Name) {
        this.Name = Name;
    }

    public String getMail() {
        return Mail;
    }

    public void setMail(String Mail) {
        this.Mail = Mail;
    }

    public String getPhone() {
        return Phone;
    }

    public void setPhone(String Phone) {
        this.Phone = Phone;
    }

    public String getDocument() {
        return Document;
    }

    public void setDocument(String Document) {
        this.Document = Document;
    }

    public String getBirthDate() {
        return BirthDate;
    }

    public void setBirthDate(String BirthDate) {
        this.BirthDate = BirthDate;
    }

    public String getGender() {
        return Gender;
    }

    public void setGender(String Gender) {
        this.Gender = Gender;
    }

    public String getIdClient() {
        return idClient;
    }

    public void setIdClient(String idClient) {
        this.idClient = idClient;
    }

    public String getIdVet() {
        return idVet;
    }

    public void setIdVet(String idVet) {
        this.idVet = idVet;
    }

    public String getVetName() {
        return vetName;
    }

    public void setVetName(String vetName) {
        this.vetName = vetName;
    }
    
    
}