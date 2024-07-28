<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page isErrorPage="true" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="/css/Style.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<title>Login</title>

</head>
<body>
	<div id="particles-js"></div>
		
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-4 px-5 py-4 my-5 text-center bg-black bg-opacity-50 rounded text-white position-absolute " >
					
						<header >
							<h1>Maneki Pymes</h1>
							<img src="/img/LogoManeki.png" class="w-25 mb-4" alt="logo maneki pymes">
						</header>
						<h2 class="mb-4">Login</h2>
						<form:form action="/procesar/login" method="post" modelAttribute="formLogin">  
							<div>
								<form:label class="form-label" path="correoUsuario"><strong>Correo</strong></form:label>
								<form:input class="form-control mb-4 text-center" placeholder="Correo" path="correoUsuario" type="text"/>
								<div>
									<form:errors class="alert alert-danger" path="correoUsuario"/>
								</div>
							</div>
							
							<div class="mt-4 mb-4">
								<form:label class="form-label" path="contraseniaUsuario" name="contraseniaUsuario"><strong>Contraseña</strong></form:label>
								<form:input class="form-control mb-4 text-center" placeholder="Contraseña" path="contraseniaUsuario" type="password" name="contraseniaUsuario"/>
								<div>
									<form:errors class="alert alert-danger" path="contraseniaUsuario"/>
								</div>
							</div>
							
							<button class="btn btn-outline-primary mb-4">Ingresar</button>
						</form:form>
						<form action="/registro">
							<button class="btn btn-outline-secondary">¿Aun no tienes una cuenta? Registrate aquí</button> 
						</form>
						<form action="/maneki_pyme/inicio">
							<button class="estilo pendiente">Volver a la pagina principal</button> 
						</form>
					
				</div>
			</div>
		</div>
	
	<script src="/particles/particles.js"></script>
	<script src="/particles/data/app.js"></script>

</body>
</html>