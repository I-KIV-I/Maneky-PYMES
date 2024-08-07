package com.kevinvidal.repositorios;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.kevinvidal.modelos.Mensaje;

@Repository
public interface RepositorioMensaje extends CrudRepository<Mensaje, Long> {
	
	List<Mensaje> findAll();
	List<Mensaje> findByUsuarioId(Long id);
	List<Mensaje> findByHiloId(Long hiloId);
	
    @Query("SELECT m FROM Mensaje m JOIN FETCH m.usuario WHERE m.hilo.id = :hiloId")
    List<Mensaje> findByHiloIdWithUsuario(Long hiloId);
}
