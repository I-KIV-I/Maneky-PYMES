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
import jakarta.persistence.PrePersist;
import jakarta.persistence.PreUpdate;
import jakarta.persistence.Table;
import jakarta.persistence.Temporal;
import jakarta.persistence.TemporalType;
@Entity
@Table(name="categorias")
public class Categoria {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	 
	private String name;
	
	
	
	@Temporal(TemporalType.DATE)
	@Column(name="fecha_creacion")
	private Date createdAt;
			
			
			
	@Temporal(TemporalType.DATE)
	@Column(name="fecha_actualizacion")
	private Date updatedAt;
	
	
	
	
	@ManyToMany(fetch = FetchType.LAZY)
    @JoinTable(
        name = "categorias_pymes", 
        joinColumns = @JoinColumn(name = "categoria_id"), 
        inverseJoinColumns = @JoinColumn(name = "pyme_id")
    )
    private List<Pyme> pymes;
	
	public Categoria() {}
	
	
    @PrePersist
	protected void onCreate() {
		this.createdAt = new Date();
		this.updatedAt = this.createdAt;
	}
	
	@PreUpdate
	protected void onUpdate(){
		this.updatedAt = new Date();
	}


	public Long getId() {
		return id;
	}


	public void setId(Long id) {
		this.id = id;
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public List<Pyme> getPymes() {
		return pymes;
	}


	public void setPymes(List<Pyme> pymes) {
		this.pymes = pymes;
	}
	
	
}
