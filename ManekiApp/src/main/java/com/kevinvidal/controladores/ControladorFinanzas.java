package com.kevinvidal.controladores;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import com.kevinvidal.modelos.FormularioFinanzaDiario;
import com.kevinvidal.servicios.ServicioFinanzas;
import com.kevinvidal.servicios.ServicioPyme;

import jakarta.servlet.http.HttpSession;

@Controller
public class ControladorFinanzas {

	@Autowired
	private final ServicioPyme servicioPyme;
	private final ServicioFinanzas servicioFinanzas;
	
	public ControladorFinanzas(ServicioPyme servicioPyme,
			   				   ServicioFinanzas servicioFinanzas) {
		this.servicioPyme = servicioPyme;
		this.servicioFinanzas = servicioFinanzas;
	}
	
	@GetMapping("/finanzas/informe/diario")
	public String despliegaFormularioInforme() {
		return "FormularioFinanzasDiarias.jsp";
	}
	
	@GetMapping("/finanzas/{id}")
	public String desplegarInformeFinanzas(@PathVariable("id") Long id, HttpSession session, Model model) {
		if (session.getAttribute("idUsuario") == null) {
			return "redirect:/login";
		}
		model.addAttribute("pyme", servicioPyme.obtenerPorId(id));

		
	        
		return "AdministradorDeFinanzas.jsp";
	}
}
