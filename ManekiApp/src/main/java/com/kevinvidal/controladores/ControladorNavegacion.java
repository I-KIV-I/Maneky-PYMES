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
import com.kevinvidal.modelos.Pyme;
import com.kevinvidal.servicios.ServicioPyme;
import com.kevinvidal.servicios.ServicioUsuario;
import jakarta.servlet.http.HttpSession;


@Controller
public class ControladorNavegacion {

	@Autowired
	private final ServicioCategoria servicioCategoria;
	private final ServicioPyme sercvicioPyme;
	
	public ControladorNavegacion(ServicioPyme sercvicioPyme,
						   	     ServicioCategoria servicioCategoria) {
		
		this.sercvicioPyme = sercvicioPyme;
		this.servicioCategoria = servicioCategoria;
	}
	

	@GetMapping({"/maneki_pyme/inicio", "/"})
	public String desplegarPaginaInicial() {
		return "PaginaInicial.jsp";
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
	public String desplegarEspacioDeTrabajo(HttpSession sesion) {
		/*if(sesion.getAttribute("idUsuario")==null) {
			return "redirect:/login";
		}*/
		
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
		return "AdministradorDeFinanzas.jsp";
	}
	@GetMapping("/finanzas")
	public String desplegarInformeFinanzas(HttpSession sesion) {
		if(sesion.getId()==null) {
			return "redirect:/login";
		} 
		return "AdministradorDeFinanzas.jsp";
	}
	
	@GetMapping("/perfil")
	public String desplegarInformacionUsuario(HttpSession sesion,Usuario usuario,Pyme pyme) {
		if(sesion.getId()==null) {
			return "redirect:/login";
		} 
		List<Pyme> listaPyme = this.sercvicioPyme.obtenerPymePorUsuarioId(usuario.getId());
		
		return "PerfilUsuario.jsp";
	}
	
}
