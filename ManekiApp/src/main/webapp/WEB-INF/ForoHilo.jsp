<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page isErrorPage="true" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
    <link rel="stylesheet" href="/css/Foro.css">
    <link rel="stylesheet" href="/css/bootstrap.css">
    
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
				<img class="rounded-circle me-3"  width="100px" src="/img/pfp4.jpg">
				<h1 class="me-5">${hilo.usuario.nombre}</h1>
			</div>
			<div>
			<h4>fecha creacion</h4>
			</div>
			
			
			
		</div>
		<hr>
			<h2 class="text-center">${hilo.titulo}</h2>
		<hr>	
		<div class="tamaño-contenido-publicacion bg-black bg-opacity-25 rounded p-4 text-white mb-3">
		    <p>${hilo.contenido}</p>
		</div>
		<hr>
		<!--Contenido-->
		<div>

		    <h4 class="text-center">Comentarios</h4>
		    <div class="tamaño-contenido-mensaje bg-black bg-opacity-25 rounded p-4 text-white overflow-y-auto">
		    	<c:forEach var="mensaje" items="${listaMensajes}">
		        <div class="bg-black bg-opacity-25 rounded p-2 my-3">
		        	<div class="d-flex justify-content-between ">
		        		<div class="d-flex">
				        	<img class="rounded-circle me-3" width="30px" height="30px" src="/img/pfp6.jpg">
				            <p><strong>${mensaje.usuario.nombre} ${mensaje.usuario.apellido}</strong></p>
			            </div>
			            <div>
			            	<p class="fw-lighter">${mensaje.updatedAt}</p>
			             </div>
		            </div>
		            <hr>
		            
		            <p class=""><em>${mensaje.contenido}</em></p>
		            
		        </div>
		    </c:forEach>
		    </div>
		    <hr>
		    <form:form method="post" action="/foro/${hilo.id}" modelAttribute="formMensaje">
		    	<div class="d-flex">
		    	<div class="me-3">
			    	<div>
			        	<form:label path="contenido"><h4>Comenta algo </h4></form:label>
			        </div>
			        <div class="d-flex justify-content-center mt-3 overflow-y-auto">
			        	<button class="btn btn-success" type="submit">Publicar</button>
			        </div>
		        </div>
		        <div>
		        	<form:textarea class="comentario-size" type="text" path="contenido" placeholder="Escribe tu comentario aquí..." />
		        </div>
		        </div>
		    </form:form>
	    </div>
	    <!--Final Contenido-->
	</div>    
    <!-- FINAL Contenido Principal -->

    <script src="/js/workbench.js"></script>
	<script src="/js/bootstrap.bundle.js"></script>
</body>
</html>