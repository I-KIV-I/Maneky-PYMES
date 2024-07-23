package com.kevinvidal.servicios;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kevinvidal.modelos.Categoria;
import com.kevinvidal.repositorios.RepositorioCategoria;
@Service
public class ServicioCategoria{
	@Autowired
	RepositorioCategoria repositorioCategoria;
	
	public ServicioCategoria(RepositorioCategoria repositorioCategoria) {
		this.repositorioCategoria = repositorioCategoria;
	}

	
	public List<Categoria> obtenerTodos(){
		return repositorioCategoria.findAll();
	}
	
	public Categoria guardar(Categoria nuevaCategoria) {
		return repositorioCategoria.save(nuevaCategoria);
	}
	
	public Categoria obtenerPorId(Long idCategoria) {
		return repositorioCategoria.findById(idCategoria).orElse(null);
	}
	
	public List<Categoria> obtenerCategoriaPorPyme(Long idPyme){
		return repositorioCategoria.findByPymesId(idPyme);
	}
}
