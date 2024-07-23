package com.kevinvidal.controladores;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import jakarta.servlet.http.HttpSession;




@Controller
public class ControladorNavegacion {
	@GetMapping("/maneki_pyme/inicio")
	public String desplegarPaginaInicial() {
		return "PaginaInicial.jsp";
	}
	@GetMapping("/crear/empr/info")
	public String desplegarFormularioTemporal(HttpSession sesion) {
		return"FormularioTemporal.jsp";
	}
	
}
