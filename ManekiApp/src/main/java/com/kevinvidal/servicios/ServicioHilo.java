package com.kevinvidal.servicios;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kevinvidal.modelos.Hilo;
import com.kevinvidal.repositorios.RepositorioHilo;

@Service
public class ServicioHilo {
	@Autowired
	private RepositorioHilo repositorioHilo;
	
	public List<Hilo> obtenerTodos(){
		return repositorioHilo.findAll();
	}
	public Hilo guardarHilo(Hilo nuevoHilo) {
		return repositorioHilo.save(nuevoHilo);
	}
	public Hilo obtenPorId(Long idHilo) {
		return repositorioHilo.findById(idHilo).orElse(null);
	}
	public void eliminar(Long idHilo) {
		repositorioHilo.deleteById(idHilo);
	}
}
