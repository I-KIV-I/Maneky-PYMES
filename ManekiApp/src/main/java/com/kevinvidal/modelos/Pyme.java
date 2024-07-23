package com.kevinvidal.modelos;

import java.util.Date;
import java.util.List;

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
import jakarta.persistence.PrePersist;
import jakarta.persistence.PreUpdate;
import jakarta.persistence.Table;
import jakarta.persistence.Temporal;
import jakarta.persistence.TemporalType;

@Entity
@Table(name="pymes")
public class Pyme {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	
	private String run;
	
	private String nombre;
	
	private String ubicacion;
	
	private String rutCreador;
	
	private Date fechaCreacionEmpresa; 
	
	
	@ManyToMany(fetch = FetchType.LAZY)
	@JoinTable(
			 name = "categorias_productos", 
			 joinColumns = @JoinColumn(name = "pyme_id"), 
			 inverseJoinColumns = @JoinColumn(name = "categoria_id")
	)
	private List<Categoria> categorias;
	
	@ManyToOne(fetch=FetchType.LAZY)
	@JoinColumn(name="id_usuario")
	private Usuario usuario;
	
	
	

	@Temporal(TemporalType.DATE)
	@Column(name="fecha_creacion")
	private Date fechaCreacion;
	
	@Temporal(TemporalType.DATE)
	@Column(name="fecha_actualizacion")
	private Date fechaActualizacion;
	
	
	public Pyme() {}
	
	
	@PrePersist
	protected void onCreate() {
		this.fechaCreacion = new Date();
		this.fechaActualizacion = this.fechaCreacion;
	}
	
	@PreUpdate
	protected void onUpdate() {
		this.fechaActualizacion = new Date();
	}


	public Long getId() {
		return id;
	}


	public void setId(Long id) {
		this.id = id;
	}


	public String getRun() {
		return run;
	}


	public void setRun(String run) {
		this.run = run;
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
	
	
}
