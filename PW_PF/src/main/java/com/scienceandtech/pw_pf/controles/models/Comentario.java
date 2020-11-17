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
public class Comentario {
//   ATRIBUTOS
    private int id_comentario;
    private String comentario;
    private String fk_usuario;
    private int fk_noticia;
    private int id_padre;

    public int getId_padre() {
        return id_padre;
    }

    public Comentario(int id_comentario, String comentario, String fk_usuario, int fk_noticia, int id_padre) {
        this.id_comentario = id_comentario;
        this.comentario = comentario;
        this.fk_usuario = fk_usuario;
        this.fk_noticia = fk_noticia;
        this.id_padre = id_padre;
    }
    
//    CONSTRUCTOR

    public Comentario(String comentario, String fk_usuario, int fk_noticia) {
        this.comentario = comentario;
        this.fk_usuario = fk_usuario;
        this.fk_noticia = fk_noticia;
    }
    
//    GETTER

    public int getId_comentario() {
        return id_comentario;
    }

    public String getComentario() {
        return comentario;
    }

    public String getFk_usuario() {
        return fk_usuario;
    }

    public int getFk_noticia() {
        return fk_noticia;
    }
    
//    SETTER

    public void setId_comentario(int id_comentario) {
        this.id_comentario = id_comentario;
    }

    public void setComentario(String comentario) {
        this.comentario = comentario;
    }

    public void setFk_usuario(String fk_usuario) {
        this.fk_usuario = fk_usuario;
    }

    public void setFk_noticia(int fk_noticia) {
        this.fk_noticia = fk_noticia;
    }
    
}
