package com.kevinvidal.repositorios;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.kevinvidal.modelos.FormularioFinanzaDiario;
import com.kevinvidal.modelos.Pyme;

public interface RepositorioFinanzasDiarias extends CrudRepository<FormularioFinanzaDiario, Long>{
	
	List<FormularioFinanzaDiario> findAll();	
	List<FormularioFinanzaDiario> findByPymeId(Long id);
}
