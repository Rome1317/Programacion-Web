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
public class Imagen {
//    ATRIBUTOS
    private int id_imagen;
    private String extencion;
    private int fk_noticia;


    
//    CONSTRUCTOR
    public Imagen(int id_imagen, String extencion, int fk_noticia) {
        this.id_imagen = id_imagen;
        this.extencion = extencion;
        this.fk_noticia = fk_noticia;
    }
    
    public Imagen(String extencion, int fk_noticia) {
        this.extencion = extencion;
        this.fk_noticia = fk_noticia;
    }
    
//    GETTERS

    public int getId_imagen() {
        return id_imagen;
    }

    public String getExtencion() {
        return extencion;
    }

    public int getFk_noticia() {
        return fk_noticia;
    }
    
//    SETTERS

    public void setId_imagen(int id_imagen) {
        this.id_imagen = id_imagen;
    }

    public void setExtencion(String extencion) {
        this.extencion = extencion;
    }

    public void setFk_noticia(int fk_noticia) {
        this.fk_noticia = fk_noticia;
    }
    
    
}
