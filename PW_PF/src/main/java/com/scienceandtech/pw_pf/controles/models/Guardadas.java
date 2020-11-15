/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.scienceandtech.pw_pf.controles.models;

/**
 *
 * @author edgar
 */
public class Guardadas {
//      ATRIBUTOS
    private int id_guardadas;
    private String etiqueta;
    private String fk_usuario;
    private int fk_noticia;
    
//    CONSTRUCTOR

    public Guardadas(String etiqueta, String fk_usuario, int fk_noticia) {
        this.etiqueta = etiqueta;
        this.fk_usuario = fk_usuario;
        this.fk_noticia = fk_noticia;
    }

    public Guardadas(int id_guardadas, String fk_usuario, int fk_noticia) {
        this.id_guardadas = id_guardadas;
        this.fk_usuario = fk_usuario;
        this.fk_noticia = fk_noticia;
    }

    public Guardadas(int id_guardadas) {
        this.id_guardadas = id_guardadas;
    }

// GETTER

    public int getId_guardadas() {
        return id_guardadas;
    }

    public String getEtiqueta() {
        return etiqueta;
    }

    public String getFk_usuario() {
        return fk_usuario;
    }

    public int getFk_noticia() {
        return fk_noticia;
    }
    
//    SETTER

    public void setId_guardadas(int id_guardadas) {
        this.id_guardadas = id_guardadas;
    }

    public void setEtiqueta(String etiqueta) {
        this.etiqueta = etiqueta;
    }

    public void setFk_usuario(String fk_usuario) {
        this.fk_usuario = fk_usuario;
    }

    public void setFk_noticia(int fk_noticia) {
        this.fk_noticia = fk_noticia;
    }
    
}
