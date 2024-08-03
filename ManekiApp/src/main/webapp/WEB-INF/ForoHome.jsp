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
    <link rel="stylesheet" href="/css/bootstrap.css">
    <link rel="stylesheet" href="/css/home.css">
	<title>Foro!</title>
</head>
<body>
	<div id="particles-js"></div>
	<header>
		<!-- navbar -->
		<nav class="navbar navbar-expand-lg navbbarback" data-bs-theme="dark">
	    	<div class="container text-white ">
		    	<div>
					<a class="navbar-brand d-flex align-items-center mx-auto" href="/maneki_pyme/inicio">
						<img src="/img/logoManeki.png" alt="Logo" width="50" height="50" class="d-inline-block align-text-center iconmaneki"> 
					</a>
				</div>
	
				<form action="/procesar/logout"><button class="btn btn-outline-warning">Cerrar Sesion</button></form>
				<form action="/finanzas/opciones"><button class="btn btn-outline-warning">Finanzas</button></form>
				<form action="/foro"><button class="btn btn-outline-warning">Foro</button></form>
				<form action="/perfil"><button class="btn btn-outline-warning">Info Perfil/PYME</button></form>
				
				<img th:src="${user.profileImageUrl}" alt="">
				<h5>Bienvenido ${nombreUsuario}</h5>
				 <div class="btn-group" role="group">
				    <button type="button" class="btn btn-outline-info dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
				      Mi cuenta
				    </button>
				    <ul class="dropdown-menu">
				      <li><a class="dropdown-item" href="#">Dropdown link</a></li> <!-- Mi Perfil -->
				      <li><a class="dropdown-item" href="#">Dropdown link</a></li> <!-- Mis pymes -->
				    </ul>
				  </div>
			</div>
		</nav>
		<!-- fin navbar -->

	</header>
	<main>
		<div class="contenido-foro mt-5 ms-0 position-absolute start-50 translate-middle-x">
		<div class="" >
		<div class="card2 p-5 ">
			<div>
				<h1>FORO</h1>
			</div>
			<div>
				 <table>
				 		<tr>
				 			<th>
				 				<h2>Hilos Activos</h2>
				 			</th>
				 		</tr>
						<c:forEach var="hilo" items="${listaHilos }">
				 			<tr>
				 				<td><a href="/foro/${hilo.id }">${hilo.titulo}</a></td>			 	
				 			</tr>
				 		</c:forEach>
				 </table>
			</div>
			<h2>Crea tu Hilo aquí</h2>
			<form:form method="post"  action="/foro" modelAttribute="formHilo">
				<div>
				 	<form:label path="titulo">Agrega un titulo para tu Hilo</form:label>
				 	<form:input path="titulo" type="text" placeHolder="Escribe tu titulo aqui..."/>
				</div>
				<div>
				 	<form:label path="contenido">Agrega el contenido aquí:</form:label>
				 	<form:input type="textArea" path="contenido" placeHolder="Escribe tu comentario aqui..."/>
				</div>
					<button>Publicar</button>
			</form:form>
		</div>

	</main>
	<footer>
	
	</footer>
	<script src="/particles/particles.js"></script>
	<script src="/particles/data/app.js"></script>
	<script src="/js/bootstrap.bundle.js"></script>
</body>
</html>