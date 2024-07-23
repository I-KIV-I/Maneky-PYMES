package com.kevinvidal.controladores;


import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;


@RestController
public class ControladorPrincipal {
	@GetMapping("/")
	public String holaMundo() {
		return "holaMundo";
	}
}
