<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page isErrorPage="true" %> 
<!DOCTYPE html>
<html>

<head>
	<link rel="stylesheet" href="/css/bootstrap.css">
	<link rel="stylesheet" href="/css/perfil.css">
    <meta charset="UTF-8">
    <title>Perfil</title>
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


<div class="main">
	<div class="topbar">
		<div class="toggle">
			<img src="/img/toggle.svg" alt="toggle">
		</div>
		<div class="search">
			<h1>Revisa tu Perfil</h1>
		</div>
		<div></div>
	</div>
	
	<div class="graphBox">
		<div class="box">
			<img src="/img/pfp5.jpg" alt="profile picture">
                <h2>${usuario.nombre} ${usuario.apellido}</h2>  
                <h3>RUT: ${usuario.rut}</h3>
                <h3>Correo: ${usuario.correo}</h3>
                <form action="/procesar/edicion" method="get">
        			<button class="backButton" type="submit">Edita tu perfil</button>
         		</form>
		</div>	
        <div class="graphBox">
        	<div class="box">
            	<h2>Tus Pymes</h2>
            		<c:forEach var="pyme" items="${listaPymes}">
	        			<h3><a href="/finanzas/${pyme.id}">${pyme.nombre}</a></h3>
							<p>Rol: ${pyme.rol }</p>				
							<p>Rut Creador: ${pyme.rutCreador }</p>
							<p>Ubicación:${pyme.ubicacion }</p>
					</c:forEach>
					<form action="/inscripcion/pyme">
						<input class="backButton" type="submit" value="Agregar Nueva Pyme">
					</form>
			</div>
    	</div>
	</div>
</div>    
<script src="/js/workbench.js"></script>
</body>
</html>