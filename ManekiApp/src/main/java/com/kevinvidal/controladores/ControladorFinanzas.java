package com.kevinvidal.controladores;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.kevinvidal.modelos.FinanzasTotales;
import com.kevinvidal.modelos.FormularioFinanzaDiario;
import com.kevinvidal.modelos.Pyme;
import com.kevinvidal.servicios.ServicioFinanzaTotales;
import com.kevinvidal.servicios.ServicioFinanzas;
import com.kevinvidal.servicios.ServicioPyme;

import jakarta.servlet.http.HttpSession;

@Controller
public class ControladorFinanzas {

    private final ServicioPyme servicioPyme;
    private final ServicioFinanzas servicioFinanzas;
    private final ServicioFinanzaTotales servicioFinanzasTotales;
    private final ObjectMapper objectMapper;

    @Autowired
    public ControladorFinanzas(ServicioPyme servicioPyme, ServicioFinanzas servicioFinanzas,
                               ServicioFinanzaTotales servicioFinanzasTotales, ObjectMapper objectMapper) {
        this.servicioPyme = servicioPyme;
        this.servicioFinanzas = servicioFinanzas;
        this.servicioFinanzasTotales = servicioFinanzasTotales;
        this.objectMapper = objectMapper;
    }

    @GetMapping("/finanzas/{id}")
    public String desplegarInformeFinanzas(@PathVariable("id") Long id, 
                                            @ModelAttribute("pyme") Pyme pyme, 
                                            HttpSession session, 
                                            Model model) throws JsonProcessingException {
        if (session.getAttribute("idUsuario") == null) {
            return "redirect:/login";
        }

        FinanzasTotales finanzasPyme = this.servicioFinanzasTotales.findByPyme(pyme);
        model.addAttribute("finanzas", finanzasPyme);

        List<Pyme> listaPymes = this.servicioPyme.obtenerPymePorUsuarioId((Long) session.getAttribute("idUsuario"));
        model.addAttribute("listaPymes", listaPymes);
        model.addAttribute("pyme", servicioPyme.obtenerPorId(id));
        String datos = objectMapper.writeValueAsString(servicioFinanzasTotales.findByPyme(pyme));
        model.addAttribute("datos", datos);

        return "AdministradorDeFinanzas.jsp";
    }

    @GetMapping("/finanzas/informe/diario/{id}")
    public String despliegaFormularioInforme(@ModelAttribute("formulario_diario") FormularioFinanzaDiario formulario_diario, 
                                             @PathVariable("id") Long id, 
                                             HttpSession session, 
                                             Model model) {
        if (session.getAttribute("idUsuario") == null) {
            return "redirect:/login";
        }
        model.addAttribute("pyme", servicioPyme.obtenerPorId(id));
        return "FormularioFinanzasDiarias.jsp";
    }

    @PostMapping("/finanzas/informe/diario/{id}")
    public String ingresarInforme(@ModelAttribute("formulario_diario") FormularioFinanzaDiario formulario_diario, 
                                  @PathVariable("id") Long id, 
                                  HttpSession session, 
                                  Model model) {
        if (formulario_diario.getIngresoTotalDiario() != null) {
            formulario_diario.setImpuestos((int) (formulario_diario.getIngresoTotalDiario() * 0.27) + (int) (formulario_diario.getIngresoTotalDiario() * 0.19));
        }
        if (formulario_diario.getIngresoTotalDiario() != null && formulario_diario.getCPV() != null && formulario_diario.getGastosDeOperacion() != null) {
            formulario_diario.setGananciaNeta(formulario_diario.getIngresoTotalDiario() - (formulario_diario.getCPV() + formulario_diario.getGastosDeOperacion() + formulario_diario.getImpuestos()));
        }
        Pyme pyme = servicioPyme.obtenerPorId(id);
        formulario_diario.setId(null);
        servicioFinanzas.save(formulario_diario, pyme);

        // Actualizar FinanzasTotales
        FinanzasTotales finanzasTotales = new FinanzasTotales();
        servicioFinanzasTotales.save(finanzasTotales, pyme);

        return "redirect:/finanzas/" + id;
    }
}
