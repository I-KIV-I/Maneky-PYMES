package com.kevinvidal.servicios;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kevinvidal.modelos.FormularioFinanzaDiario;
import com.kevinvidal.modelos.Pyme;
import com.kevinvidal.repositorios.RepositorioFinanzasDiarias;
@Service
public class ServicioFinanzas {
	 @Autowired
	    private RepositorioFinanzasDiarias repository;

	    public List<FormularioFinanzaDiario> findAll() {
	        List<FormularioFinanzaDiario> lista = new ArrayList<>();
	        repository.findAll().forEach(lista::add);
	        return lista;
	    }

	    public Optional<FormularioFinanzaDiario> findById(Long id) {
	        return repository.findById(id);
	    }
	    
	    public List<FormularioFinanzaDiario> findByPyme(Long pymeid){
	    	return repository.findByPymeId(pymeid);
	    }
	    public FormularioFinanzaDiario save(FormularioFinanzaDiario entity,Pyme pyme) {
	    	List<FormularioFinanzaDiario> listaInforme = repository.findByPymeId(pyme.getId());
	    	listaInforme.add(entity);
	    	entity.setPyme(pyme);
	        pyme.setFinanzaDiaria(listaInforme);
	        return repository.save(entity);
	    }

	    public void deleteById(Long id) {
	        repository.deleteById(id);
	    }
	    public List<FormularioFinanzaDiario> obtenerPorPyme(Long idPyme){
	    	return repository.findByPymeId(idPyme);
	    }
}
