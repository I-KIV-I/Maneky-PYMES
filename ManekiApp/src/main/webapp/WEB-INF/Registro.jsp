<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/css/Style.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<title>Registro</title>
</head>
<body>
	<div id="particles-js"></div>
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-4 px-5 py-4 text-center bg-black bg-opacity-50 rounded text-white position-absolute" >
				
					<h1>Maneki Pymes</h1>
					<img src="/img/LogoManeki.png" class="w-25 mb-4" alt="logo maneki pymes">
					<div>
						<h2>Registro</h2>
						<form:form action="/procesar_registro" method="post" modelAttribute="formRegistro">  
							<div>
								<form:label class="form-label" path="nombre">Nombre</form:label>
								<form:input class="form-control mb-4 text-center" placeholder="Nombre" path="nombre" type="text"/>
								<form:errors class="alert alert-danger" path="nombre"/>
							</div>
							<div class="mt-4">
								<form:label class="form-label" path="apellido">Apellido</form:label>
								<form:input class="form-control mb-4 text-center" placeholder="Apellido" path="apellido" type="text"/>
								<form:errors class="alert alert-danger" path="apellido"/>
							</div>
							<div class="mt-4">
								<form:label class="form-label" path="rut">Rut</form:label>
								<form:input class="form-control mb-4 text-center" placeholder="Rut" path="rut" type="text"/>
								<form:errors class="alert alert-danger" path="rut"/>
							</div>
							<div class="mt-4">
								<form:label class="form-label" path="fechaNacimiento">Fecha De Nacimiento</form:label>
								<form:input class="form-control mb-4 text-center" path="fechaNacimiento" type="date"/>
								<form:errors path="fechaNacimiento"/>
							</div>
							<div class="mt-4">
								<form:label class="form-label" path="genero">Sexo</form:label>
								<form:select class="form-select text-center" path="genero" label="Seleccione">
			                    	<form:option value="" label="Seleccione"/>
			                    	<form:option value="Masculino" label="Masculino"/>
			                    	<form:option value="Femenino" label="Femenino"/>
			                    	<form:option value="Neutral" label="Prefiero no decirlo"/>
			               		</form:select>
							</div>
							<div class="mt-4">
								<form:label class="form-label" path="correo">Email</form:label>
								<form:input class="form-control mb-4 text-center" placeholder="Correo" path="correo" type="text"/>
								<form:errors class="alert alert-danger" path="correo"/>
							</div>
							<div class="mt-4">
								<form:label class="form-label" path="contrasenia">Contraseña</form:label>
								<form:input class="form-control mb-4 text-center" placeholder="Contraseña" path="contrasenia" type="password"/>
								<form:errors class="alert alert-danger" path="contrasenia"/>
							</div>
							<div class="mt-4">
								<form:label class="form-label" path="confirmarContrasenia">Confirme Contraseña</form:label>
								<form:input class="form-control mb-4 text-center" placeholder="Confirmar Contraseña" path="confirmarContrasenia" type="password"/>
								<form:errors class="alert alert-danger" path="confirmarContrasenia"/>
							</div>
							<button class="btn btn-outline-primary mb-4">Registrar</button>
						</form:form>
						<form action="/login">
							<button class="btn btn-outline-secondary">Volver al Login</button>
						</form>
					</div>
		
				</div>
			</div>
		</div>
		
	<script src="/particles/particles.js"></script>
	<script src="/particles/data/app.js"></script>
</body>
</html>