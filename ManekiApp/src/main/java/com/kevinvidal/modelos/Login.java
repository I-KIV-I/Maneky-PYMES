package com.kevinvidal.modelos;

import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;

public class Login {
	@NotBlank(message = "Por favor proporciona tu correo")
	@Email(message="Por favor proporciona un correo valido")
	private String correoUsuario;
	@NotNull(message = "Por favor porporcione su clave")
	private String contraseniaUsuario;
	
	public Login() {}

	public String getCorreoUsuario() {
		return correoUsuario;
	}

	public void setCorreoUsuario(String correoUsuario) {
		this.correoUsuario = correoUsuario;
	}

	public String getContraseniaUsuario() {
		return contraseniaUsuario;
	}

	public void setContraseniaUsuario(String contraseniaUsuario) {
		this.contraseniaUsuario = contraseniaUsuario;
	}

	
	

}
