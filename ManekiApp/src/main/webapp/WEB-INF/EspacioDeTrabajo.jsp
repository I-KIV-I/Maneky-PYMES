<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page isErrorPage="true" %> 
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="/css/Style.css">
    <link rel="stylesheet" href="/css/bootstrap.css">
    <link rel="stylesheet" href="/css/workbench.css">
    <title>Espacio De Trabajo</title>
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
			<h1 class="text-center">Bienvenido ${nombreUsuario }</h1>
		</div>
		<div class="user">
			<a href="/perfil"><img src="/img/pfp5.jpg" alt="profile pic"></a>
		</div>
	</div>	

		<div class="row justify-content-center">
			<div class="col-5 mx-2 " >
				<!-- Carrusel -->    	
			    <div id="carouselExampleAutoplaying" class="carousel slide mt-2 " data-bs-ride="carousel">
			    	<div class="carousel-inner c-noticias rounded">
			        	
			        	<div class="carousel-item active">
			            	<img src="/img/noticia1.jpg" class="d-block w-100 imgcarrusel" alt="Finanzas">
			            </div>
			            <div class="carousel-item">
			            	<img src="/img/noticia2.jpg" class="d-block w-100 imgcarrusel" alt="Finanzas">
			            </div>
			            <div class="carousel-item">
			            	<img src="/img/noticia3.jpg" class="d-block w-100 imgcarrusel" alt="Finanzas">
			            </div>
			            <div class="carousel-item">
			            	<img src="/img/noticia4.jpg" class="d-block w-100 imgcarrusel" alt="Finanzas">
			            </div>
			            <div class="carousel-item">
			            	<img src="/img/noticia5.jpg" class="d-block w-100 imgcarrusel" alt="Finanzas">
			            </div>
			            
			            <!--Botones Carrusel -->
			            <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleAutoplaying"
			            data-bs-slide="prev">
			            	<span class="carousel-control-prev-icon" aria-hidden="true"></span>
			                <span class="visually-hidden">Previous</span>
			            </button>
			           	<button class="carousel-control-next" type="button" data-bs-target="#carouselExampleAutoplaying"
			            data-bs-slide="next">
			                <span class="carousel-control-next-icon" aria-hidden="true"></span>
			                <span class="visually-hidden">Next</span>
			            </button>
			    	</div>
				</div>
				<!-- fin Carrusel -->
	
	<!-- Mensajes Foro -->
		<div class="recentChat pre-foro-size overflow-y-auto rounded">
			<div class="Header ">
				<h2 class="text-center">Últimas conversaciones</h2>
			</div>
			<table class="rounded">
					<tr>
						<td width="60px">
							<div class="imgBx">
								<img src="/img/pfp1.jpg">
							</div>
						</td>
						<td>
							<a class="link-a text-white " href="/foro/${hilo.id }">
							<h4><a href="/foro/${uno.id}"> ${uno.titulo}</a></h4>
							<p class="overflow-y-hidden pre-contenido-size">${uno.contenido}</p>
							</a>
						</td>
					</tr>
					<tr>
						<td width="60px">
							<div class="imgBx">
								<img src="/img/pfp2.jpg">
							</div>
						</td>
						<td>
							<hr>
							<a class="link-a text-white" href="/foro/${hilo.id }">
							<h4><a href="/foro/${dos.id}"> ${dos.titulo}</a></h4>
							<p class="overflow-y-hidden pre-contenido-size">${dos.contenido}</p>
							</a>
						</td>
					</tr>
					<tr>
						<td width="60px">
							<div class="imgBx">
								<img src="/img/pfp4.jpg">
							</div>
						</td>
						<td>
							<hr>
							<a class="link-a text-white" href="/foro/${hilo.id }">
							<h4><a href="/foro/${tres.id}"> ${tres.titulo}</a></h4>
							<p class="overflow-y-hidden pre-contenido-size">${tres.contenido}</p>
							</a>
						</td>
					</tr>
					<tr>
						<td width="60px">
							<div class="imgBx">
								<img src="/img/pfp6.jpg">
							</div>
						</td>
						<td>
							<hr>
							<a class="link-a text-white" href="/foro/${hilo.id }">
							<h4><a href="/foro/${cuatro.id}"> ${cuatro.titulo}</a></h4>
							<p class="overflow-y-hidden pre-contenido-size">${cuatro.contenido}</p>
							</a>
						</td>
					</tr>
				</table>
			</div>
	<!-- Final Mensajes Foro -->
	
	
		</div>
		<!-- Contenido Derecho -->
		<div class="col-5 text-center mx-2">
			<div class="card text-center my-2" style="width: 30rem; height: 24rem;">
				<img src="/img/forge.jpg" class="card-img-top" alt="foto forge" style="height: 55%;">
				<div class="card-body">
					<h5 class="card-title">¡Curso nuevo!</h5>
					<p class="card-text">Aprovecha esta oportunidad que ofrece la Fundación
					Forge para especializarte en programación</p>
					<a href="#" class="backButton">Ir a Forge</a>
				</div>
			</div>
					
			<div class="card text-center my-2 mt-5" style="width: 30rem; height: 24rem;">
				<img src="/img/santander.jpg" class="card-img-top" alt="foto santader" style="height: 55%;">
				<div class="card-body">
					<h5 class="card-title">Postulación a Fondos</h5>
					<p class="card-text">Banco Santander ofrece una inversion para pequeñas Pymes
					que hayan iniciado actividades hace menos de 5 meses</p>
					<a href="#" class="backButton">Ir a Santander</a>
				</div>
			</div>
			<!--FINAL Contenido Derecho -->	
		</div>
	</div>
		
		
	<!-- Footer -->
	<div class="footer-position mt-4">
		<ul class="nav justify-content-center bg-dark bg-opacity-50">
			<li class="nav-item">
    			<a class="nav-link active text-white" aria-current="page" href="#">Contáctanos</a>
  			</li>
  			<li class="nav-item">
    			<a class="nav-link text-white" href="#">Saber más</a>
  			</li>
  			<li class="nav-item">
    			<a class="nav-link text-white" aria-disabled="true">Donaciones</a>
  			</li>
		</ul>
	</div>	
</div>
 
 
 
<script src="/js/workbench.js"></script>
<script src="/js/bootstrap.bundle.js"></script>
</body>
</html>