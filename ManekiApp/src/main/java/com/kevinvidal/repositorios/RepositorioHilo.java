package com.kevinvidal.repositorios;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.kevinvidal.modelos.Hilo;

@Repository
public interface RepositorioHilo extends CrudRepository<Hilo, Long> {
	
	List<Hilo> findAll();
	List<Hilo> findByUsuarioId(Long id);
}
