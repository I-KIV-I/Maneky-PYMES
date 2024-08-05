package com.kevinvidal.controladores;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.kevinvidal.modelos.FormularioFinanzaDiario;
import com.kevinvidal.modelos.Pyme;
import com.kevinvidal.servicios.ServicioFinanzas;
import com.kevinvidal.servicios.ServicioPyme;

import jakarta.servlet.http.HttpSession;

@Controller
public class ControladorFinanzas {
	
	@Autowired
	private final ServicioPyme servicioPyme;
	private final ServicioFinanzas servicioFinanzas;
	
	
	public ControladorFinanzas(ServicioPyme servicioPyme, ServicioFinanzas servicioFinanzas) {
		super();
		this.servicioPyme = servicioPyme;
		this.servicioFinanzas = servicioFinanzas;
	}

	ObjectMapper objectMapper = new ObjectMapper();
	
	@GetMapping("/finanzas/informe/diario")
	public String despliegaFormularioInforme(@ModelAttribute("form")FormularioFinanzaDiario form) {
		
		return "FormularioFinanzasDiarias.jsp";
	}
	
	//@GetMapping("/finanzas/{id}")
	//public String desplegarInformeFinanzas(@PathVariable("id") Long id, HttpSession session, Model model) throws JsonProcessingException {
	//	if (session.getAttribute("idUsuario") == null) {
	//		return "redirect:/login";
	//	}
	//	model.addAttribute("pyme", servicioPyme.obtenerPorId(id));
	//	ModelAndView datos;
	//	datos.addObject("datos" , objectMapper.writeValueAsString(servicioFinanzas.findByPyme(id)));
	//	return "AdministradorDeFinanzas.jsp";
	//}
	
	@GetMapping("/finanzas/{id}")
	public String desplegarInformeFinanzas(@PathVariable("id") Long id,@ModelAttribute("form")FormularioFinanzaDiario form, HttpSession session, Model model) throws JsonProcessingException {
	    if (session.getAttribute("idUsuario") == null) {
	        return "redirect:/login";
	    }
	    form.setIngresoTotalDiario(20000);
	    int ingreso = form.getIngresoTotalDiario();
	    model.addAttribute("ganancia", form.getIngresoTotalDiario());
	    model.addAttribute("pyme", servicioPyme.obtenerPorId(id));
	    ModelAndView modelAndView = new ModelAndView();
	    String datos = objectMapper.writeValueAsString(servicioFinanzas.findByPyme(id));
	    modelAndView.addObject(datos);
	    
	    return "AdministradorDeFinanzas.jsp";
	}
	
	@PostMapping("/finanzas/informe/diario")
	public String ingresarInforme(@ModelAttribute("form")FormularioFinanzaDiario form,
			@RequestParam("ingresoTotalDiario") FormularioFinanzaDiario ingresoTotalDiario,
			@RequestParam("impuestos") FormularioFinanzaDiario impuestos,
			@RequestParam("gastosDeOperacion") FormularioFinanzaDiario gastosDeOperacion,
			@RequestParam("CPV") FormularioFinanzaDiario CPV,
			@RequestParam("gananciaNeta") FormularioFinanzaDiario gananciaNeta,HttpSession sesion, Model modelo) {
		if (form.getIngresoTotalDiario() != null) {
            form.setImpuestos((int) (form.getIngresoTotalDiario() * 0.27) + (int) (form.getIngresoTotalDiario() * 0.19));
        }
        if (form.getIngresoTotalDiario() != null && form.getCPV() != null && form.getGastosDeOperacion() != null) {
            form.setGananciaNeta(form.getIngresoTotalDiario() - (form.getCPV() + form.getGastosDeOperacion() + form.getImpuestos()));
        }
		List<Pyme> lista = this.servicioPyme.obtenerPymePorUsuarioId((Long) sesion.getAttribute("idUsuario"));
		modelo.addAllAttributes(lista);
		Pyme pyme = lista.get(0);
		Long pymeId = pyme.getId();
		return "redirect:/finanzas/" + pymeId;
	}
}
