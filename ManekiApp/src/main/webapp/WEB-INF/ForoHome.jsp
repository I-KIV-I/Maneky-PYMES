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
<body>
	<div class="barContainer">
	<div class="navigation">
		<ul>
			<li>
				<a href="/herramientas">
					<span class="icon"><img src="/img/LogoManeki.png" alt="logo" class="logo"></span>
					<span class="title"><strong>Maneki Pymes</strong></span>
				</a>
			</li>
			<li>
				<a href="/herramientas">
					<span class="icon"><img src="/img/interface.svg" alt="icono"></span>
					<span class="title">DashBoard</span>
				</a>
			</li>
			<li>
				<a href="/perfil">
					<span class="icon"><img src="/img/profile.svg" alt="icono profile"></span>
					<span class="title">Perfil</span>
				</a>
			</li>
			<li>
				<a href="*">
					<span class="icon"><img src="/img/finances.svg" alt="icono"></span>
					<span class="title">Finanzas</span>
					
				</a>
			</li>
			<li>
				<a href="/noticias">
					<span class="icon"><img src="/img/news.svg" alt="icono"></span>
					<span class="title">Noticias</span>
				</a>
			</li>
			<li>
				<a href="/foro">
					<span class="icon"><img src="/img/people.svg" alt="icono"></span>
					<span class="title">Foro</span>
				</a>
			</li>
			<li>
				<a href="/procesar/logout">
					<span class="icon"><img src="/img/logout.svg" alt="icono"></span>
					<span class="title">Cerrar Sesión</span>
				</a>
			</li>
		</ul>
	</div>
</div>

<div class="main">
	<div class="topbar">
		<div class="toggle">
			<img src="/img/toggle.svg" alt="toggle">
		</div>
		<div class="search">
			<h1>Foro</h1>
		</div>
		<div class="user">
			<img src="/img/pfp5.jpg" alt="profile pic">
		</div>
	</div>	
	<!-- final navbar -->
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