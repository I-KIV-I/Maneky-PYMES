package com.kevinvidal.controladores;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import jakarta.servlet.http.HttpSession;


@Controller
public class ControladorNavegacion {
	@GetMapping("/maneki_pyme/inicio")
	public String desplegarPaginaInicial() {
		return "PaginaInicial.jsp";
	}
	@GetMapping("/existenciaPyme")
	public String desplegarConsulta() {
	return "EleccionExistenciaEmpresa.jsp";	
	}
	
	@GetMapping("/crear_pyme")
	public String desplegarFormularioTemporal(HttpSession sesion) {
		return"FormularioTemporal.jsp";
	}
	@PostMapping("/crear_pyme")
	public String procesarFormularioTemporal(HttpSession sesion) {
	
	
		
		return "redirect:/guiaCrearPyme";
	}
	
	@GetMapping("/guiaCrearPyme")
	public String desplegarInformacionTramites(HttpSession sesion) {
		return "InfoTramites.jsp";
	}

	
	@GetMapping("/perfil")
	public String desplegarInformacionUsuario() {
		return "PerfilUsuario.jsp";
	}
}
