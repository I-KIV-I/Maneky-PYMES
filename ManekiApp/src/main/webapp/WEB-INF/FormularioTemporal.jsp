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

<title>¿Como te gustaria que fuera tu Pyme?</title>
</head>
<body>

<div id="particles-js"></div>
	<div class="container">
		<div class="row justify-content-center">
			<div class="col-4 px-5 py-4 my-5 text-center bg-black bg-opacity-50 rounded text-white position-absolute " >
				<header>
					<h1>Maneki Pymes</h1>
					<img src="/img/LogoManeki.png" class="w-25 mb-4" alt="logo maneki pymes">
				</header>
				<h2>¿Nuevo en las pymes? ¡No hay problema! Te ayudamos</h2>
				<form action="/solicitud/informacion" method="post" modelAttribute="formTemp">
					<div>
						<label class="form-label" for="categoria">Categoría PYME</label>
						<select class="form-select text-center" id="categoria" name="categoria.id">
							<c:forEach var="categoria" items="${listaCategorias}">
								<option value="${categoria.id}">${categoria.name}</option>
							</c:forEach>
						</select>
					</div>
					<div>
						<label class="form-label" for="capital">Posees capital para iniciar tu PYME?</label>
						<select class="form-select text-center" id="capital" name="formTemp.capital">
							<option value="Si">Sí</option>
							<option value="No">No</option>
						</select>
					</div>
					<div>
						<label class="form-label" for="informacion">¿Quieres informacion para saber como manejar tu PYME?</label>
						<select class="form-select text-center" id="informacion" name="formTemp.informacion">
							<option value="Si">Sí</option>
							<option value="No">No</option>
						</select>
					</div>
					<input class="btn btn-outline-primary mt-5" type="submit" value="Guardar" />
				</form>
			</div>
		</div>
	</div>
	<script src="/particles/particles.js"></script>
	<script src="/particles/data/app.js"></script>
</body>
</html>