package com.kevinvidal.modelos;

import java.util.Date;
import java.util.List;

import org.springframework.format.annotation.DateTimeFormat;

import com.fasterxml.jackson.annotation.JsonIgnore;

import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;

@Entity
@Table(name="finanzasTotales")
public class FinanzasTotales {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date fechaInformeDiario; 

    private Integer ingresoTotalDiario = 0;
    private Integer CPV = 0;
    private Integer gastosDeOperacion = 0;
    private Integer impuestos = 0;
    private Integer gananciaNeta = 0;

    @ManyToOne(fetch = FetchType.LAZY)
    @JsonIgnore
    @JoinColumn(name="pymeId")
    private Pyme pyme;

    @OneToMany(mappedBy = "finanzasTotales")
    private List<FormularioFinanzaDiario> informesDiarios;

    @OneToMany(mappedBy = "finanzasTotales")
    private List<FormularioFinanzaMensual> informesMensuales;

    public FinanzasTotales() {
        super();
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Date getFechaInformeDiario() {
        return fechaInformeDiario;
    }

    public void setFechaInformeDiario(Date fechaInformeDiario) {
        this.fechaInformeDiario = fechaInformeDiario;
    }

    public Integer getIngresoTotalDiario() {
        return ingresoTotalDiario;
    }

    public void setIngresoTotalDiario(Integer ingresoTotalDiario) {
        this.ingresoTotalDiario = ingresoTotalDiario;
    }

    public Integer getCPV() {
        return CPV;
    }

    public void setCPV(Integer cPV) {
        CPV = cPV;
    }

    public Integer getGastosDeOperacion() {
        return gastosDeOperacion;
    }

    public void setGastosDeOperacion(Integer gastosDeOperacion) {
        this.gastosDeOperacion = gastosDeOperacion;
    }

    public Integer getImpuestos() {
        return impuestos;
    }

    public void setImpuestos(Integer impuestos) {
        this.impuestos = impuestos;
    }

    public Integer getGananciaNeta() {
        return gananciaNeta;
    }

    public void setGananciaNeta(Integer gananciaNeta) {
        this.gananciaNeta = gananciaNeta;
    }

    public Pyme getPyme() {
        return pyme;
    }

    public void setPyme(Pyme pyme) {
        this.pyme = pyme;
    }

    public List<FormularioFinanzaDiario> getInformesDiarios() {
        return informesDiarios;
    }

    public void setInformesDiarios(List<FormularioFinanzaDiario> informesDiarios) {
        this.informesDiarios = informesDiarios;
    }

    public List<FormularioFinanzaMensual> getInformesMensuales() {
        return informesMensuales;
    }

    public void setInformesMensuales(List<FormularioFinanzaMensual> informesMensuales) {
        this.informesMensuales = informesMensuales;
    }
}
