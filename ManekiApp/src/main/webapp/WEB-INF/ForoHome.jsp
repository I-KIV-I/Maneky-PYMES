<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page isErrorPage="true" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<head>
	<meta charset="UTF-8">
    <link rel="stylesheet" href="/css/Foro.css">
    <link rel="stylesheet" href="/css/bootstrap.css">
    <link rel="stylesheet" href="/css/workbench.css">
	<title>Foro!</title>
</head>
<body>
<div class="barContainer">
	<div class="navigation">
		<ul class="mainUl">
			<li class= "first">
				<a href="/herramientas" class="seleccion">
					<span class="icon"><img src="/img/LogoManeki.png" alt="logo" class="logo"></span>
					<span class="title"><strong>Maneki Pymes</strong></span>
				</a>
			</li>
			<li>
				<a href="/herramientas" class="seleccion">
					<span class="icon"><img src="/img/interface.svg" alt="icono"></span>
					<span class="title">DashBoard</span>
				</a>
			</li>
			<li>
				<a href="/perfil" class="seleccion">
					<span class="icon"><img src="/img/profile.svg" alt="icono profile"></span>
					<span class="title">Perfil</span>
				</a>
			</li>
			<li>
				<div class="seleccion finanzas">
					<div>
						<div class="titleBox">
							<span class="icon"><img src="/img/finances.svg" alt="icono" style="height:75px;"></span>
							<span class="title"  style="height:75px;">Finanzas</span>
						</div>
					<div class= "pymeBox">
						<ul class= "secondUl">
						<c:forEach var="pyme" items="${listaPyme }">
							<li><a href="/finanzas/${pyme.id }" class="pyme">${pyme.nombre }</a></li>
			   			</c:forEach>
			   			</ul>
		   			</div>
		   			</div>
		   		</div>
			</li>
			<li>
				<a href="/noticias" class="seleccion">
					<span class="icon"><img src="/img/news.svg" alt="icono"></span>
					<span class="title">Noticias</span>
				</a>
			</li>
			<li>
				<a href="/foro" class="seleccion">
					<span class="icon"><img src="/img/people.svg" alt="icono"></span>
					<span class="title">Foro</span>
				</a>
			</li>
			<li>
				<a href="/procesar/logout" class="seleccion">
					<span class="icon"><img src="/img/logout.svg" alt="icono"></span>
					<span class="title">Cerrar Sesión</span>
				</a>
			</li>
		</ul>
	</div>
</div>

<div class="main-foro px-4">
	<!-- navbar -->
	<div class="topbar">
		<div class="toggle">
			<img src="/img/toggle.svg" alt="toggle">
		</div>
		<div class="search">
			<h1 class="text-white text-center">Foro</h1>
		</div>
		<div class="user">
			<img src="/img/pfp5.jpg" alt="profile pic">
		</div>
	</div>	
	<!-- final navbar -->

	
	<!-- Contenido Principal -->
	<!-- Publicacion Principal -->
<div class="fondo-hilos p-2 bg-opacity-50 rounded text-white">
	<div>
		<h2 class="text-center mb-2">Hilos Activos</h2>
	</div>
	<div class="overflow-y-auto publicaciones-size ">
		<c:forEach var="hilo" items="${listaHilos }">
			<div class="bg-dark bg-gradient my-2 p-2 bg-opacity-50 rounded me-2">
				<a class="link-a text-white" href="/foro/${hilo.id }">
					<div class="d-flex justify-content-between">
						<div class="d-flex">
							<img class="user" src="/img/pfp5.jpg" alt="profile pic">
							<h3 class="ms-3">${hilo.usuario.nombre}</h3>
						</div>
						<br>
						<div>
							<h2>${hilo.titulo}</h2>	 	
						</div>
						<div>
							<h5 class="fw-lighter"><em><fmt:formatDate value="${hilo.fechaActualizacion}" pattern="yyyy-MM-dd"/> / <fmt:formatDate value="${hilo.fechaActualizacion}" pattern="HH:mm"/></em></h5>
						</div>
					</div>
				<hr>
				<div class="overflow-y-auto contenido-size">
					<h4>${hilo.contenido}</h4>	 	
				</div>
			</div>
				</a>
		</c:forEach>
	</div>
	
</div>
	<!-- FINAL Publicacion Principal -->
	<!-- Nueva Publicacion -->
	<div class="fondo-crear-hilos p-2 my-2 mt-3 bg-opacity-50 rounded text-white ">
		<h2 class="ms-5">Crea tu Hilo aquí</h2>
		<hr>
		<form:form method="post"  action="/foro" modelAttribute="formHilo">
			<div>
				<div class="d-flex justify-content-between ">
					<form:label class="form-label" path="titulo">Agrega un titulo para tu Hilo</form:label>
					<button class="btn btn-success">Publicar</button>
				</div>
				<div class="input-size">
				<form:input class="form-control" path="titulo" type="text" placeHolder="Escribe tu titulo aqui..."/>
				</div>
			</div>
			<div class="mt-4">
				<form:label class="form-label" path="contenido">Agrega el contenido aquí:</form:label>
				<form:textarea class="form-control overflow-y-scroll" type="textArea" path="contenido" placeHolder="Escribe tu comentario aqui..."/>
			</div>
				
		</form:form>
	</div>
	<!-- FINAL Nueva Publicacion -->

</div>
	<!-- Final Contenido Principal -->
    <!-- Footer -->
<div class="footer-position">
	<ul class="nav justify-content-center bg-dark bg-opacity-50">
		<li class="nav-item">
    		<a class="nav-link active text-white" aria-current="page" href="#">Háblanos</a>
  		</li>
  		<li class="nav-item">
    		<a class="nav-link text-white" href="#">Acerca de</a>
  		</li>
  		<li class="nav-item">
    		<a class="nav-link disabled" aria-disabled="true">Donaciones</a>
  		</li>
	</ul>
</div>		
	<!-- FINAL Footer -->
<script src="/js/workbench.js"></script>
<script src="/js/bootstrap.bundle.js"></script>
<!--  
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
-->	
</body>
</html>