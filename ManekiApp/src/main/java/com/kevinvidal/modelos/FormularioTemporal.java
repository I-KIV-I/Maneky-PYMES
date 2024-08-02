package com.kevinvidal.modelos;

import java.util.List;

public class FormularioTemporal {

	List<Categoria> categoria;
	String capital;
	String informacion;
	public List<Categoria> getCategoria() {
		return categoria;
	}
	public void setCategoria(List<Categoria> categoria) {
		this.categoria = categoria;
	}
	public String getCapital() {
		return capital;
	}
	public void setCapital(String capital) {
		this.capital = capital;
	}
	public String getInformacion() {
		return informacion;
	}
	public void setInformacion(String informacion) {
		this.informacion = informacion;
	}
}
