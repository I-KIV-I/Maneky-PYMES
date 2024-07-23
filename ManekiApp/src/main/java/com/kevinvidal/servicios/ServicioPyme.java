package com.kevinvidal.servicios;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kevinvidal.modelos.Pyme;
import com.kevinvidal.repositorios.RepositorioPyme;

@Service
public class ServicioPyme{
	@Autowired
	RepositorioPyme repositorioPyme;
	
	public ServicioPyme(RepositorioPyme repositorioPyme) {
		this.repositorioPyme = repositorioPyme;
	}
	
	public List<Pyme> obtenerTodos(){
		return repositorioPyme.findAll();
	}
	public Pyme guardar(Pyme nuevaPyme) {
		return repositorioPyme.save(nuevaPyme);
	}
	public Pyme obtenerPorId(Long idPyme) {
		return repositorioPyme.findById(idPyme).orElse(null);
	}
	public List<Pyme> obtenerPymePorCategoriaId(Long idCategoria){
		return repositorioPyme.findByCategoriasId(idCategoria);
	}
	public List<Pyme> obtenerPymePorUsuarioId(Long idUsuario){
		return repositorioPyme.findByUsuarioId(idUsuario);
	}
}
