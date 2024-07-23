package com.kevinvidal.servicios;

import java.util.List;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.validation.BindingResult;

import com.kevinvidal.modelos.Login;
import com.kevinvidal.modelos.Usuario;
import com.kevinvidal.repositorios.RepositorioUsuario;

@Service
public class ServicioUsuario {
	@Autowired
	RepositorioUsuario repositorioUsuario;
	
	public ServicioUsuario(RepositorioUsuario repositorioUsuario) {
		this.repositorioUsuario = repositorioUsuario;
	}
	public List<Usuario> obtenerTodos(){
		return this.repositorioUsuario.findAll();
	}
	public Usuario agregar(Usuario usuarioNuevo) {
		String contraseñaEncriptada = BCrypt.hashpw(usuarioNuevo.getContrasenia(), BCrypt.gensalt()); 
		usuarioNuevo.setContrasenia(contraseñaEncriptada);
		return this.repositorioUsuario.save(usuarioNuevo);
	}
	public Usuario actualizar(Usuario usuario) {
		return this.repositorioUsuario.save(usuario);
	}
	public Usuario obtenerUno(Long id) {
		return this.repositorioUsuario.findById(id).orElse(null);
	}
	public BindingResult validarRegistro(BindingResult validaciones, Usuario usuario) {
		if(!usuario.getContrasenia().equals(usuario.getConfirmarContrasenia())) {
			validaciones.rejectValue("confirmarContrasenia", "NoCoinciden", "Las Contraseñas no coinciden");
		}
		if(this.obtenerUsuarioPorCorreo(usuario.getCorreo()) != null) {
			validaciones.rejectValue("correo", "Existente", "Este correo ya esta registrado");
		}
		return validaciones;
	}
	public Usuario obtenerUsuarioPorCorreo(String correo) {
		return this.repositorioUsuario.findByCorreo(correo);
	}
	public BindingResult validarLogin(BindingResult validaciones, Login loginUsuario) {
		Usuario usuarioActual = this.obtenerUsuarioPorCorreo(loginUsuario.getCorreoUsuario());
		if(usuarioActual == null) {
			validaciones.rejectValue("correoUsuario", "no existe", "Este usuario no existe");
		}
		else if(! BCrypt.checkpw(loginUsuario.getContraseniaUsuario(), usuarioActual.getContrasenia())) {
			validaciones.rejectValue("contraseniaUsuario", "NoExistente", "Credenciales no validas");
		}
		return validaciones;
	}
	public Usuario obtenerLoginPorCorreo(Login loginUsuario) {
		Usuario usuarioActual= this.repositorioUsuario.findByCorreo(loginUsuario.getCorreoUsuario());
		if (BCrypt.checkpw(loginUsuario.getContraseniaUsuario(), usuarioActual.getContrasenia())) {
			return usuarioActual;
		}
		return null;
	}
}
