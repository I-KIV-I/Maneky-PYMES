package com.kevinvidal.repositorios;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.kevinvidal.modelos.Usuario;

@Repository
public interface RepositorioUsuario extends CrudRepository<Usuario, Long>{
	List<Usuario> findAll();
	Usuario findByContrasenia(String contrasenia);
	Usuario findByCorreo(String correo);
}
