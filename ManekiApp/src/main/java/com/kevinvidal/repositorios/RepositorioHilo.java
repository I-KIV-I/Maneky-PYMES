package com.kevinvidal.repositorios;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.kevinvidal.modelos.Hilo;

public interface RepositorioHilo extends CrudRepository<Hilo, Long> {
	
	List<Hilo> findAll();
	List<Hilo> findByUsuarioId(Long id);
}
