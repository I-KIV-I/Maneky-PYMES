package com.kevinvidal.repositorios;


import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.kevinvidal.modelos.Noticia;
import java.util.List;

@Repository
public interface RepositorioNoticia extends CrudRepository<Noticia, Long> {
	List<Noticia> findAll();
	}
