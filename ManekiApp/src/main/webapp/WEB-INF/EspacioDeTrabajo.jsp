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
	<nav class="navbar navbar-expand-lg bg-body-tertiary" data-bs-theme="dark">
    	<div class="container text-white ">
	    	<div>
				<a class="navbar-brand d-flex align-items-center mx-auto" href="/maneki_pyme/inicio">
					<img src="/img/logo2.jpeg" alt="Logo" width="60" height="50" class="d-inline-block align-text-center iconmaneki">
				</a>
			</div>

			<form action="/procesar/logout"><button class="btn btn-outline-warning">Cerrar Sesion</button></form>
			<form action="/finanzas/${idUsuario}"><button class="btn btn-outline-warning">Finanzas</button></form>
			<form action="/foro"><button class="btn btn-outline-warning">Foro</button></form>
			<form action="/perfil"><button class="btn btn-outline-warning">Info Perfil/PYME</button></form>
			
			<img th:src="${user.profileImageUrl}" alt="">
			<h5>Bienvenido ${nombreUsuario}</h5>
			 <div class="btn-group" role="group">
			    <button type="button" class="btn btn-outline-info dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
			      Mi cuenta
			    </button>
			    <ul class="dropdown-menu">
			      <li><a class="dropdown-item" href="#">Dropdown link</a></li>
			      <li><a class="dropdown-item" href="#">Dropdown link</a></li>
			    </ul>
			  </div>
		</div>
	</nav>
	<!-- fin navbar -->
	
	<!-- Carrusel -->
	
		<div class="container mt-5 ">
			<div class="row justify-content-center ">
				<div class="col-3 position-absolute " >
			    
			        	
			            <div id="carouselExampleAutoplaying" class="carousel slide" data-bs-ride="carousel">
			                <div class="carousel-inner">
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
			                            <p class="raleway px-2">Nuestro foro está dedicado para que todos los emprendedores
			                                compartan entre si y
			                                tengan mejor acceso a ayudas financieras y asesorías de sus propios rubros</p>
			                        </div>
			                    </div>
			
			
			                    <!-- Tercera -->
			                    <div class="carousel-item">
			                        <img src="/img/finanzas.jpg" class="d-block w-100 imgcarrusel" alt="Empezar pyme">
			                        
			                        <div class="carousel-caption d-none d-md-block bg-dark bg-opacity-50">
			                            <h5 class="raleway px-4">Usa nuestras herramientas de contabilidad</h5>
			                            <p class="raleway px-4">Aprende a menajar tu negocio, conocer tus números y recibe
			                                consejos sobre cómo llevar tu negocio</p>
			                        </div>
			                    </div>
			
			
			
			                    <!-- Cuarta -->
			                    <div class="carousel-item">
			                        <img src="/img/ley.jpg" class="d-block w-100 imgcarrusel" alt="Eventos">
			                        
			                        <div class="carousel-caption d-none d-md-block bg-dark bg-opacity-50">
			                            <h5 class="raleway px-4">Recibe las noticias relacionadas a tu rubro</h5>
			                            <p class="raleway px-4">Echale un ojo a las nuevas normativas vigentes para tu negocio y
			                                mantente siempre actualizado y en vanguardia</p>
			                        </div>
			                    </div>
			
			                    <!-- Quinta -->
			                    <div class="carousel-item">
			                        <img src="/img/cursos.jpg" class="d-block w-100 imgcarrusel" alt="Proveedores">
			                        
			                        <div class="carousel-caption d-none d-md-block bg-dark bg-opacity-50">
			                            <h5 class="raleway px-4">¡Accede a cursos gratuitos!</h5>
			                            <p class="raleway px-4">Te ofrecemos una lista de cursos gratuitos que puedes tomar para que
			                                aprendas
			                                más sobre tu negocio y te especialices en el</p>
			                        </div>
			                    </div>
			
			
			
			                    <!-- Sexta -->
			                    <div class="carousel-item">
			                        <img src="/img/feria.jpg" class="d-block w-100 imgcarrusel" alt="Proveedores">
			                        
			                        <div class="carousel-caption d-none d-md-block bg-dark bg-opacity-50">
			                            <h5 class="raleway px-4">Asiste a eventos para pequeños emprendedores</h5>
			                            <p class="raleway px-4">Accede a una lista de los eventos que están ocrruiendo en el país
			                                que
			                                puedan potenciar tu negocio</p>
			                        </div>
			                    </div>
			
			
			
			                    <!-- Septima -->
			                    <div class="carousel-item">
			                        <img src="/img/proveedores.jpg" class="d-block w-100 imgcarrusel" alt="Cursos">
			                        
			                        <div class="carousel-caption d-none d-md-block bg-dark bg-opacity-50">
			                            <h5 class="raleway px-4">Obten una lista de proveedores de tu área</h5>
			                            <p class="raleway px-4">Te ofrecemos una lista de los mejores proveedores que trabajan con
			                                tu rubro,
			                                para que se te sea más fácil competir con tus productos en el mercado</p>
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
			       
				</div>
			</div>
		</div>
		
	<script src="/particles/particles.js"></script>
	<script src="/particles/data/app.js"></script>
	<script src="/js/bootstrap.bundle.js"></script>
</body>


</html>