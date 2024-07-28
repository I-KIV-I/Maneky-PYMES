package com.kevinvidal.repositorios;

import org.springframework.data.repository.CrudRepository;

import com.kevinvidal.modelos.Mensaje;

public interface RepositorioMensaje extends CrudRepository<Mensaje, Long> {

}
