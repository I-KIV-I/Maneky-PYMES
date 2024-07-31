package com.kevinvidal.controladores;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;


import com.kevinvidal.servicios.ServicioHilo;
import com.kevinvidal.servicios.ServicioMensaje;

import jakarta.servlet.http.HttpSession;

@Controller
public class ControladorForo {
	
	@Autowired
	private final ServicioHilo servicioHilo;
	private final ServicioMensaje servicioMensaje;
	
	public ControladorForo(ServicioHilo servicioHilo,
						   ServicioMensaje servicioMensaje) {
		this.servicioHilo = servicioHilo;
		this.servicioMensaje = servicioMensaje;
	}
	@GetMapping("/foro")
	public String desplegarForoHome(HttpSession sesion, Model modelo) {
		/*if(sesion.getId().equals(null)) {
			return "redirect:/login";
		}*/
		sesion.setAttribute("listaHilos", servicioHilo.obtenerTodos());
		return "ForoHome.jsp";
	}
	@GetMapping("/foro/{id}")
	public String desplegarHilo() {
		return "ForoHilo.jsp";
	}
}
