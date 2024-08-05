package com.kevinvidal.repositorios;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.kevinvidal.modelos.FormularioFinanzaDiario;
import com.kevinvidal.modelos.Pyme;

public interface RepositorioPyme extends CrudRepository<Pyme, Long> {
	List<Pyme> findAll();
	
	List<Pyme> findByCategoriasId(Long idCategoria);
	
	List<Pyme> findByUsuarioId(Long idUsuario);
}
