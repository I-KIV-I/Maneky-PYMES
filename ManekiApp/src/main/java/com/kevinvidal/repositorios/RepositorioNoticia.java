package com.kevinvidal.repositorios;


import org.springframework.data.repository.CrudRepository;

import com.kevinvidal.modelos.Noticia;
import java.util.List;


public interface RepositorioNoticia extends CrudRepository<Noticia, Long> {
	List<Noticia> findAll();
	}
