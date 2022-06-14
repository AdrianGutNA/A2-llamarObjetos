/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Clases;

/**
 *
 * @author AdriánGutNa
 */
public class Objeto {
    String matricula;
    String nombre;
    String apellidoPaterno;
    String apellidoMaterno;
    int ddi;
    int dwi;
    int ecbd;

    public String getMatricula() {
        return matricula;
    }

    public String getNombre() {
        return nombre;
    }

    public String getApellidoPaterno() {
        return apellidoPaterno;
    }

    public String getApellidoMaterno() {
        return apellidoMaterno;
    }

    public int getDdi() {
        return ddi;
    }

    public int getDwi() {
        return dwi;
    }

    public int getEcbd() {
        return ecbd;
    }

    public Objeto(String matricula, String nombre, String apellidoPaterno, String apellidoMaterno, int ddi, int dwi, int ecbd) {
        this.matricula = matricula;
        this.nombre = nombre;
        this.apellidoPaterno = apellidoPaterno;
        this.apellidoMaterno = apellidoMaterno;
        this.ddi = ddi;
        this.dwi = dwi;
        this.ecbd = ecbd;
    }
    
}
