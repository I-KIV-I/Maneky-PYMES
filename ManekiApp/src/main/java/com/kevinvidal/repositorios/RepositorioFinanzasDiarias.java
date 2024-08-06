package com.kevinvidal.repositorios;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.kevinvidal.modelos.FormularioFinanzaDiario;

@Repository
public interface RepositorioFinanzasDiarias extends CrudRepository<FormularioFinanzaDiario, Long>{

	List<FormularioFinanzaDiario> findAll();
	List<FormularioFinanzaDiario> findByPymeId(Long id);
}
