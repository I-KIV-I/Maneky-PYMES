<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
    <link rel="stylesheet" href="/css/Foro.css">
    <link rel="stylesheet" href="/css/bootstrap.css">
    <link rel="stylesheet" href="/css/workbench.css">
	<title>Foro!</title>
</head>
<body class="fondo-azul text-white">
	<!-- navbar -->
	<div class="topbar">
		<div class="toggle">
			<img src="/img/toggle.svg" alt="toggle">
		</div>
		<form action="/foro">
			<input class="backButton" type="submit" value="Volver Atrás">
		</form>
		<div class="user">
			<img src="/img/pfp5.jpg" alt="profile pic">
		</div>
	</div>	
	<!-- final navbar -->
	<!-- Contenido Principal -->
	<div class="main-hilo fondo-hilos rounded mt-2 p-4">
		<div class="d-flex align-items-center">
			<div class="d-flex align-items-center">
				<img class="rounded-circle m-3"  width="100px" src="/img/pfp4.jpg">
				<h1 class="me-5">${hilo.usuario.nombre}</h1>
			</div>
			<div>
			<h4>fecha creacion</h4>
			</div>
			
			
			
		</div>
			<h2 class="text-center">${hilo.titulo}</h2>
		<hr>
		<!--Contenido-->
		<div>
		    <h3>${hilo.contenido}</h3>
		    <form:form method="post" action="/foro/${hilo.id}" modelAttribute="formMensaje">
		        <form:label path="contenido">Comenta algo:</form:label>
		        <form:input type="text" path="contenido" placeholder="Escribe tu comentario aquí..." />
		        <button type="submit">Publicar</button>
		    </form:form>
		    <c:forEach var="mensaje" items="${listaMensajes}">
		        <div>
		            <p><strong>${mensaje.usuario.nombre} ${mensaje.usuario.apellido}</strong></p>
		            <p>${mensaje.contenido}</p>
		            <p><em>${mensaje.updatedAt}</em></p>
		        </div>
		    </c:forEach>
	    </div>
	    <!--Final Contenido-->
	</div>    
    <!-- FINAL Contenido Principal -->
    <script src="/js/workbench.js"></script>
	<script src="/js/bootstrap.bundle.js"></script>
</body>
</html>