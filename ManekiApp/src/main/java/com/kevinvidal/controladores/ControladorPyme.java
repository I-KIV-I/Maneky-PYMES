package com.kevinvidal.controladores;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.kevinvidal.modelos.Pyme;
import com.kevinvidal.modelos.Usuario;
import com.kevinvidal.servicios.ServicioPyme;
import com.kevinvidal.servicios.ServicioUsuario;

import jakarta.servlet.http.HttpSession;
import jakarta.validation.Valid;

@Controller
public class ControladorPyme {
	@Autowired
	private final ServicioPyme servicioPyme;
	private final ServicioUsuario servicioUsuario;
	
	public ControladorPyme(ServicioPyme servicioPyme, ServicioUsuario servicioUsuario) {
		this.servicioPyme = servicioPyme;
		this.servicioUsuario = servicioUsuario;
	}
	
	
	@GetMapping("/inscripcion/pyme")
	public String desplegarFormularioInscripcionEmpresa(@ModelAttribute("formPyme") Pyme nuevaPyme,
			  											HttpSession sesion) {
		if(sesion.getAttribute("idUsuario")==null) {
			return "redirect:/login";
		}
		
		return "FormularioNuevaPyme.jsp";
	}
	@PostMapping("/inscripcion/pyme")
	public String procesarFormularioTemporal(@Valid@ModelAttribute("formPyme") Pyme nuevaPyme,
										     BindingResult validaciones,
										     HttpSession sesion) {
		if(validaciones.hasErrors()) {
			return "FormularioNuevaPyme.jsp";
		}
		Usuario usuarioActualUsuario = servicioUsuario.obtenerUno((Long) sesion.getAttribute("idUsuario"));
		nuevaPyme.setUsuario(usuarioActualUsuario);
		this.servicioPyme.guardar(nuevaPyme);
		return "redirect:/herramientas";
	}
	
	/*@PostMapping("/edicion/pyme/{id}")
	public String procesarEditarInfoPyme(@Valid@ModelAttribute("formPyme") Pyme nuevaPyme,
										     BindingResult validaciones,
										     HttpSession sesion) {
		if(validaciones.hasErrors()) {
			return "FormularioEditarPyme.jsp";
		}
		Usuario usuarioActualUsuario = servicioUsuario.obtenerUno((Long) sesion.getAttribute("idUsuario"));
		nuevaPyme.setUsuario(usuarioActualUsuario);
		this.servicioPyme.guardar(nuevaPyme);
		return "redirect:/herramientas";
	}*/
	
	@GetMapping("/finanza_pyme/{id}")
	public String despliegaListaInforme(HttpSession sesion) {
		if(sesion.getAttribute("idUsuario")==null) {
			return "redirect:/login";
		}
		return "FinanzaPyme.jsp";
	}
	
}
