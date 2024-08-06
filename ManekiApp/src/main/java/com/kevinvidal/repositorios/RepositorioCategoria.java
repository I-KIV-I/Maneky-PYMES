package com.kevinvidal.repositorios;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.kevinvidal.modelos.Categoria;

@Repository
public interface RepositorioCategoria extends CrudRepository<Categoria, Long> {
	List<Categoria> findAll();
	List<Categoria> findByPymesId(Long id);
}

