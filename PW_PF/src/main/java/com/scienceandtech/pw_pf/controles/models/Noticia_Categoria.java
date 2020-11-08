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
public class Noticia_Categoria {
    /*ATRIBUTOS*/
    private int id_not_cat;
    private int fk_noticia;
    private int fk_categoria;
    
    /*CONSTRUCTORES*/
    public Noticia_Categoria(int fk_noticia, int fk_categoria) {
        this.fk_noticia = fk_noticia;
        this.fk_categoria = fk_categoria;
    }
    
    /*GETTERS*/
    public int getId_not_cat() {
        return id_not_cat;
    }

    public int getFk_noticia() {
        return fk_noticia;
    }

    public int getFk_categoria() {
        return fk_categoria;
    }
    
    /*SETTERS*/
    public void setId_not_cat(int id_not_cat) {
        this.id_not_cat = id_not_cat;
    }

    public void setFk_noticia(int fk_noticia) {
        this.fk_noticia = fk_noticia;
    }

    public void setFk_categoria(int fk_categoria) {
        this.fk_categoria = fk_categoria;
    }
    
}   
