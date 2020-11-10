/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.scienceandtech.pw_pf.controles.models;

/**
 * Model de Usuario
 * POJO - Plain Old Java Object
 * @author edgar
 */
public class Usuario {
    
        /*ATRIBUTOS*/
    
    private String email;
    private String username;
    private String pass;
    private String facebook;
    private String twitter;
    private String imagen;
    private String rol;
    
        /*CONSTRUCTOR*/

    public Usuario(String email, String username, String pass, String rol) {
        this.email = email;
        this.username = username;
        this.pass = pass;
        this.rol = rol;
    }

    public Usuario(String email, String username, String pass) {
        this.email = email;
        this.username = username;
        this.pass = pass;
    }

        /*SETTERS*/
    
    public void setEmail(String email) {
        this.email = email;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

    public void setFacebook(String facebook) {
        this.facebook = facebook;
    }

    public void setTwitter(String twitter) {
        this.twitter = twitter;
    }

    public void setImagen(String imagen) {
        this.imagen = imagen;
    }

    public void setRol(String rol) {
        this.rol = rol;
    }
        /*GETTERS*/
    public String getEmail() {
        return email;
    }

    public String getUsername() {
        return username;
    }

    public String getPass() {
        return pass;
    }

    public String getFacebook() {
        return facebook;
    }

    public String getTwitter() {
        return twitter;
    }

    public String getImagen() {
        return imagen;
    }

    public String getRol() {
        return rol;
    }
   
}
