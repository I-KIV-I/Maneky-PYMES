package com.kevinvidal.repositorios;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.kevinvidal.modelos.Categoria;

public interface RepositorioCategoria extends CrudRepository<Categoria, Long> {
	List<Categoria> findAll();
	List<Categoria> findByPymesId(Long id);
}

