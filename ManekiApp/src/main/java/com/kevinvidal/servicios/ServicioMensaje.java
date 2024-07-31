package com.kevinvidal.servicios;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kevinvidal.modelos.Mensaje;
import com.kevinvidal.repositorios.RepositorioMensaje;

@Service
public class ServicioMensaje {
	@Autowired
	private RepositorioMensaje repositorioMensaje;
	
	public List<Mensaje> obtenerTodos(){
		return (List<Mensaje>) repositorioMensaje.findAll();
	}
	public Mensaje guardarMensaje(Mensaje nuevoMensaje) {
		return repositorioMensaje.save(nuevoMensaje);
	}
	public Mensaje obtenerPorId(Long idMensaje) {
		return repositorioMensaje.findById(idMensaje).orElse(null);
	}
	public List<Mensaje> obtenerPorHiloId(Long hiloId){
		return repositorioMensaje.findByHiloIdWithUsuario(hiloId);
	}
	public void eliminar(Long idMensaje) {
		repositorioMensaje.deleteById(idMensaje);
	}
}
