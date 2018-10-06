/*
 * To change this license header; choose License Headers in Project Properties.
 * To change this template file; choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

import java.io.Serializable;
import java.sql.Date;

/**
 *
 * @author JOSE
 */

public class Cosecha implements Serializable {

    private int idcosecha;
    private int idcolmena;
    private Colmenas colmena;
    private int idobrero;
    private int marcos;
    private float pesovacio;
    private float pesolleno;
    private Date fecha;
    private String tipoalza;

    public int getIdcolmena() {
        return idcolmena;
    }

    public void setIdcolmena(int idcolmena) {
        this.idcolmena = idcolmena;
    }

    public int getIdobrero() {
        return idobrero;
    }

    public void setIdobrero(int idobrero) {
        this.idobrero = idobrero;
    }

    public int getMarcos() {
        return marcos;
    }

    public void setMarcos(int marcos) {
        this.marcos = marcos;
    }

    public float getPesovacio() {
        return pesovacio;
    }

    public void setPesovacio(float pesovacio) {
        this.pesovacio = pesovacio;
    }

    public float getPesolleno() {
        return pesolleno;
    }

    public void setPesolleno(float pesolleno) {
        this.pesolleno = pesolleno;
    }

    public Date getFecha() {
        return fecha;
    }

    public void setFecha(String fecha) {
        this.fecha = Date.valueOf(fecha);
    }

    public String getTipoalza() {
        return tipoalza;
    }

    public void setTipoalza(String tipoalza) {
        this.tipoalza = tipoalza;
    }

    public Colmenas getColmena() {
        return colmena;
    }

    public void setColmena(Colmenas colmena) {
        this.colmena = colmena;
    }

    public int getIdcosecha() {
        return idcosecha;
    }

    public void setIdcosecha(int idcosecha) {
        this.idcosecha = idcosecha;
    }

}