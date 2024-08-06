package com.kevinvidal.servicios;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kevinvidal.modelos.FinanzasTotales;
import com.kevinvidal.modelos.FormularioFinanzaDiario;
import com.kevinvidal.modelos.Pyme;
import com.kevinvidal.repositorios.RepositorioFinanzasDiarias;
import com.kevinvidal.repositorios.RepositorioFinanzasTotales;

@Service
public class ServicioFinanzaTotales {
	
	@Autowired
	private RepositorioFinanzasTotales repositorioFinanzaTotales;
	private RepositorioFinanzasDiarias repositorioFinanzasDiarias;
	public List<FinanzasTotales> findAll() {
        List<FinanzasTotales> lista = new ArrayList<>();
        repositorioFinanzaTotales.findAll().forEach(lista::add);
        return lista;
    }

    public Optional<FinanzasTotales> findById(Long id) {
        return repositorioFinanzaTotales.findById(id);
    }
    
    public List<FinanzasTotales> findByPyme(Pyme pyme){
    	return repositorioFinanzaTotales.findByPyme(pyme);
    }
    public FinanzasTotales save(FinanzasTotales finanzas,Pyme pyme) {
    	List<FormularioFinanzaDiario> listaInforme = repositorioFinanzasDiarias.findByPymeId(pyme.getId());
    	for(int i = 0; i < listaInforme.size(); i++) {
    		FormularioFinanzaDiario form = listaInforme.get(i);
    		//datos formulario
    		int ingreso = form.getIngresoTotalDiario();
    		int cpv = form.getCPV();
    		int gastosDeOperacion = form.getGastosDeOperacion();
    		int impuestos = form.getImpuestos();
    		int gananciaNeta = form.getGananciaNeta();
    		
    		//datos montos totales
    		
    		int ingresoTotal = finanzas.getIngresoTotalDiario() + ingreso; 
    		int cPVTotal = finanzas.getCPV() + cpv;
    		int gastosDeOperacionTotal = finanzas.getGastosDeOperacion() + gastosDeOperacion;
    		int impuestosTotal = finanzas.getImpuestos() + impuestos;
    		int gananciaNetaTotal = finanzas.getGananciaNeta() + gananciaNeta;
    		
    		finanzas.setIngresoTotalDiario(ingresoTotal);
    		finanzas.setCPV(cPVTotal);
    		finanzas.setGastosDeOperacion(gastosDeOperacionTotal);
    		finanzas.setImpuestos(impuestosTotal);
    		finanzas.setGananciaNeta(gananciaNetaTotal);
    	}
    	FormularioFinanzaDiario form = listaInforme.get(0);
    	finanzas.setInformesDiarios(listaInforme);
    	finanzas.setPyme(form.getPyme());
        return repositorioFinanzaTotales.save(finanzas);
    }
    public void deleteById(Long id) {
    	repositorioFinanzaTotales.deleteById(id);
    }
    
	
	
}
