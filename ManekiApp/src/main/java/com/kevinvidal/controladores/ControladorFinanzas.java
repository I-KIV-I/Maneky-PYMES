package com.kevinvidal.controladores;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ControladorFinanzas {

	@GetMapping("/finanzas/informe/diario")
	public String despliegaFormularioInforme() {
		return "FormularioFinanzasDiarias.jsp";
	}
}
