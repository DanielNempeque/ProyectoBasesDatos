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
public class Usuario {
    private String idLogin;
    private String User;
    private String Password;
    private String UserType;

    public Usuario(String User, String Password, String UserType) {
        this.User = User;
        this.Password = Password;
        this.UserType = UserType;
    }

    public Usuario(String idLogin, String User, String Password, String UserType) {
        this.idLogin = idLogin;
        this.User = User;
        this.Password = Password;
        this.UserType = UserType;
    }

    public Usuario(String User, String Password) {
        this.User = User;
        this.Password = Password;
    }
    

    public String getIdLogin() {
        return idLogin;
    }

    public void setIdLogin(String idLogin) {
        this.idLogin = idLogin;
    }

    public String getUser() {
        return User;
    }

    public void setUser(String User) {
        this.User = User;
    }

    public String getPassword() {
        return Password;
    }

    public void setPassword(String Password) {
        this.Password = Password;
    }

    public String getUserType() {
        return UserType;
    }

    public void setUserType(String UserType) {
        this.UserType = UserType;
    }
    
    
}
