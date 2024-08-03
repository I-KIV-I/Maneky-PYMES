package com.kevinvidal.controladores;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;


import com.kevinvidal.modelos.Login;
import com.kevinvidal.modelos.Usuario;
import com.kevinvidal.servicios.ServicioUsuario;

import jakarta.servlet.http.HttpSession;

import jakarta.validation.Valid;

@Controller
public class ControladorUsuario{
	@Autowired
	private final ServicioUsuario servicioUsuario;
	
	//private static final String UPLOAD_DIR = "uploads/";
	
	public ControladorUsuario(ServicioUsuario servicioUsuario) {
		this.servicioUsuario = servicioUsuario;
	}

	@GetMapping("/login")
	public String desplegarLogin(@ModelAttribute("formLogin") Login nuevoLogin) {
		return "Login.jsp";
	}
	
	@PostMapping("/procesar/login")
	public String procesarLogin(@Valid @ModelAttribute("formLogin") Login loginNuevo,
								BindingResult validaciones,
								HttpSession sesion) {
		validaciones = this.servicioUsuario.validarLogin(validaciones, loginNuevo);
		if(validaciones.hasErrors()) {
			return"Login.jsp";
		}
		Usuario usuarioActual = this.servicioUsuario.obtenerUsuarioPorCorreo(loginNuevo.getCorreoUsuario());
		sesion.setAttribute("idUsuario", usuarioActual.getId());
		sesion.setAttribute("nombreUsuario", usuarioActual.getNombre());
		sesion.setAttribute("apellidoUsuario", usuarioActual.getApellido());
		return "redirect:/herramientas";
	}
	
	@GetMapping("/registro")
	public String desplegarRegistro(@ModelAttribute("formRegistro") Usuario nuevoUsuario) {
		return"Registro.jsp";
	}
	
	@PostMapping("/procesar_registro")
	public String procesarRegistro(@Valid @ModelAttribute("formRegistro") Usuario nuevoUsuario,
								   BindingResult validaciones,
								   HttpSession sesion) {
		validaciones = this.servicioUsuario.validarRegistro(validaciones, nuevoUsuario);
		if(validaciones.hasErrors()) {
			return "Registro.jsp";
		}
		servicioUsuario.agregar(nuevoUsuario);
		sesion.setAttribute("idUsuario", nuevoUsuario.getId());
		sesion.setAttribute("nombreUsuario", nuevoUsuario.getNombre());
		sesion.setAttribute("apellidoUsuario", nuevoUsuario.getApellido());
		return "redirect:/existenciaPyme";
	}
	
	/* @PostMapping("/upload")
	    public String uploadImage(@RequestParam("image") MultipartFile file, @RequestParam("userId") Long userId) {
	        if (file.isEmpty()) {
	            return "redirect:/perfil";
	        }
	        //corregir subida de imagen//
	        try {
	            byte[] bytes = file.getBytes();
	            java.nio.file.Path path = Paths.get(UPLOAD_DIR + file.getOriginalFilename());
	            Files.write(path, bytes);

	            Usuario user = servicioUsuario.obtenerUno(userId);
	            user.setPerfilImagen("/" + UPLOAD_DIR + file.getOriginalFilename());
	        } catch (IOException e) {
	            e.printStackTrace();
	        }

	        return "redirect:/perfil";
	    }*/
	@GetMapping("/procesar/edicion")
	public String despliegaEdicion(@ModelAttribute("usuario") Usuario usuario) {		
		return "FormularioEditarUsuario.jsp";
	}
	
	
	
	@GetMapping("/procesar/logout")
	public String procesarLogout(HttpSession sesion) {
		sesion.invalidate();
		return "redirect:/login";
	}
}
