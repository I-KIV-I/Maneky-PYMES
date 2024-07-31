package com.kevinvidal.repositorios;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.kevinvidal.modelos.Mensaje;

public interface RepositorioMensaje extends CrudRepository<Mensaje, Long> {
	
	List<Mensaje> findAll();
	List<Mensaje> findByUsuarioId(Long id);
}
