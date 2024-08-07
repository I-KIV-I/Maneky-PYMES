package com.kevinvidal.modelos;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.format.annotation.DateTimeFormat;

import com.fasterxml.jackson.annotation.JsonBackReference;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.OneToMany;
import jakarta.persistence.OneToOne;
import jakarta.persistence.PrePersist;
import jakarta.persistence.Table;

@Entity
@Table(name="finanzas_totales")
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
    
    @OneToOne(fetch=FetchType.LAZY)
    @JsonBackReference
    @JoinColumn(name="pyme_id") 
    private Pyme pyme;

    @OneToMany(mappedBy = "finanzasTotales")
    @JsonBackReference
    private List<FormularioFinanzaDiario> informesDiarios = new ArrayList<>();

    @OneToMany(mappedBy = "finanzasTotales")
    @JsonBackReference
    private List<FormularioFinanzaMensual> informesMensuales = new ArrayList<>();

    @PrePersist
    public void prePersist() {
        if (informesDiarios == null) {
            informesDiarios = new ArrayList<>();
        }
        for (FormularioFinanzaDiario informeDiario : informesDiarios) {
            informeDiario.setFinanzasTotales(this);
        }
    }

    public void addInformeDiario(FormularioFinanzaDiario informeDiario) {
        informesDiarios.add(informeDiario);
        informeDiario.setFinanzasTotales(this);
    }

    public void removeInformeDiario(FormularioFinanzaDiario informeDiario) {
        informesDiarios.remove(informeDiario);
        informeDiario.setFinanzasTotales(null);
    }


    public void calcularTotales() {
        this.ingresoTotalDiario = informesDiarios.stream()
            .mapToInt(FormularioFinanzaDiario::getIngresoTotalDiario)
            .sum();

        this.CPV = informesDiarios.stream()
            .mapToInt(FormularioFinanzaDiario::getCPV)
            .sum();

        this.gastosDeOperacion = informesDiarios.stream()
            .mapToInt(FormularioFinanzaDiario::getGastosDeOperacion)
            .sum();

        this.impuestos = informesDiarios.stream()
            .mapToInt(FormularioFinanzaDiario::getImpuestos)
            .sum();

        this.gananciaNeta = informesDiarios.stream()
            .mapToInt(FormularioFinanzaDiario::getGananciaNeta)
            .sum(); 
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
