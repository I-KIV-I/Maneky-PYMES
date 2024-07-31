package com.kevinvidal.controladores;


import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.kevinvidal.modelos.Login;
import com.kevinvidal.modelos.Pyme;
import com.kevinvidal.modelos.Usuario;
import com.kevinvidal.servicios.ServicioPyme;
import com.kevinvidal.servicios.ServicioUsuario;

import jakarta.servlet.http.HttpSession;


@Controller
public class ControladorNavegacion {
	
	private final ServicioUsuario servicioUsuario;
	private final ServicioPyme sercvicioPyme;
	
	public ControladorNavegacion(ServicioUsuario servicioUsuario, ServicioPyme sercvicioPyme) {
		super();
		this.servicioUsuario = servicioUsuario;
		this.sercvicioPyme = sercvicioPyme;
	}
	
	@GetMapping("/maneki_pyme/inicio")
	public String desplegarPaginaInicial() {
		return "PaginaInicial.jsp";
	}
	@GetMapping("/existenciaPyme")
	public String desplegarConsulta() {
	return "EleccionExistenciaEmpresa.jsp";	
	}
	
	@GetMapping("/crear_pyme")
	public String desplegarFormularioTemporal(HttpSession sesion) {
		return"FormularioTemporal.jsp";
	}
	@PostMapping("/crear_pyme")
	public String procesarFormularioTemporal(HttpSession sesion) {
		return "redirect:/guiaCrearPyme";
	}
	
	@GetMapping("/guiaCrearPyme")
	public String desplegarInformacionTramites(HttpSession sesion) {
		return "InfoTramites.jsp";
	}
	
	@GetMapping("/herramientas/{id}")
	public String desplegarEspacioDeTrabajo(HttpSession sesion) {
		if(sesion.getId().equals(null)) {
			return "redirect:/login";
		}
		List<Pyme> listaPyme = this.sercvicioPyme.obtenerPymePorUsuarioId((Long) sesion.getAttribute("idUsuario"));
		return "EspacioDeTrabajo.jsp";
	}
	
	
	@PostMapping("procesar/finanzas/{id}")
	public String procesarInfoPyme(HttpSession sesion) {
		if(sesion.getId().equals(null)) {
			return "redirect:/login";
		} 
		return "redirect:/finanzas/{id}";
	}
	@GetMapping("/finanzas/{id}")
	public String desplegarInformeFinanzas(HttpSession sesion) {
		if(sesion.getId().equals(null)) {
			return "redirect:/login";
		} 
		return "FinanzasPyme.jsp";
	}
	
	@GetMapping("/perfil")
	public String desplegarInformacionUsuario(HttpSession sesion,Usuario usuario,Pyme pyme) {
		if(sesion.getId().equals(null)) {
			return "redirect:/login";
		} 
		List<Pyme> listaPyme = this.sercvicioPyme.obtenerPymePorUsuarioId(usuario.getId());
		
		return "PerfilUsuario.jsp";
	}
	
}
