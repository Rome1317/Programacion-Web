/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.scienceandtech.pw_pf.controles.models;

import java.util.List;

/**
 *
 * @author edgar
 */
public class Noticia {
    /*ATRIBUTOS*/
    private int id_noticia;
    private String titulo;
    private String resumen;
    private String descripcion;
    private String  noticia;
    private boolean aprovado;
    private String fk_usuario;
    private int likes;
    private List<Imagen> Img;

    public Noticia(int id_noticia, String titulo, String descripcion, String noticia, boolean aprovado, String fk_usuario, int likes) {
        this.id_noticia = id_noticia;
        this.titulo = titulo;
        this.descripcion = descripcion;
        this.noticia = noticia;
        this.aprovado = aprovado;
        this.fk_usuario = fk_usuario;
        this.likes = likes;
    }

    

    /*CONSTRUCTOR*/
    public Noticia(String titulo,String resumen, String descripcion,String noticia, String fk_usuario) {
        this.titulo = titulo;
        this.resumen= resumen;
        this.descripcion = descripcion;
        this.noticia = noticia;
        this.fk_usuario = fk_usuario;
    }
    
       /*CONSTRUCTOR*/
    public Noticia(String titulo, String descripcion, String fk_usuario) {
        this.titulo = titulo;
        this.descripcion = descripcion;
        this.fk_usuario = fk_usuario;
        this.Img = Img;
    }
    

    public Noticia(int id_noticia, String titulo, String descripcion, List<Imagen> Img) {
        this.id_noticia = id_noticia;
        this.titulo = titulo;
        this.descripcion = descripcion;
        this.Img = Img;
    }
    
    public Noticia(int id_noticia, String titulo, String descripcion) {
        this.id_noticia = id_noticia;
        this.titulo = titulo;
        this.descripcion = descripcion;
    }
    
    /*GETTERS*/
    public String getMainImg() {
       return Img.get(0).getExtencion();
    }

    public int getLikes() {
        return likes;
    }

    public List<Imagen> getImg() {
        return Img;
    }
    
   
    
    public int getId_noticia() {
        return id_noticia;
    }

    public String getTitulo() {
        return titulo;
    }
   

    public String getDescripcion() {
        return descripcion;
    }
    
    public String getNoticia() {
        return noticia;
    }

    public boolean isAprovado() {
        return aprovado;
    }

    public String getFk_usuario() {
        return fk_usuario;
    }
    
    public String getResumen(){
        return resumen;
    }
  
    
    /*SETTERS*/

    public void setId_noticia(int id_noticia) {
        this.id_noticia = id_noticia;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }
    
    public void setResumen(String resumen){
        this.resumen = resumen;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public void setAprovado(boolean aprovado) {
        this.aprovado = aprovado;
    }

    public void setFk_usuario(String fk_usuario) {
        this.fk_usuario = fk_usuario;
    }
    
        public void setImg(List<Imagen> Img) {
        this.Img = Img;
    }

}
