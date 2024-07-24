<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page isErrorPage="true" %>
<link rel="stylesheet" href="/css/Style.css">
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<<<<<<< HEAD
<title>Login</title>
=======
<title>Logon</title>
>>>>>>> 16a067ff044d41273eb8337aff1437451a72a9fa
</head>
<body>
	<div class="contenedor">
		<header class="encabezado">
			<h1 class="titulo central">Maneki Pymes</h1>
		</header>
		<main class="flex form">
			<div>
				<h2>Login</h2>
				<form:form action="/procesar/login" method="post" modelAttribute="formLogin">  
					<div class="flex form">
						<form:label path="correoUsuario">Correo:</form:label>
						<form:input path="correoUsuario" type="text"/>
						<form:errors path="correoUsuario"/>
					</div>
					<div class="flex form">
						<form:label path="contraseniaUsuario" name="contraseniaUsuario">Contrase�a:</form:label>
						<form:input path="contraseniaUsuario" type="password" name="contraseniaUsuario"/>
						<form:errors path="contraseniaUsuario"/>
					</div>
					
					<button>Ingresar</button>
				</form:form>
			</div>
				<form action="/registro">
					<button>�Aun no tienes una cuenta? Registrate aqu�</button> 
				</form>
		</main>
	</div>
</body>
</html>