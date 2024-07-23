package com.kevinvidal.controladores;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;

import com.kevinvidal.modelos.Pyme;

@Controller
public class ControladorPyme {
	@GetMapping("/inscrib/empr")
	public String desplegarFormularioInscripcionEmpresa(@ModelAttribute("formPyme") Pyme nuevaPyme) {
		return "FormularioNuevaPyme";
	}
}
