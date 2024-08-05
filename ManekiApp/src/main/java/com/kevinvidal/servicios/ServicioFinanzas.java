package com.kevinvidal.servicios;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;

import com.kevinvidal.modelos.FormularioFinanzaDiario;
import com.kevinvidal.repositorios.RepositorioFinanzasDiarias;

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

	    public FormularioFinanzaDiario save(FormularioFinanzaDiario entity) {
	        return repository.save(entity);
	    }

	    public void deleteById(Long id) {
	        repository.deleteById(id);
	    }
}
