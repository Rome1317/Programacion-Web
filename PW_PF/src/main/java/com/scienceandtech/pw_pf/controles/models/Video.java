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
public class Video {
//   ATRIBUTOS
    private int id_video;
    private String ulr;
    private int fk_noticia;
    
//    CONSTRUCTOR

    public Video(String ulr, int fk_noticia) {
        this.ulr = ulr;
        this.fk_noticia = fk_noticia;
    }
    
//    GETTERS

    public int getId_video() {
        return id_video;
    }

    public String getUlr() {
        return ulr;
    }

    public int getFk_noticia() {
        return fk_noticia;
    }
    
//    SETTERS

    public void setId_video(int id_video) {
        this.id_video = id_video;
    }

    public void setUlr(String ulr) {
        this.ulr = ulr;
    }

    public void setFk_noticia(int fk_noticia) {
        this.fk_noticia = fk_noticia;
    }
    
}
