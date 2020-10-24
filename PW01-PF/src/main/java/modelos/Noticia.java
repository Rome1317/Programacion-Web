/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelos;

/**
 *
 * @author edgar
 */
public class Noticia {
    /*ATRIBUTOS*/
    private int id_noticia;
    private String titulo;
    private String descripcion;
    private boolean aprovado;
    private String fk_usuario;

    /*CONSTRUCTOR*/
    public Noticia(String titulo, String descripcion, String fk_usuario) {
        this.titulo = titulo;
        this.descripcion = descripcion;
        this.fk_usuario = fk_usuario;
    }
    
    /*GETTERS*/

    public int getId_noticia() {
        return id_noticia;
    }

    public String getTitulo() {
        return titulo;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public boolean isAprovado() {
        return aprovado;
    }

    public String getFk_usuario() {
        return fk_usuario;
    }
    
    /*SETTERS*/

    public void setId_noticia(int id_noticia) {
        this.id_noticia = id_noticia;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
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
    
}
