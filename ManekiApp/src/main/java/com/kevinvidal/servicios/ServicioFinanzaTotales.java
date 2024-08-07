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

    @Autowired
    private RepositorioFinanzasDiarias repositorioFinanzasDiarias;

    public List<FinanzasTotales> findAll() {
        List<FinanzasTotales> lista = new ArrayList<>();
        repositorioFinanzaTotales.findAll().forEach(lista::add);
        return lista;
    }

    public Optional<FinanzasTotales> findById(Long id) {
        return repositorioFinanzaTotales.findById(id);
    }
    
    public FinanzasTotales findByPyme(Pyme pyme) {
        return repositorioFinanzaTotales.findByPyme(pyme);
    }

    public FinanzasTotales save(FinanzasTotales finanzas, Pyme pyme) {
        List<FormularioFinanzaDiario> listaInforme = repositorioFinanzasDiarias.findByPymeId(pyme.getId());
        FinanzasTotales informePorPymes = this.repositorioFinanzaTotales.findByPyme(pyme);

        if (informePorPymes == null) {
            informePorPymes = new FinanzasTotales();
            informePorPymes.setPyme(pyme);
        }

        // Inicializar los totales a 0 si es un nuevo informe
        int ingresoTotal = informePorPymes.getIngresoTotalDiario() == null ? 0 : informePorPymes.getIngresoTotalDiario();
        int cPVTotal = informePorPymes.getCPV() == null ? 0 : informePorPymes.getCPV();
        int gastosDeOperacionTotal = informePorPymes.getGastosDeOperacion() == null ? 0 : informePorPymes.getGastosDeOperacion();
        int impuestosTotal = informePorPymes.getImpuestos() == null ? 0 : informePorPymes.getImpuestos();
        int gananciaNetaTotal = informePorPymes.getGananciaNeta() == null ? 0 : informePorPymes.getGananciaNeta();
        
        // Sumar los datos de todos los formularios
        for (FormularioFinanzaDiario form : listaInforme) {
            ingresoTotal += form.getIngresoTotalDiario() == null ? 0 : form.getIngresoTotalDiario();
            cPVTotal += form.getCPV() == null ? 0 : form.getCPV();
            gastosDeOperacionTotal += form.getGastosDeOperacion() == null ? 0 : form.getGastosDeOperacion();
            impuestosTotal += form.getImpuestos() == null ? 0 : form.getImpuestos();
            gananciaNetaTotal += form.getGananciaNeta() == null ? 0 : form.getGananciaNeta();
        }

        // Actualizar los totales en el objeto FinanzasTotales
        informePorPymes.setIngresoTotalDiario(ingresoTotal);
        informePorPymes.setCPV(cPVTotal);
        informePorPymes.setGastosDeOperacion(gastosDeOperacionTotal);
        informePorPymes.setImpuestos(impuestosTotal);
        informePorPymes.setGananciaNeta(gananciaNetaTotal);

        // Configurar informes diários y pyme si la lista no está vacía
        if (!listaInforme.isEmpty()) {
            FormularioFinanzaDiario form = listaInforme.get(0);
            informePorPymes.setInformesDiarios(listaInforme);
            informePorPymes.setPyme(form.getPyme());
        }
        
        // Guardar el objeto actualizado en el repositorio
        return repositorioFinanzaTotales.save(informePorPymes);
    }

    public void deleteById(Long id) {
        repositorioFinanzaTotales.deleteById(id);
    }
}
