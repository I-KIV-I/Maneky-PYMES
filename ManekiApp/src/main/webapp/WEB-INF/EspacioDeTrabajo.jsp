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
    <title>Espacio De Trabajo</title>
</head>

<body>
	<div id="particles-js"></div>
	<!-- navbar -->
	<nav class="navbar navbar-expand-lg navbbarback" data-bs-theme="dark">
    	<div class="container text-white ">
	    	<div>
				<a class="navbar-brand d-flex align-items-center mx-auto" href="/maneki_pyme/inicio">
					<img src="/img/logoManeki.png" alt="Logo" width="50" height="50" class="d-inline-block align-text-center iconmaneki"> 
				</a>
			</div>
			<form action="/procesar/logout"><button class="btn btn-outline-warning">Cerrar Sesion</button></form>
			<form action="/finanzas/opciones"><button class="btn btn-outline-warning">Ir a Finanzas</button></form>
			<form action="/foro"><button class="btn btn-outline-warning">Ir al Foro</button></form>
			<form action="/perfil"><button class="btn btn-outline-warning">Ir a tu Perfil/PYME</button></form>

			<img th:src="${user.profileImageUrl}" alt="">
			<h5>Bienvenido ${nombreUsuario}</h5>
			 <div class="btn-group" role="group">
			    <button type="button" class="btn btn-outline-info dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
			      Mi cuenta
			    </button>
			    <ul class="dropdown-menu">
			      <li><a class="dropdown-item" href="/perfil">Mi Perfil</a></li> <!-- Mi Perfil -->
			      <li><a class="dropdown-item" href="/pymes">Mis Pymes</a></li> <!-- Mis pymes -->
			    </ul>
			  </div>
		</div>
	</nav>
	<!-- fin navbar -->

	<div class="container mt-3">
		<div class="row justify-content-center ">
			<div class="col-4" >
	<!-- Carrusel -->    	
			            <div id="carouselExampleAutoplaying" class="carousel slide mt-2 card2" data-bs-ride="carousel">
			                <div class="carousel-inner c-noticias">
			                    <!-- Primera -->
			                    <div class="carousel-item active">
			                        <img src="/img/empezar.jpg" class="d-block w-100 imgcarrusel" alt="Finanzas">
			                        
			                        <div class="carousel-caption d-none d-md-block bg-dark bg-opacity-50">
			                            <h5 class="raleway">¿Por dónde empiezo?</h5>
			                            <p class="raleway">Registrate para poder recibir ayuda gratuita sobre cómo iniciar tu PYME
			                            </p>
			                        </div>
			                    </div>
			
			
			                    <!-- Segunda -->
			                    <div class="carousel-item">
			                        <img src="/img/foro.jpg" class="d-block w-100 imgcarrusel" alt="Foro">
			                        
			                        <div class="carousel-caption d-none d-md-block bg-dark bg-opacity-50">
			                            <h5 class="raleway px-2">¡Comparte y recibe ayuda!</h5>
			                            <p class="raleway px-2">Nuestro foro está dedicado para que todos los emprendedores</p>
			                        </div>
			                    </div>
			
			
			                    <!-- Tercera -->
			                    <div class="carousel-item">
			                        <img src="/img/finanzas.jpg" class="d-block w-100 imgcarrusel" alt="Empezar pyme">
			                        
			                        <div class="carousel-caption d-none d-md-block bg-dark bg-opacity-50">
			                            <h5 class="raleway px-4">Usa nuestras herramientas de contabilidad</h5>
			                            <p class="raleway px-4">Aprende a menajar tu negocio</p>
			                        </div>
			                    </div>
			
			
			
			                    <!-- Cuarta -->
			                    <div class="carousel-item">
			                        <img src="/img/ley.jpg" class="d-block w-100 imgcarrusel" alt="Eventos">
			                        
			                        <div class="carousel-caption d-none d-md-block bg-dark bg-opacity-50">
			                            <h5 class="raleway px-4">Recibe las noticias relacionadas a tu rubro</h5>
			                            <p class="raleway px-4">Echale un ojo a las nuevas normativas vigentes para tu negocio</p>
			                        </div>
			                    </div>
			
			                    <!-- Quinta -->
			                    <div class="carousel-item">
			                        <img src="/img/cursos.jpg" class="d-block w-100 imgcarrusel" alt="Proveedores">
			                        
			                        <div class="carousel-caption d-none d-md-block bg-dark bg-opacity-50">
			                            <h5 class="raleway px-4">¡Accede a cursos gratuitos!</h5>
			                            <p class="raleway px-4">Te ofrecemos una lista de cursos gratuitos</p>
			                        </div>
			                    </div>
			
			
			
			                    <!-- Sexta -->
			                    <div class="carousel-item">
			                        <img src="/img/feria.jpg" class="d-block w-100 imgcarrusel" alt="Proveedores">
			                        
			                        <div class="carousel-caption d-none d-md-block bg-dark bg-opacity-50">
			                            <h5 class="raleway px-4">Asiste a eventos para pequeños emprendedores</h5>
			                            <p class="raleway px-4">Accede a una lista de los eventos</p>
			                        </div>
			                    </div>
			
			
			
			                    <!-- Septima -->
			                    <div class="carousel-item">
			                        <img src="/img/proveedores.jpg" class="d-block w-100 imgcarrusel" alt="Cursos">
			                        
			                        <div class="carousel-caption d-none d-md-block bg-dark bg-opacity-50">
			                            <h5 class="raleway px-4">Obten una lista de proveedores de tu área</h5>
			                            <p class="raleway px-4">Te ofrecemos una lista de los mejores proveedores</p>
			                        </div>
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
	

			       	<div class="bg-black bg-opacity-50 rounded text-white mt-5 p-2">
			       		<div class="bg-black bg-opacity-25 rounded text-white m-2 p-2">
				       		<h4>Lista</h4>

			       	<div class="bg-black bg-opacity-50 rounded text-white mt-5 p-2 card2">
			       		<div class="bg-black bg-opacity-50 rounded text-white m-2 p-2">
				       		<h4>Titulo</h4>

				       		<hr>
				       		<p></p>
			       		</div>
			       		<div class="bg-black bg-opacity-50 rounded text-white m-2 p-2">
				       		<h4>Titulo</h4>
				       		<hr>
				       		<p>Mensaje desde el foro jskjsksjskj skjsksjksj ksjskjsksjksj ksjskjsksjksjskjsksjksj ...................</p>
			       		</div>
			       		<div class="bg-black bg-opacity-50 rounded text-white m-2 p-2">
				       		<h4>Titulo</h4>
				       		<hr>
