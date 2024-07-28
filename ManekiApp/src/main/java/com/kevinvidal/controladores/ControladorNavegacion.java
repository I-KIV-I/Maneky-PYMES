package com.kevinvidal.controladores;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.kevinvidal.modelos.Categoria;
import com.kevinvidal.modelos.FormularioTemporal;
import com.kevinvidal.modelos.Usuario;
import com.kevinvidal.servicios.ServicioCategoria;

import jakarta.servlet.http.HttpSession;


@Controller
public class ControladorNavegacion {
	@Autowired
	private final ServicioCategoria servicioCategoria;
	
	public ControladorNavegacion(ServicioCategoria servicioCategoria) {
		this.servicioCategoria = servicioCategoria;
	}
	
	
	@GetMapping("/maneki_pyme/inicio")
	public String desplegarPaginaInicial() {
		return "PaginaInicial.jsp";
	}
	
	@GetMapping("/existenciaPyme")
	public String desplegarConsultaPyme(Model model) {
		List<Categoria> todasCategorias = servicioCategoria.obtenerTodos();
		model.addAttribute("listaCategorias",todasCategorias);
		
		return "EleccionExistenciaEmpresa.jsp";	
	}
	
	@GetMapping("/procesar/informacion/temporal")
	public String desplegarFormularioTemporal(HttpSession sesion,
											  @ModelAttribute("formTemp")FormularioTemporal formTemp) {
		sesion.setAttribute("categoriaPyme", formTemp);
		sesion.setAttribute(null, formTemp);
		return"FormularioTemporal.jsp";
	}
	@PostMapping("/procesar/informacion/temporal")
	public String procesarFormularioTemporal(HttpSession sesion) {
		
		
		
		return "redirect:/guiaCrearPyme";
	}
	
	@GetMapping("/guiaCrearPyme")
	public String desplegarInformacionTramites(HttpSession sesion) {
		return "InfoTramites.jsp";
	}
	
	@GetMapping("/herramientas")
	public String desplegarEspacioDeTrabajo(HttpSession sesion) {
		if(sesion.getId().equals(null)) {
			return "redirect:/login";
		}
		return "EspacioDeTrabajo.jsp";
	}
	
	@GetMapping("/Finanzas")
	public String desplegarInformeFinanzas(HttpSession sesion) {
		if(sesion.getId().equals(null)) {
			return "redirect:/login";
		} 
		return "AdministradorDeFinanzas.jsp";
	}
	
	@GetMapping("/perfil")
	public String desplegarInformacionUsuario(HttpSession sesion,@ModelAttribute("Usuario") Usuario usuario) {
		return "PerfilUsuario.jsp";
	}
	
}
