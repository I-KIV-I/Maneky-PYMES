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
<link rel="stylesheet" href="/css/form.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<title>Inscribir Empresa</title>
</head>
<body>
<div id="particles-js"></div>

	<div class="container">
		<div class="row justify-content-center">
			<div class="col-4 px-5 py-4 my-5 text-center position-absolute bck" >
				<header>
					<h1>Maneki Pymes</h1>
					<img src="/img/LogoManeki.png" class="w-25 mb-4 mt-2" alt="logo maneki pymes">
				</header>
					<h2 class="mb-4">Inscibe tu pyme</h2>
				<form:form action="/inscripcion/pyme" method="post" modelAttribute="formPyme">  
							<div class="flex form">
								<form:label class="form-label" path="nombre"><strong>Nombre Pyme:</strong></form:label>
								<form:input class="form-control mb-4 text-center" path="nombre" type="text"/>
								<form:errors class="alert alert-danger" path="nombre"/>
							</div>
							<div class="flex form">
								<form:label class="form-label" path="rol"><strong>Rol:</strong></form:label>
								<form:input class="form-control mb-4 text-center" path="rol" type="text"/>
								<form:errors class="alert alert-danger" path="rol"/>
							</div>
							<div class="flex form">
								<form:label class="form-label" path="ubicacion"><strong>Ubicación:</strong></form:label>
								<form:input class="form-control mb-4 text-center" path="ubicacion" type="text"/>
								<form:errors class="alert alert-danger" path="ubicacion"/>
							</div>
							<div class="flex form">
								<form:label class="form-label" path="rutCreador"><strong>Rut Creador:</strong></form:label>
								<form:input class="form-control mb-4 text-center" path="rutCreador" type="text"/>
								<form:errors class="alert alert-danger" path="rutCreador"/>
							</div>
							<div class="flex form">
								<form:label class="form-label" path="fechaCreacionEmpresa"><strong>Fecha Creacion:</strong></form:label>
								<form:input class="form-control mb-4 text-center" path="fechaCreacionEmpresa" type="date"/>
								<form:errors class="alert alert-danger" path="fechaCreacionEmpresa"/>
							</div>
							
							<button class="ingresarButton">Registrar</button>
						</form:form>
							<input class="backButton" type="button" value="Volver Atrás" onClick="history.go(-1);">
						
				</main>
			</div>
		</div>
	</div>

	<script src="/particles/particles.js"></script>
	<script src="/particles/data/app.js"></script>
</body>
</html>