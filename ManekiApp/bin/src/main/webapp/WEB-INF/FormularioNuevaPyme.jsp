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
<title>Maneki Pymes Inscripcion</title>
</head>
<body>
	<header>
		<h1>Maneki Pymes</h1>
	</header>
	<main>
		<h2>Inscibe tu pyme</h2>
	<form:form action="/procesar_registro" method="post" modelAttribute="formPyme">  
				<div class="flex form">
					<form:label path="nombre">Nombre Pyme:</form:label>
					<form:input path="nombre" type="text"/>
					<form:errors path="nombre"/>
				</div>
				<div class="flex form">
					<form:label path="rol">Rol:</form:label>
					<form:input path="rol" type="text"/>
					<form:errors path="rol"/>
				</div>
				<div class="flex form">
					<form:label path="ubicacion">Ubicación:</form:label>
					<form:input path="ubicacion" type="text"/>
					<form:errors path="ubicacion"/>
				</div>
				<div class="flex form">
					<form:label path="rutCreador">Rut Creador:</form:label>
					<form:input path="rutCreador" type="text"/>
					<form:errors path="rutCreador"/>
				</div>
				<div class="flex form">
					<form:label path="fechaCreacionEmpresa">Fecha Creacion:</form:label>
					<form:input path="fechaCreacionEmpresa" type="date"/>
					<form:errors path="fechaCreacionEmpresa"/>
				</div>
				
				<button>Registrar</button>
			</form:form>
	</main>
</body>
</html>