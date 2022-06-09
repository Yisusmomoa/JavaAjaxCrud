/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package models;

/**
 *
 * @author bjls2
 */
public class alumno {
    private int idAlumno;
    private String nombreAlumno;
    private int idEscuelaPertenece;

    public alumno(int idAlumno, String nombreAlumno, int idEscuelaPertenece) {
        this.idAlumno = idAlumno;
        this.nombreAlumno = nombreAlumno;
        this.idEscuelaPertenece = idEscuelaPertenece;
    }

    public alumno(int idAlumno, String nombreAlumno) {
        this.idAlumno = idAlumno;
        this.nombreAlumno = nombreAlumno;
    }

    public int getIdAlumno() {
        return idAlumno;
    }

    public void setIdAlumno(int idAlumno) {
        this.idAlumno = idAlumno;
    }

    public String getNombreAlumno() {
        return nombreAlumno;
    }

    public void setNombreAlumno(String nombreAlumno) {
        this.nombreAlumno = nombreAlumno;
    }

    public int getIdEscuelaPertenece() {
        return idEscuelaPertenece;
    }

    public void setIdEscuelaPertenece(int idEscuelaPertenece) {
        this.idEscuelaPertenece = idEscuelaPertenece;
    }
    
}
