package com.kevinvidal.controladores;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.kevinvidal.modelos.Hilo;
import com.kevinvidal.modelos.Mensaje;
import com.kevinvidal.modelos.Usuario;
import com.kevinvidal.servicios.ServicioHilo;
import com.kevinvidal.servicios.ServicioMensaje;
import com.kevinvidal.servicios.ServicioUsuario;

import jakarta.servlet.http.HttpSession;
import jakarta.validation.Valid;

@Controller
public class ControladorForo {
	
	@Autowired
	private final ServicioHilo servicioHilo;
	private final ServicioMensaje servicioMensaje;
	private final ServicioUsuario servicioUsuario;
	
	public ControladorForo(ServicioHilo servicioHilo,
						   ServicioMensaje servicioMensaje,
						   ServicioUsuario servicioUsuario) {
		this.servicioHilo = servicioHilo;
		this.servicioMensaje = servicioMensaje;
		this.servicioUsuario = servicioUsuario;
	}
	
	//Codigo general de Hilo
	
	@GetMapping("/foro")
	public String desplegarForoHome(HttpSession sesion, Model modelo,
									@ModelAttribute("formHilo") Hilo nuevoHilo) {
		if(sesion.getId() == null) {
			return "redirect:/login";
		}
		modelo.addAttribute("listaHilos", servicioHilo.obtenerTodos());
		return "ForoHome.jsp";
	}
	@PostMapping("/procesarforo")
	public String publicarHilo(HttpSession sesion, Model modelo,
							   @Valid@ModelAttribute("formHilo") Hilo nuevoHilo,
							   BindingResult validaciones) {
		if(validaciones.hasErrors()) {
			modelo.addAttribute("listaHilos", servicioHilo.obtenerTodos());
			return"ForoHome.jsp";
		}
		Long idUsuario = (Long) sesion.getAttribute("idUsuario");
		Usuario usuario = servicioUsuario.obtenerUno(idUsuario);
		nuevoHilo.setUsuario(usuario);
		servicioHilo.guardarHilo(nuevoHilo);
		Long idHilo = nuevoHilo.getId();
		
		return "redirect:/foro/"+ idHilo;
	}
	
	
	
	
	
	//Codigo jsp detalles de hilos 
	
	@GetMapping("/foro/{id}")
	public String desplegarHilo(@PathVariable("id") Long idHilo, Model modelo,
							    HttpSession sesion,
							    @ModelAttribute("formMensaje") Mensaje nuevoMensaje) {
		if(sesion.getAttribute("idUsuario") == null) {
		return "redirect:/login";
		}
		modelo.addAttribute("hilo", servicioHilo.obtenPorId(idHilo));
		modelo.addAttribute("listaMensajes", servicioMensaje.obtenerPorHiloId(idHilo));
		
		return "ForoHilo.jsp";
	}
	
	@PostMapping("/foro/{id}")
	public String publicarMensaje(@PathVariable("id")Long idHilo,
								  @Valid@ModelAttribute("formMensaje") Mensaje nuevoMensaje,
								  BindingResult validaciones,
								  HttpSession sesion,
								  Model modelo) {
		if(validaciones.hasErrors()) {
			modelo.addAttribute("hilo", servicioHilo.obtenPorId(idHilo));
			modelo.addAttribute("listaMensajes", servicioMensaje.obtenerPorHiloId(idHilo));
			return "ForoHilo.jsp";
		}
		Usuario usuario = servicioUsuario.obtenerUno((Long)sesion.getAttribute("idUsuario"));
		Hilo hilo = servicioHilo.obtenPorId(idHilo);
		nuevoMensaje.setHilo(hilo);
		nuevoMensaje.setUsuario(usuario);
		servicioMensaje.guardarMensaje(nuevoMensaje);
		return "redirect:/foro/"+idHilo;
	}
}
