<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page isErrorPage="true" %>
<link rel="stylesheet" href="/css/Style.css">
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>¿Como te gustaria que fuera tu Pyme?</title>
</head>
<body>
	<header>
		<h1>Maneki Pyme</h1>
	</header>
	<h2>¿Nuevo en las pymes? ¡No hay problema! Te ayudamos</h2>
	<form action="/solicitud/informacion" method="post" modelAttribute="formTemp">
		<div>
			<label for="categoria">Categoría PYME</label>
			<select id="categoria" name="categoria.id">
				<c:forEach var="categoria" items="${listaCategorias}">
					<option value="${categoria.id}">${categoria.name}</option>
				</c:forEach>
			</select>
		</div>
		<div>
			<label for="capital">Posees capital para iniciar tu PYME?</label>
			<select id="capital" name="formTemp.capital">
				<option value="Si">Sí</option>
				<option value="No">No</option>
			</select>
		</div>
		<div>
			<label for="informacion">¿Quieres informacion para saber como manejar tu PYME?</label>
			<select id="informacion" name="formTemp.informacion">
				<option value="Si">Sí</option>
				<option value="No">No</option>
			</select>
		</div>
		<input type="submit" value="Guardar" />
	</form>
</body>
</html>