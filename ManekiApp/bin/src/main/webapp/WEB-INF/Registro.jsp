<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Registro</title>
</head>
<body>
		<h1>Maneki Pymes</h1>
		<div>
			<h2>Registro</h2>
			<form:form action="/procesar_registro" method="post" modelAttribute="formRegistro">  
				<div class="flex form">
					<form:label path="nombre">Name:</form:label>
					<form:input path="nombre" type="text"/>
					<form:errors path="nombre"/>
				</div>
				<div class="flex form">
					<form:label path="apellido">Last name:</form:label>
					<form:input path="apellido" type="text"/>
					<form:errors path="apellido"/>
				</div>
				<div class="flex form">
					<form:label path="rut">Email:</form:label>
					<form:input path="rut" type="text"/>
					<form:errors path="rut"/>
				</div>
				<div class="flex form">
					<form:label path="fechaNacimiento">Fecha De Nacimiento:</form:label>
					<form:input path="fechaNacimiento" type="date"/>
					<form:errors path="fechaNacimiento"/>
				</div>
				<div class="flex form">
					<form:label path="genero">Sexo:</form:label>
					<form:select path="genero">
                    	<form:option value="" label="Seleccione"/>
                    	<form:option value="Masculino" label="Masculino"/>
                    	<form:option value="Femenino" label="Femenino"/>
                    	<form:option value="Neutral" label="Prefiero no decirlo"/>
               		</form:select>
				</div>
				<div class="flex form">
					<form:label path="correo">Email:</form:label>
					<form:input path="correo" type="text"/>
					<form:errors path="correo"/>
				</div>
				<div class="flex form">
					<form:label path="contrasenia">Contraseña:</form:label>
					<form:input path="contrasenia" type="password"/>
					<form:errors path="contrasenia"/>
				</div>
				<div class="flex form">
					<form:label path="confirmarContrasenia">Confirme Contraseña:</form:label>
					<form:input path="confirmarContrasenia" type="password"/>
					<form:errors path="confirmarContrasenia"/>
				</div>
				<button>Registrar</button>
			</form:form>
			<form action="/login">
				<button>Volver al Login</button>
			</form>
			</div>
</body>
</html>