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
import jakarta.persistence.PrePersist;
import jakarta.persistence.Table;

@Entity
@Table(name="formulario_diario")
public class FormularioFinanzaDiario {

	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
	
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date fechaInformeDiario; 
	
	private Integer ingresoTotalDiario;
	
	private Integer CPV;
	
	private Integer gastosDeOperacion;
	
	private Integer impuestos;
	
	private Integer gananciaNeta;
	
	@ManyToOne(fetch = FetchType.LAZY)
	@JsonIgnore
    @JoinColumn(name="pymeId")
    private Pyme pyme;
	
	@PrePersist
    public void calcularValores() {
        if (ingresoTotalDiario != null) {
            impuestos = (int) (ingresoTotalDiario * 0.27) + (int) (ingresoTotalDiario * 0.19);
        }
        if (ingresoTotalDiario != null && CPV != null && gastosDeOperacion != null) {
            gananciaNeta = ingresoTotalDiario - (CPV + gastosDeOperacion + impuestos);
        }
    }
	
	
	public FormularioFinanzaDiario() {
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
}
