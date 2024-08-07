package com.kevinvidal.modelos;

import java.util.Date;
import java.util.List;

import org.springframework.format.annotation.DateTimeFormat;

import com.fasterxml.jackson.annotation.JsonIgnore;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.OneToMany;
import jakarta.persistence.PrePersist;
import jakarta.persistence.Table;
import jakarta.persistence.Temporal;
import jakarta.persistence.TemporalType;
import jakarta.validation.constraints.NotBlank;

@Entity
@Table(name="formulario_mensual")
public class FormularioFinanzaMensual {
	
	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
	
	@NotBlank
	private Integer ingresoTotalDiario;
	
	@NotBlank
	private Integer CPV;
	
	@NotBlank
	private Integer gastosDeOperacion;
	
	@NotBlank
	private Integer iva;
	
	@NotBlank
	private Integer impuestos;
	
	@NotBlank
	private Integer declaracionDeRenta;
	
	@NotBlank
	private Integer gananciaNeta;
	
	@ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name="pyme_id")
    private Pyme pyme;
	
	@ManyToOne(fetch = FetchType.LAZY)
	@JsonIgnore
    @JoinColumn(name="finanzas_id")
    private FinanzasTotales finanzasTotales;
	
	@OneToMany(fetch = FetchType.LAZY)
    @JoinColumn(name="Formularios_Id")
    private List<FormularioFinanzaDiario> informesdelmes;
	
	@Temporal(TemporalType.TIMESTAMP)
	@Column(name="fecha_creacion")
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date fechaCreacion;
	
	@Temporal(TemporalType.TIMESTAMP)
	@Column(name="fecha_actualizacion")
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date fechaActualizacion;
	
	@PrePersist
    public void calcularValores() {
        if (ingresoTotalDiario != null) {
            impuestos = (int) (ingresoTotalDiario * 0.27) + (int) (ingresoTotalDiario * 0.19);
        }
        if (ingresoTotalDiario != null && CPV != null && gastosDeOperacion != null) {
            gananciaNeta = ingresoTotalDiario - (CPV + gastosDeOperacion + impuestos);
        }
    }

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public List<FormularioFinanzaDiario> getInformesdelmes() {
		return informesdelmes;
	}

	public void setInformesdelmes(List<FormularioFinanzaDiario> informesdelmes) {
		this.informesdelmes = informesdelmes;
	}

	public Date getFechaCreacion() {
		return fechaCreacion;
	}

	public void setFechaCreacion(Date fechaCreacion) {
		this.fechaCreacion = fechaCreacion;
	}

	public Date getFechaActualizacion() {
		return fechaActualizacion;
	}

	public void setFechaActualizacion(Date fechaActualizacion) {
		this.fechaActualizacion = fechaActualizacion;
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

	public Integer getIva() {
		return iva;
	}

	public void setIva(Integer iva) {
		this.iva = iva;
	}

	public Integer getImpuestos() {
		return impuestos;
	}

	public void setImpuestos(Integer impuestos) {
		this.impuestos = impuestos;
	}

	public Integer getDeclaracionDeRenta() {
		return declaracionDeRenta;
	}

	public void setDeclaracionDeRenta(Integer declaracionDeRenta) {
		this.declaracionDeRenta = declaracionDeRenta;
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

	public FinanzasTotales getFinanzasTotales() {
		return finanzasTotales;
	}

	public void setFinanzasTotales(FinanzasTotales finanzasTotales) {
		this.finanzasTotales = finanzasTotales;
	}

	
	
	
}
