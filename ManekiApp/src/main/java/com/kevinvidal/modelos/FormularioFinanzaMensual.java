package com.kevinvidal.modelos;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.PrePersist;

@Entity
public class FormularioFinanzaMensual {
	
	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
	@DateTimeFormat(pattern = "MM-yyyy")
	private Date fechaInformeMensual;
	
	private Integer ingresoTotalDiario;
	private Integer CPV;
	private Integer gastosDeOperacion;
	private Integer impuestos;
	private Integer gananciaNeta = ingresoTotalDiario -( CPV + gastosDeOperacion + impuestos);
	
	@PrePersist
    public void calcularValores() {
        if (ingresoTotalDiario != null) {
            impuestos = (int) (ingresoTotalDiario * 0.27) + (int) (ingresoTotalDiario * 0.19);
        }
        if (ingresoTotalDiario != null && CPV != null && gastosDeOperacion != null && impuestos != null) {
            gananciaNeta = ingresoTotalDiario - (CPV + gastosDeOperacion + impuestos);
        }
    }
}
