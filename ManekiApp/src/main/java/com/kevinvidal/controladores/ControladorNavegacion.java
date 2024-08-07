package com.kevinvidal.controladores;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.kevinvidal.modelos.Categoria;
import com.kevinvidal.modelos.FormularioTemporal;
import com.kevinvidal.modelos.Hilo;
import com.kevinvidal.modelos.Pyme;
import com.kevinvidal.modelos.Usuario;
import com.kevinvidal.servicios.ServicioCategoria;
import com.kevinvidal.servicios.ServicioHilo;
import com.kevinvidal.servicios.ServicioPyme;
import com.kevinvidal.servicios.ServicioUsuario;

import jakarta.servlet.http.HttpSession;


@Controller
public class ControladorNavegacion {

	@Autowired
	private final ServicioCategoria servicioCategoria;
	private final ServicioPyme servicioPyme;
	private final ServicioHilo servicioHilo;
	private final ServicioUsuario servicioUsuario;
	
	
	public ControladorNavegacion(ServicioPyme servicioPyme,
						   	     ServicioCategoria servicioCategoria,
						   	     ServicioHilo servicioHilo,
						   	     ServicioUsuario servicioUsuario) {
		this.servicioHilo = servicioHilo;
		this.servicioPyme = servicioPyme;
		this.servicioCategoria = servicioCategoria;
		this.servicioUsuario = servicioUsuario;
	}


	@GetMapping("/")
	public String desplegarPaginaInicial() {
		return "home2.jsp";
	}
	
	@GetMapping("/existenciaPyme")
	public String desplegarConsultaExistenciaPyme(HttpSession sesion) {
		if(sesion.getAttribute("idUsuario")==null) {
			return "redirect:/login";
		}
		return "EleccionExistenciaEmpresa.jsp";	
	}
	
	@GetMapping("/solicitud/informacion")
	public String desplegarFormularioTemporal(Model model, HttpSession sesion,
											  @ModelAttribute("formTemp")FormularioTemporal formTemp) {
		if(sesion.getAttribute("idUsuario")==null) {
			return "redirect:/login";
		}
		List<Categoria> todasCategorias = servicioCategoria.obtenerTodos();
		model.addAttribute("listaCategorias",todasCategorias);
		
		return"FormularioTemporal.jsp";
	}
	@PostMapping("/solicitud/informacion")
	public String procesarFormularioTemporal(HttpSession sesion,
											 @ModelAttribute("formTemp")FormularioTemporal formTemp) {
		sesion.setAttribute("respuestasTemporales", formTemp);
		return "redirect:/guiaCrearPyme";
	}
	
	@GetMapping("/guiaCrearPyme")
	public String desplegarInformacionTramites(HttpSession sesion) {
		if(sesion.getAttribute("idUsuario")==null) {
			return "redirect:/login";
		}
		
			
		return "InfoTramites.jsp";
	}
	
	@GetMapping("/herramientas")
	public String desplegarEspacioDeTrabajo(HttpSession sesion,
											Model modelo) {
		if(sesion.getAttribute("idUsuario")==null) {
			return "redirect:/login";

		}
		//LOGICA FORO PREVISUALIZACION 
		List<Hilo> todosHilos = servicioHilo.obtenerTodos(); 
		for (Long i=(long)0; i<todosHilos.size(); i++) {
			if(i==todosHilos.size()-4) {
				modelo.addAttribute("cuatro", servicioHilo.obtenPorId(i+1));
			}
			if(i == todosHilos.size()-3) {		 
				modelo.addAttribute("tres", servicioHilo.obtenPorId(i+1)); 
			}
			if(i== todosHilos.size()-2){
				modelo.addAttribute("dos", servicioHilo.obtenPorId(i+1));
			}
			if(i == todosHilos.size()-1) {
				modelo.addAttribute("uno", servicioHilo.obtenPorId(i+1));
			}
		}
		//FIN LOGICA FORO

		//INICIO LISTA PYMES DISPONIBLES PARA FINANZA
		List<Pyme> listaPyme = this.servicioPyme.obtenerPymePorUsuarioId((Long) sesion.getAttribute("idUsuario"));
		boolean condicion = false;
	    if (listaPyme == null || listaPyme.isEmpty()) {
	        modelo.addAttribute("condicion", condicion);
	    } else {
	    	modelo.addAttribute("condicion", condicion = true);
	    	modelo.addAttribute("listaPyme", listaPyme);
	    }
	    //FIN LISTA PYMES

		return "EspacioDeTrabajo.jsp";
	}
	
	
	
	@GetMapping("/perfil")
	public String desplegarInformacionUsuario(HttpSession sesion, Model modelo) {
		if(sesion.getAttribute("idUsuario")==null) {
			return "redirect:/login";
		} 
		modelo.addAttribute("usuario", servicioUsuario.obtenerUno((Long) sesion.getAttribute("idUsuario"))); 
		modelo.addAttribute("listaPymes", servicioPyme.obtenerPymePorUsuarioId((Long)sesion.getAttribute("idUsuario")));
		return "PerfilUsuario.jsp";
	}
	
}
