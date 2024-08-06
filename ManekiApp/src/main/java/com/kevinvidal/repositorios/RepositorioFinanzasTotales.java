package com.kevinvidal.repositorios;

import java.util.List;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.kevinvidal.modelos.FinanzasTotales;
import com.kevinvidal.modelos.Pyme;

@Repository
public interface RepositorioFinanzasTotales extends CrudRepository<FinanzasTotales, Long> {
	List<FinanzasTotales> findAll();
	List<FinanzasTotales> findByPyme(Pyme pyme);

}
