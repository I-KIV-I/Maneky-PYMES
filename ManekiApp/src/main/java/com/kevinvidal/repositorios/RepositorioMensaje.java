package com.kevinvidal.repositorios;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import com.kevinvidal.modelos.Mensaje;

public interface RepositorioMensaje extends CrudRepository<Mensaje, Long> {
	
	List<Mensaje> findAll();
	List<Mensaje> findByUsuarioId(Long id);
	List<Mensaje> findByHiloId(Long hiloId);
	
	@Query("SELECT m FROM Mensaje m JOIN m.usuario WHERE m.hilo.id = :hiloId")
    List<Mensaje> findByHiloIdWithUsuario(Long hiloId);
}
