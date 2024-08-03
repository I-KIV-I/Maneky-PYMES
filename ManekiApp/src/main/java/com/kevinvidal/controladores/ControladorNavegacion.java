package com.kevinvidal.controladores;


import java.util.List;

import org.springframework.beans.factory.ListableBeanFactory;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import com.kevinvidal.modelos.Categoria;
import com.kevinvidal.modelos.FormularioTemporal;
import com.kevinvidal.modelos.Hilo;
import com.kevinvidal.modelos.Usuario;
import com.kevinvidal.servicios.ServicioCategoria;
import com.kevinvidal.servicios.ServicioHilo;
import com.kevinvidal.modelos.Pyme;
import com.kevinvidal.servicios.ServicioPyme;
import com.kevinvidal.servicios.ServicioUsuario;
import jakarta.servlet.http.HttpSession;


@Controller
public class ControladorNavegacion {

	@Autowired
	private final ServicioCategoria servicioCategoria;
	private final ServicioPyme servicioPyme;
	private final ServicioHilo servicioHilo;
	
	public ControladorNavegacion(ServicioPyme servicioPyme,
						   	     ServicioCategoria servicioCategoria,
						   	     ServicioHilo servicioHilo) {
		this.servicioHilo = servicioHilo;
		this.servicioPyme = servicioPyme;
		this.servicioCategoria = servicioCategoria;
	}

	@GetMapping("/")
	public String desplegarPaginaInicial() {
		return "home2.jsp";
	}
	
	@GetMapping("/existenciaPyme")
	public String desplegarConsultaExistenciaPyme(HttpSession sesion) {
		if(sesion.getId()==null) {
			return "redirect:/login";
		}
		return "EleccionExistenciaEmpresa.jsp";	
	}
	
	@GetMapping("/solicitud/informacion")
	public String desplegarFormularioTemporal(Model model, HttpSession sesion,
											  @ModelAttribute("formTemp")FormularioTemporal formTemp) {
		if(sesion.getId()==null) {
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
		if(sesion.getId()==null) {
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
		
		List<Hilo> todosHilos = servicioHilo.obtenerTodos(); 
		for (Long i=(long)0; i<todosHilos.size(); i++) {
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
		List<Pyme> listaPyme = this.servicioPyme.obtenerPymePorUsuarioId((Long) sesion.getAttribute("idUsuario"));
		boolean condicion = false;
	    if (listaPyme == null || listaPyme.isEmpty()) {
	        modelo.addAttribute("condicion", condicion);
	    } else {
	    	modelo.addAttribute("condicion", condicion = true);
	    	modelo.addAttribute("listaPyme", listaPyme);
	    }
	    
		return "EspacioDeTrabajo.jsp";
	}
	
	@GetMapping("/finanzas/opciones")
	public String seleccionFinanzas(HttpSession sesion) {
		if(sesion.getId()== null) {
			return "redirect:/login";
		} 
		return "AdministradorDeFinanzas.jsp";
	}
	@PostMapping("procesar/finanzas/{id}")
	public String procesarInfoPyme(HttpSession sesion) {
		if(sesion.getId()==null) {
			return "redirect:/login";
		} 
		return "redirect:/finanzas/{id}";
	}
	@GetMapping("/finanzas/{id}")
	public String desplegarInformeFinanzas(HttpSession sesion) {
		if(sesion.getId()==null) {
			return "redirect:/login";
		} 
		return "FinanzasPyme.jsp";
	}
	
	@GetMapping("/perfil")
	public String desplegarInformacionUsuario(HttpSession sesion,Usuario usuario,Pyme pyme) {
		if(sesion.getId()==null) {
			return "redirect:/login";
		} 
		List<Pyme> listaPyme = this.servicioPyme.obtenerPymePorUsuarioId(usuario.getId());
		
		return "PerfilUsuario.jsp";
	}
	
}
