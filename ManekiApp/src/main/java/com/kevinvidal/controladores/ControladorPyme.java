package com.kevinvidal.controladores;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.kevinvidal.modelos.Pyme;

import jakarta.validation.Valid;

@Controller
public class ControladorPyme {
	@GetMapping("/inscripcion_pyme")
	public String desplegarFormularioInscripcionEmpresa(@ModelAttribute("formPyme") Pyme nuevaPyme) {
		return "FormularioNuevaPyme.jsp";
	}
	@PostMapping("/inscripcion_pyme")
	public String procesarFormularioTemporal(@Valid@ModelAttribute("formPyme") Pyme nuevaPyme,
										     BindingResult validaciones) {
		if(validaciones.hasErrors()) {
			return "FormularioNuevaPyme.jsp";
		}
				
		return "redirect:/perfil";
	}
	
	@PostMapping("/editar_pyme")
	public String procesasEdicionPyme(@Valid @ModelAttribute("edicioPyme") Pyme editarPyme){
		return "FormularioEdicionPyme.jsp";
	}
}
