/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.scienceandtech.pw_pf.controles.models;

/**
 *
 * @author Gonzalez
 */
public class Noticia_Denegada {
    
    private int id_noticia;
    private String comentario;
    private String usuario;
    
    public Noticia_Denegada(int id_noticia, String comentario, String usuario) {
        this.id_noticia = id_noticia;
        this.comentario = comentario;
        this.usuario = usuario;
    }
    
    public void setId(int noticia) {
        this.id_noticia = noticia;
    }

    public void setComentario(String comentario) {
        this.comentario = comentario;
    }

    public void setUser (String usuario) {
        this.usuario = usuario;
    }
    
    public int getId() {
        return id_noticia;
    }

    public String getComentario() {
        return comentario;
    }

    public String getUsuario() {
        return usuario;
    }

}
