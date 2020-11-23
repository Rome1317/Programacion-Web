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
public class NoticiaDenegada {
    private int fk_noticia;
    private String comentario;
    private String fk_usuario;

    public NoticiaDenegada(int fk_noticia, String comentario, String fk_usuario) {
        this.fk_noticia = fk_noticia;
        this.comentario = comentario;
        this.fk_usuario = fk_usuario;
    }                      
}
