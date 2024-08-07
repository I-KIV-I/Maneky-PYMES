package com.kevinvidal.modelos;

import java.util.Date;
import java.util.List;

import org.springframework.format.annotation.DateTimeFormat;

import com.fasterxml.jackson.annotation.JsonBackReference;
import com.fasterxml.jackson.annotation.JsonIgnore;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.JoinTable;
import jakarta.persistence.ManyToMany;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.OneToMany;
import jakarta.persistence.OneToOne;
import jakarta.persistence.Table;
import jakarta.persistence.Temporal;
import jakarta.persistence.TemporalType;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;

@Entity
@Table(name="pymes")
public class Pyme {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    
    @NotBlank
    private String rol;
    
    @NotBlank
    private String nombre;
    
    @NotBlank
    private String ubicacion;  
    
    @NotNull
    @Column(updatable=false)
    private String rutCreador;
    
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date fechaCreacionEmpresa; 
    
    @ManyToMany(fetch = FetchType.LAZY)
    @JoinTable(
        name = "categorias_pymes", 
        joinColumns = @JoinColumn(name = "pyme_id"), 
        inverseJoinColumns = @JoinColumn(name = "categoria_id")
    )
    private List<Categoria> categorias;
    
    @ManyToOne(fetch=FetchType.LAZY)
    @JsonIgnore
    @JoinColumn(name="id_usuario")
    private Usuario usuario;
    
    @OneToMany(mappedBy = "pyme")
    @JsonBackReference
    private List<FormularioFinanzaDiario> informesDiarios;
    
    @OneToMany(mappedBy = "pyme")
    @JsonBackReference
    private List<FormularioFinanzaMensual> informesMensuales;
    
    @OneToOne(mappedBy="pyme", cascade=CascadeType.ALL, fetch=FetchType.LAZY)
    @JsonBackReference
    private FinanzasTotales finanzasTotales;

    @Temporal(TemporalType.DATE)
    @Column(name="fecha_creacion")
    private Date fechaCreacion;
    
    @Temporal(TemporalType.DATE)
    @Column(name="fecha_actualizacion")
    private Date fechaActualizacion;
    
	public Pyme() {
		
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getRol() {
		return rol;
	}

	public void setRol(String rol) {
		this.rol = rol;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getUbicacion() {
		return ubicacion;
	}

	public void setUbicacion(String ubicacion) {
		this.ubicacion = ubicacion;
	}

	public String getRutCreador() {
		return rutCreador;
	}

	public void setRutCreador(String rutCreador) {
		this.rutCreador = rutCreador;
	}

	public Date getFechaCreacionEmpresa() {
		return fechaCreacionEmpresa;
	}

	public void setFechaCreacionEmpresa(Date fechaCreacionEmpresa) {
		this.fechaCreacionEmpresa = fechaCreacionEmpresa;
	}

	public List<Categoria> getCategorias() {
		return categorias;
	}

	public void setCategorias(List<Categoria> categorias) {
		this.categorias = categorias;
	}

	public Usuario getUsuario() {
		return usuario;
	}

	public void setUsuario(Usuario usuario) {
		this.usuario = usuario;
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

	public FinanzasTotales getFinanzasTotales() {
		return finanzasTotales;
	}

	public void setFinanzasTotales(FinanzasTotales finanzasTotales) {
		this.finanzasTotales = finanzasTotales;
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
	
    
}
